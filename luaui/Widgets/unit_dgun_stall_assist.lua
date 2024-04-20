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
local spGetUnitResources = Spring.GetUnitResources
local CMD_WAIT = CMD.WAIT


local targetEnergy = 1000
local unwaitThreshold = 2 -- how long to wait after dgun before unwaiting, in seconds
local gameStarted = false
local dgunActive = false
local waitableUnits = {}
local waitingUnits = {}
local lastDgunTime = 0
local timer = 0


for uDefID, uDef in pairs(UnitDefs) do
	if (uDef.buildSpeed > 0) and (uDef.canAssist or uDef.canResurrect or uDef.isFactory) and (not uDef.canManualFire) then
		waitableUnits[uDefID] = true
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
	return currentEnergy < targetEnergy
end


local function waitUnits()
	waitingUnits = getEnergyConsumingBuilders()
	local toWait = {}
	for i = 1, #waitingUnits do
		local uCmd = spGetUnitCurrentCommand(waitingUnits[i], 1)
		if uCmd ~= CMD_WAIT then
			toWait[#toWait + 1] = waitingUnits[i]
		end
	end
	Spring.GiveOrderToUnitArray(waitingUnits, CMD_WAIT, {}, 0)
end


local function unwaitUnits()
	local toUnwait = {}
	for i = 1, #waitingUnits do
		local uCmd = spGetUnitCurrentCommand(waitingUnits[i], 1)
		Spring.Echo("ucmd", uCmd)
		if not uCmd or uCmd == CMD_WAIT then
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
