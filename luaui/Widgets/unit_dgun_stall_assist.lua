function widget:GetInfo()
	return {
		name = "DGun Stall Assist v2",
		desc = "Waits cons/facs when trying to dgun and stalling",
		author = "zombean",
		date = "2 April 2024",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true
	}
end


local spGetUnitCurrentCommand = Spring.GetUnitCurrentCommand
local spGetFactoryCommands = Spring.GetFactoryCommands
local spGetUnitResources = Spring.GetUnitResources
local spGetUnitDefID = Spring.GetUnitDefID
local CMD_WAIT = CMD.WAIT


local targetEnergy = 1000
local dgunCost = 500
local unwaitThreshold = 3 -- how long to wait after dgun before unwaiting, in seconds
local gameStarted = false
local dgunActive = false

local waitingUnits = {}
local lastDgunTime = 0
local timer = 0

local waitableUnits = {}
local isFactory = {}
for uDefID, uDef in pairs(UnitDefs) do
	if (uDef.buildSpeed > 0) and (uDef.canAssist or uDef.canResurrect or uDef.isFactory) and (not uDef.canManualFire) then
		waitableUnits[uDefID] = true
	end
	if uDef.isFactory then
		isFactory[uDefID] = true
	end
end


local function getEnergyConsumingBuilders()
	local needsWait = {}
	local myUnits = Spring.GetTeamUnitsSorted(Spring.GetMyTeamID())
	for unitDefID, units in pairs(myUnits) do
		if waitableUnits[unitDefID] then
			for i, unit in pairs(units) do
				local metalMake, metalUse, energyMake, energyUse = spGetUnitResources(unit)
				if energyUse > 0 then
					needsWait[#needsWait + 1] = unit
				end
			end
		end
	end
	return needsWait
end


local function doWeHaveLowEnergy()
	local currentEnergy, energyStorage = Spring.GetTeamResources(Spring.GetMyTeamID(), "energy")
	if energyStorage < dgunCost then return false end
	if currentEnergy < targetEnergy then return true end
	return false
end


local function isWaiting(unitID)
	local unitDefID = spGetUnitDefID(unitID)

	local cmd
	if isFactory[unitDefID] then -- factories need their own handling, fun!
		local facCmds = spGetFactoryCommands(unitID, 1)
		if facCmds and #facCmds > 0 then
			cmd = facCmds[1].id
		end
	else
		cmd = spGetUnitCurrentCommand(unitID, 1)
	end

	return cmd and cmd == CMD_WAIT
end


local function waitUnits()
	waitingUnits = getEnergyConsumingBuilders()
	local toWait = {}
	for i = 1, #waitingUnits do
		if not isWaiting(waitingUnits[i]) then
			toWait[#toWait + 1] = waitingUnits[i]
		end
	end
	Spring.GiveOrderToUnitArray(waitingUnits, CMD_WAIT, {}, 0)
end


local function unwaitUnits()
	local toUnwait = {}
	for i = 1, #waitingUnits do
		if isWaiting(waitingUnits[i]) then
			toUnwait[#toUnwait + 1] = waitingUnits[i]
		end
	end
	Spring.GiveOrderToUnitArray(toUnwait, CMD_WAIT, {}, 0)
	waitingUnits = {}
	lastDgunTime = 0
end


function widget:Update()
	timer = timer + Spring.GetLastUpdateSeconds()
	local lowEnergy = doWeHaveLowEnergy()
	local _, activeCmdID = Spring.GetActiveCommand()
	dgunActive = activeCmdID == CMD.DGUN
	if dgunActive then
		lastDgunTime = timer
	end

	if dgunActive and lowEnergy and #waitingUnits == 0 then
		waitUnits()
		return
	end

	if
		not dgunActive and
		#waitingUnits > 0 and
		lastDgunTime > 0 and
		lastDgunTime < timer - unwaitThreshold
	then
		unwaitUnits()
	end
end


--------------------------------------------

local function maybeRemoveSelf()
	if Spring.GetSpectatingState() and (Spring.GetGameFrame() > 0 or gameStarted) or Spring.IsReplay() then
		widgetHandler:RemoveWidget()
	end
end

function widget:GameStart()
	gameStarted = true
	maybeRemoveSelf()
end

function widget:PlayerChanged(playerID)
	maybeRemoveSelf()
end

function widget:Initialize()
	maybeRemoveSelf()
end
