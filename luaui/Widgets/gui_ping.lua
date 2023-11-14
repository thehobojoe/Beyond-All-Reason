function widget:GetInfo()
	return {
		name    = "Ping Wheel",
		desc    = "new ping behavior",
		author  = "Hobo Joe",
		date    = "Nov 2023",
		license = "GNU GPL, v2 or later",
		version = "0.1",
		layer   = 999,
		enabled = true,
		handler = true,
	}
end

-- Speedups
local spGetMouseState = Spring.GetMouseState
local spTraceScreenRay = Spring.TraceScreenRay
local lastPos

local lastPingTimestamp = 0

local pingKeyDown = false
local eraseKeyDown = false

local pingWorldLocation
local pingWheelScreenLocation

function pingButtonPress(_, _, _, args)
	if args[1] then
		pingKeyDown = true
		--Spring.Echo("keyDown: " .. tostring(keyDown))
	else
		pingKeyDown = false
		--Spring.Echo("keyDown: " .. tostring(keyDown))
	end
end

function eraseButtonpress(_,_,_, args)
	if args[1] then
		eraseKeyDown = true
	else
		eraseKeyDown = false
	end
end

function widget:Initialize()
	-- add the action handler with argument for press and release using the same function call
	widgetHandler.actionHandler:AddAction(self, "ping", pingButtonPress, { true }, "pR")
	widgetHandler.actionHandler:AddAction(self, "ping", pingButtonPress, { false }, "r")
	widgetHandler.actionHandler:AddAction(self, "erase", eraseButtonpress, { true }, "p")
	widgetHandler.actionHandler:AddAction(self, "erase", eraseButtonpress, { false }, "r")
end

local function getCursorWorldPosition()
	local mx, my = spGetMouseState()
	local _, pos = spTraceScreenRay(mx, my, true)
	return pos
end

-- Store the ping location in pingWorldLocation
local function setPingLocation()
	local pos = getCursorWorldPosition()
	if pos then
		pingWorldLocation = { pos[1], pos[2], pos[3] }
		pingWheelScreenLocation = { x = mx, y = my }
	end
end

function widget:MouseRelease(x, y, button)
	Spring.Echo("mouse release " .. tostring(button))
	if(pingKeyDown and button == 1) then
		Spring.Echo("pinging")
		Spring.MarkerAddPoint(pingWorldLocation[1], pingWorldLocation[2], pingWorldLocation[3], "")
		return true
	end
	return false
end


function widget:MousePress(x, y, button)
	Spring.Echo("mouse press " .. tostring(button))
	if(pingKeyDown and button == 1) then
		Spring.Echo("setting ping location")
		setPingLocation()
		return true
	end
	if(pingKeyDown and button == 3) then
		local pos = getCursorWorldPosition()
		lastPos = pos
		return true
	end
	return false
end

function distanceBetween(x1, y1, z1, x2, y2, z2)
	local dx = x1 - x2
	local dy = y1 - y2
	local dz = z1 - z2
	local sq = dx * dx + dy * dy + dz * dz
	return math.sqrt(sq)
end

local sec = 0
function widget:Update(dt)
	sec = sec + dt
	if sec < 0.05 then
		return
	end
	sec = 0


	local x, y, lmb, mmb, rmb = spGetMouseState()

	-- Erase
	if(eraseKeyDown and rmb) then
		local pos = getCursorWorldPosition()
		if (pos) then
			Spring.MarkerErasePosition(pos[1], pos[2], pos[3])
		end
		return
	end

	-- Draw
	if(pingKeyDown and rmb) then
		local pos = getCursorWorldPosition()
		if(pos) then
			local id = Spring.GetMyPlayerID()
			local dist = distanceBetween(lastPos[1], lastPos[2], lastPos[3], pos[1], pos[2], pos[3])
			Spring.MarkerAddLine(lastPos[1], lastPos[2], lastPos[3], pos[1], pos[2], pos[3], false, id)
			lastPos = pos

			Spring.Echo("Distance is " .. tostring(dist))
		end
	end
end




