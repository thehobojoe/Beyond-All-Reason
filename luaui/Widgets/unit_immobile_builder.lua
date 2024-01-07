--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  brief:   sets immobile builders to MANEUVERING, and gives them a FIGHT order
--  author:  Dave Rodgers
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
	name		= "ImmobileBuilder",
	desc		= "Sets immobile builders to MANEUVER, with a FIGHT command",
	author		= "trepan",
	date		= "Jan 8, 2007",
	license		= "GNU GPL, v2 or later",
	layer		= 0,
	enabled		= true  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local CMD_MOVE_STATE		= CMD.MOVE_STATE
local CMD_FIGHT				= CMD.FIGHT
local spGetMyTeamID			= Spring.GetMyTeamID
local spGetTeamUnits		= Spring.GetTeamUnits
local spGetUnitDefID		= Spring.GetUnitDefID
local spGetUnitPosition		= Spring.GetUnitPosition
local spGiveOrderToUnit		= Spring.GiveOrderToUnit
local spGetSpectatingState	= Spring.GetSpectatingState
local spGetUnitCurrentCommand = Spring.GetUnitCurrentCommand

local hmsx = Game.mapSizeX/2
local hmsz = Game.mapSizeZ/2

local myTeamID = spGetMyTeamID()

local gameStarted

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- set immobile builders (nanotowers?) to the MANEUVER movestate,
-- and give them a FIGHT order, too close to the unit will drop the order so we add 50 distance

local isImmobileBuilder = {}
local buildRange = {}
local isFactory = {}
for unitDefID, unitDef in pairs(UnitDefs) do
	if unitDef.isBuilder and not unitDef.canMove and not unitDef.isFactory then
		isImmobileBuilder[unitDefID] = true
		buildRange[unitDefID] = unitDef.buildDistance
	end
	if unitDef.isFactory then
		isFactory[unitDefID] = true
	end
end

local function distance2dSquared(x1, y1, x2, y2)
	local dx = x1 - x2
	local dy = y1 - y2
	return dx * dx + dy * dy
end


local function SetupUnit(unitID)
	local x, y, z = spGetUnitPosition(unitID)
	if x and y and z then
	    if (x > hmsx) then -- avoid to issue commands outside map
	      x = x - 50
	    else
	      x = x + 50
	    end
	    if (z > hmsz) then
	      z = z - 50
	    else
	      z = z + 50
	    end
		-- meta enables reclaim enemy units, alt autoresurrect ( if available )
		spGiveOrderToUnit(unitID, CMD_FIGHT, { x, y, z }, {"meta"})
	end
end

function maybeRemoveSelf()
    if Spring.GetSpectatingState() and (Spring.GetGameFrame() > 0 or gameStarted) then
        widgetHandler:RemoveWidget()
    end
end

function widget:GameStart()
    gameStarted = true
    maybeRemoveSelf()
end

function widget:PlayerChanged(playerID)
    maybeRemoveSelf()
	myTeamID = spGetMyTeamID()
end

function widget:Initialize()
    if Spring.IsReplay() or Spring.GetGameFrame() > 0 then
        maybeRemoveSelf()
    end
	for _,unitID in ipairs(spGetTeamUnits(spGetMyTeamID())) do
		local unitDefID = spGetUnitDefID(unitID)
		if isImmobileBuilder[unitDefID] then
			spGiveOrderToUnit(unitID, CMD_MOVE_STATE, { 1 }, 0)
			SetupUnit(unitID)
		end
	end
end


function widget:UnitCreated(unitID, unitDefID, unitTeam)
	if unitTeam ~= spGetMyTeamID() then
		return
	end
	if isImmobileBuilder[unitDefID] then
		spGiveOrderToUnit(unitID, CMD_MOVE_STATE, { 1 }, 0)
		SetupUnit(unitID)
	end
end


function widget:UnitGiven(unitID, unitDefID, unitTeam)
	widget:UnitCreated(unitID, unitDefID, unitTeam)
end



function widget:UnitIdle(unitID, unitDefID, unitTeam)
	if unitTeam ~= myTeamID then
		return
	end
	if isImmobileBuilder[unitDefID] then
		SetupUnit(unitID)
	end
end

function widget:UnitCommand(unitID, unitDefID, _, cmdID, _, cmdOpts)
	if isImmobileBuilder[unitDefID] and cmdOpts.shift and cmdID ~= CMD_FIGHT then
		local firstCmdID, _, cmdTag = spGetUnitCurrentCommand(unitID, 1)
		if firstCmdID == CMD_FIGHT then
			spGiveOrderToUnit(unitID, CMD.REMOVE, { cmdTag }, 0)
		end
	end
end

function widget:CommandNotify(id, params, options)
	if id == CMD_FIGHT then
		return
	end
	local targetPos = {}
	-- if there's only 1 param, target is a unit. If there are 3 params, target is a position
	if #params == 1 then
		local uid = params[1]
		local defId = spGetUnitDefID(params[1])
		if(isFactory[defId] and UnitDefs[defId]) then
			local heading = Spring.GetUnitHeading(uid)
			local vecX, vecZ = Spring.GetVectorFromHeading(heading)
			local _, boOffset, _, _ = Spring.GetFactoryBuggerOff(uid)
			local facX, facY, facZ = spGetUnitPosition(uid)
			targetPos.x  = facX + (vecX * boOffset)
			targetPos.z = facZ + (vecZ * boOffset)
		else
			targetPos.x, _, targetPos.z = spGetUnitPosition(uid)
		end
	else
		targetPos.x = params[1]
		targetPos.z = params[3]
	end
	local units = Spring.GetSelectedUnits()
	local otherUnits = {}
	for i = 1, #units do
		local unitDefID = spGetUnitDefID(units[i])
		if isImmobileBuilder[unitDefID] then
			local buildDist = buildRange[unitDefID]
			local x, _, z = spGetUnitPosition(units[i])
			local dist = distance2dSquared(targetPos.x, targetPos.z, x, z)
			if dist > buildDist * buildDist then
				-- can't reach, do nothing
				Spring.PlaySoundFile("cmd-stop", 0.5)
			else
				-- give order directly to nano
				spGiveOrderToUnit(units[i], id, params, options)
			end
		else
			otherUnits[#otherUnits + 1] = units[i]
		end
	end
	-- Since we can't disallow commands per-unit in CommandNotify, we build an array of all the non-nano units and forward the commands here
	Spring.GiveOrderToUnitArray(otherUnits, id, params, options)
	return true
end
