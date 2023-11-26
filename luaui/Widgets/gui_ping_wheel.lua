function widget:GetInfo()
    return {
        name    = "Ping Wheel",
        desc    =
        "Displays a ping wheel when a keybind is held down. Default keybind is 'alt-f', rebindable. Left click (or mouse 4) to bring up commands wheel, right click (or mouse 5) for messages wheel. \nNow with two wheel styles! (edit file param to change style)",
        author  = "Errrrrrr",
        date    = "June 27, 2023",
        license = "GNU GPL, v2 or later",
        version = "2.5",
        layer   = 999,
        enabled = true,
        handler = true,
    }
end

-- the options in the ping wheel, displayed clockwise from 12 o'clock
-- 8 entries is the sweet spot, covers the cardinal directions and diagonals
local pingCommands = {
	{ name = "[Message]" },
	{ name = "Well Played" },
    { name = "Attack" },
	{ name = "Reclaim"},
	{ name = "Retreat" },
    { name = "Defend" },
    { name = "Wait" },
	{ name = "Incoming" }
}


-- On/Off switches
local draw_dividers = true     -- set to false to disable the dividers between options
local draw_line = false       -- set to true to draw a line from the center to the cursor during selection
local draw_circle = true      -- set to false to disable the circle around the ping wheel

-- Fade and spam frames (set to 0 to disable)
-- NOTE: these are now game frames, not display frames, so always 30 fps
local spamControlFrames = 8 -- how many frames to wait before allowing another ping

local viewSizeX, viewSizeY = Spring.GetViewGeometry()
local labelTime = 0

-- Sizes and colors
local pingWheelRadius = 0.12 * math.min(viewSizeX, viewSizeY) -- 10% of the screen size
local pingWheelThickness = 3                                 -- thickness of the ping wheel line drawing
local centerDotSize = 15                                     -- size of the center dot
local outerLimitRadiusRatio = 5                              -- the outer limit ratio where "no selection" is active
local deadZoneRadius = pingWheelRadius * 0.5				 -- the center "no selection" area as a ratio of the ping wheel radius

local pingWheelTextColor = { 1, 1, 1, 0.7 }
local pingWheelTextSize = 25
local pingWheelTextHighlightColor = { 1, 1, 1, 1 }
local pingWheelTextSpamColor = { 0.9, 0.9, 0.9, 0.4 }
local pingWheelColor = { 1, 1, 1, 0.6 }
local pingWheelResolution = 96

local textAlignRadiusRatio = 1.0
local dividerColor = { 1, 1, 1, 0.15 }

---------------------------------------------------------------
-- End of params

local isPregame = Spring.GetGameFrame() == 0 and not isSpec

local globalDim = 1     -- this controls global alpha of all gl.Color calls

local pingWheel = pingCommands
local pingKeyDown = false
local pingKeyUpTime = 0
local pingKeyGraceTime = 0.1
local eraseKeyDown = false
local pingWheelActive = false
local lmbDownTime = 0
local longPressThreshold = 0.2
local distanceThreshhold = 5000
local lmbDownPos
local lmbDown = false
local lastCursorWorldPos
local rmbDown = false

local pingWorldLocation
local pingWheelScreenLocation
local pingWheelSelection = 0
local spamControl = 0

-- Speedups
local spGetMouseState = Spring.GetMouseState
local spTraceScreenRay = Spring.TraceScreenRay
local atan2 = math.atan2
local floor = math.floor
local pi = math.pi
local sin = math.sin
local cos = math.cos
local sqrt = math.sqrt

local soundDefaultSelect = "sounds/commands/cmd-default-select.wav"
local soundSetTarget = "sounds/commands/cmd-settarget.wav"

local function distance2dSquared(x1, y1, x2, y2)
	local dx = x1 - x2
	local dy = y1 - y2
	return dx * dx + dy * dy
end

local function distance2d(x1, y1, x2, y2)
	return sqrt(distance2dSquared(x1, y1, x2, y2))
end

local function distance3dSquared(x1, y1, z1, x2, y2, z2)
	local dx = x1 - x2
	local dy = y1 - y2
	local dz = z1 - z2
	return dx * dx + dy * dy + dz * dz
end

local function distance3d(x1, y1, z1, x2, y2, z2)
	return sqrt(distance3dSquared(x1, y1, z1, x2, y2, z2))
end



function widget:Initialize()
    -- add the action handler with argument for press and release using the same function call
    widgetHandler.actionHandler:AddAction(self, "ping", pingButtonAction, { true }, "pR")
    widgetHandler.actionHandler:AddAction(self, "ping", pingButtonAction, { false }, "r")
	widgetHandler.actionHandler:AddAction(self, "erase", eraseButtonAction, { true }, "pR")
	widgetHandler.actionHandler:AddAction(self, "erase", eraseButtonAction, { false }, "r")
end


local function getCursorWorldPosition()
	local mx, my = spGetMouseState()
	local _, pos = spTraceScreenRay(mx, my, true)
	return pos
end

-- Store the ping location in pingWorldLocation
local function setPingLocation()
    local mx, my = spGetMouseState()
    local pos = getCursorWorldPosition()
    if pos then
        pingWorldLocation = { pos[1], pos[2], pos[3] }
        pingWheelScreenLocation = { x = mx, y = my }

        -- play a UI sound to indicate wheel is open
        Spring.PlaySoundFile(soundSetTarget, 0.15, 'ui')
    end
end


local function showWheel(show, reason)
    -- set pingwheel to display
	if(show) then
		pingWheelActive = true
		if not pingWorldLocation then
			setPingLocation()
		end
	elseif pingWheelActive then
		pingWheelActive = false
		pingWorldLocation = nil
		pingWheelScreenLocation = nil
		pingWheelSelection = 0
	end
end


function pingButtonAction(_, _, _, args)
    if args[1] then
        pingKeyDown = true
    else
		pingKeyUpTime = os.clock()
    end
end

function eraseButtonAction(_, _, _, args)
	if args[1] then
		eraseKeyDown = true
	else
		eraseKeyDown = false
	end
end

function widget:MousePress(mx, my, button)
    if pingKeyDown and button == 1 then
		lmbDownTime = os.clock()
		lmbDownPos = { x = mx, y = my }
		lmbDown = true
		setPingLocation()
        return true -- block all other mouse presses
    end
	if(pingKeyDown and button == 3) then
		local pos = getCursorWorldPosition()
		lastCursorWorldPos = pos
		return true
	end
end


-- when mouse is pressed, issue the ping command
function widget:MouseRelease(mx, my, button)
	if(button == 3) then
		rmbDown = false
		return true
	end
	if(button == 1) then
		if(
			pingKeyDown and
				os.clock() - lmbDownTime < longPressThreshold and
				distance2dSquared(lmbDownPos.x, lmbDownPos.y, mx, my) < distanceThreshhold
		) then
			Spring.MarkerAddPoint(pingWorldLocation[1], pingWorldLocation[2], pingWorldLocation[3], "")
		end
		lmbDownTime = 0
		lmbDown = false

		if pingWheelActive
			and pingWorldLocation
			and lmbDownPos
			and spamControl == 0
		then
			if pingWheelSelection > 0 then
				local pingText = pingWheel[pingWheelSelection].name
				if(pingWheelSelection == 1) then
					Spring.WarpMouse(lmbDownPos.x, lmbDownPos.y)
					Spring.Echo("selected custom")
					labelTime = os.clock()
				else
					Spring.MarkerAddPoint(pingWorldLocation[1], pingWorldLocation[2], pingWorldLocation[3], pingText, false)
				end

				-- Spam control is necessary!
				spamControl = spamControlFrames
			end
		end
		showWheel(false, "mouse up")
	end
end



function widget:MouseMove(x, y)
	if(lmbDown and not pingWheelActive) then
		local dist = distance2dSquared(lmbDownPos.x, lmbDownPos.y, x, y)
		if(dist > distanceThreshhold) then
			lmbDownTime = 0
			showWheel(true, "mouse movement")
		end
	end
end


local function isBuilding()
	local _, cmdID
	if isPregame and WG['pregame-build'].getPreGameDefID then
		cmdID = WG['pregame-build'].getPreGameDefID()
		cmdID = cmdID and -cmdID or 0 --invert to get the correct negative value
	else
		_, cmdID = Spring.GetActiveCommand()
	end

	return cmdID and cmdID < 0 or false
end


local wheelTime = 0
local drawTime = 0
function widget:Update(dt)
	local clock = os.clock()

	-- Hard exit when building to avoid conflicts with building modifiers
	if(isBuilding()) then
		Spring.Echo("exit everything, building")
		showWheel(false, "building")
		pingKeyDown = false
		pingKeyUpTime = 0
		rmbDown = false
		lmbDown = false
		lmbDownTime = 0
		lmbDownPos = nil
		return
	end

	-- watch ping key, we want to "hold" it down a tad longer to make early releases skip fewer actions
	if (pingKeyUpTime > 0 and clock - pingKeyUpTime > pingKeyGraceTime) then
		pingKeyDown = false
		pingKeyUpTime = 0
		if(pingWheelActive) then
			showWheel(false, "key release")
		end
	end

	-- watch mouse behavior
	if(lmbDownTime > 0 and clock - lmbDownTime > longPressThreshold) then
		lmbDownTime = 0
		showWheel(true, "delayed click")
	end

	-- watch for drawlabel command, we need to fire it on a later frame than the cursor movement
	if(labelTime > 0) then
		if(clock - labelTime > 0.017) then
			Spring.SendCommands("drawlabel")
			labelTime = 0
		end
	end


	-- Wheel handling
	wheelTime = wheelTime + dt
    if pingWheelActive then
		wheelTime = 0
		local mx, my = spGetMouseState()
		if not pingWheelScreenLocation then
			return
		end
		-- calculate where the mouse is relative to the pingWheelScreenLocation, remember top is the first selection
		local dx = mx - pingWheelScreenLocation.x
		local dy = my - pingWheelScreenLocation.y
		local angle = math.atan2(dx, dy)
		local angleDeg = floor(angle * 180 / pi + 0.5)
		if angleDeg < 0 then
			angleDeg = angleDeg + 360
		end
		local offset = 360 / #pingWheel / 2
		local selection = (floor((360 + angleDeg + offset) / 360 * #pingWheel)) % #pingWheel + 1
		-- deadzone is no selection
		local dist = sqrt(dx * dx + dy * dy)
		if (dist < deadZoneRadius)
			or (dist > outerLimitRadiusRatio * pingWheelRadius)
		then
			pingWheelSelection = 0
			--Spring.SetMouseCursor("cursornormal")
		elseif selection ~= pingWheelSelection then
			pingWheelSelection = selection
			Spring.PlaySoundFile(soundDefaultSelect, 0.05, 'ui')
		end

        if spamControl > 0 then
            spamControl = (spamControl == 0) and 0 or (spamControl - 1)
        end
    end


	-- Draw handling
	drawTime = drawTime + dt
	if(drawTime > 0.05) then
		drawTime = 0
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
			Spring.Echo("drawing, rmb down" .. tostring(rmb))
			local pos = getCursorWorldPosition()
			local prev = lastCursorWorldPos
			if(pos and prev) then
				local id = Spring.GetMyPlayerID()
				Spring.MarkerAddLine(prev[1], prev[2], prev[3], pos[1], pos[2], pos[3], false, id)
				lastCursorWorldPos = pos
			end
		end
	end
end

local glColor2 = gl.Color
local function MyGLColor(r, g, b, a)
    if type(r) == "table" then
        r, g, b, a = r[1], r[2], r[3], r[4]
    end
    if not r or not g or not b or not a then
        return
    end
    -- new alpha is globalDim * a, clamped between 0 and 1
    local a2 = a * globalDim
    if a2 > 1 then a = 1 end
    if a2 < 0 then a = 0 end
    glColor2(r, g, b, a2)
end

-- GL speedups
--local glColor = gl.Color
local glColor                = MyGLColor
local glLineWidth            = gl.LineWidth
local glPushMatrix           = gl.PushMatrix
local glPopMatrix            = gl.PopMatrix
local glBlending             = gl.Blending
local glBeginEnd             = gl.BeginEnd
local glBeginText            = gl.BeginText
local glEndText              = gl.EndText
local glText                 = gl.Text
local glVertex               = gl.Vertex
local glPointSize            = gl.PointSize
local GL_LINES               = GL.LINES
local GL_LINE_LOOP           = GL.LINE_LOOP
local GL_QUAD_STRIP 		 = GL.QUAD_STRIP
local GL_POINTS              = GL.POINTS

function widget:DrawScreen()
    -- if keyDown then draw a dot at where mouse is
    glPushMatrix()
	local mx, my, lmb, mmb, rmb = spGetMouseState()
    if pingKeyDown and not pingWheelActive and not rmb then
        -- draw dot at mouse location
        glColor2(pingWheelColor)
        glPointSize(centerDotSize)
        glBeginEnd(GL_POINTS, glVertex, mx, my)
        -- draw two hints at the top left and right of the location
        glColor2(1, 1, 1, 0.7)
		glText("LMB\nping", mx - 15, my + 11, 12, "ros")
		glText("RMB\ndraw", mx + 15, my + 11, 12, "os")


    end
    -- we draw a wheel at the pingWheelScreenLocation divided into #pingWheel slices, with the first slice starting at the top
    if pingWheelActive and pingWheelScreenLocation then
		local pos = pingWheelScreenLocation

        -- set up wheel color and line thickness
        glColor(0, 0, 0, 0.4)
        glLineWidth(pingWheelThickness)


		-- Draw functions
		local function line(x1, y1, x2, y2)
			glVertex(x1, y1)
			glVertex(x2, y2)
		end

        local function circle(r)
            for i = 1, 128 do
                local angle = (i - 1) * 2 * pi / 128
                glVertex(pos.x + r * sin(angle), pos.y + r * cos(angle))
            end
        end

		local function torus(inner, outer, count)
			for i = 1, count+1 do
				local angle = ((i / count) * pi * 2)
				glVertex(pos.x + inner * sin(angle), pos.y + inner * cos(angle))
				glVertex(pos.x + outer * sin(angle), pos.y + outer * cos(angle))
			end
		end

		local function torusSlice(inner, outer, start, arc, count)
			local offset = arc / 2	-- rotate arc by half so that it's properly centered
			for i = 1, count+1 do
				local angle = start - offset + ((arc / count) * (i-1))
				glVertex(pos.x + inner * sin(angle), pos.y + inner * cos(angle))
				glVertex(pos.x + outer * sin(angle), pos.y + outer * cos(angle))
			end
		end

		-- Start draw operations
        -- draw the main body of the wheel
        if draw_circle then
			glBeginEnd(GL_QUAD_STRIP, torus, pingWheelRadius * 1.5, deadZoneRadius, pingWheelResolution)
        end

		-- draw outer circle
		glBeginEnd(GL_LINE_LOOP, circle, pingWheelRadius * 1.55)

        -- draw the center dot
        glColor(pingWheelColor)
        glPointSize(centerDotSize)
        glBeginEnd(GL_POINTS, glVertex, pos.x, pos.y)
        glPointSize(1)

        -- draw a dotted line connecting from center of wheel to the mouse location
        if draw_line and pingWheelSelection > 0 then
            glColor(1, 1, 1, 0.5)
            glLineWidth(pingWheelThickness / 4)
            local mx, my = spGetMouseState()
            glBeginEnd(GL_LINES, line, pos.x, pos.y, mx, my)
        end

        -- draw divider lines between slices
        if draw_dividers then
			local innerRatio = deadZoneRadius * 1.2
			local outerRatio = pingWheelRadius * 1.4
            local function Line2(angle)
                glVertex(pos.x + innerRatio * sin(angle),
					pos.y + innerRatio * cos(angle))
                glVertex(pos.x + outerRatio * sin(angle),
					pos.y + outerRatio * cos(angle))
            end

            glColor(dividerColor)
            glLineWidth(pingWheelThickness * 1)
            for i = 1, #pingWheel do
                local angle2 = (i - 1.5) * 2 * math.pi / #pingWheel
                glBeginEnd(GL_LINES, Line2, angle2)
            end
        end

        -- draw the text for each slice and highlight the selected one
        local textColor = pingWheelTextHighlightColor
        local angle = (pingWheelSelection - 1) * 2 * pi / #pingWheel

        glBeginText()
        if pingWheelSelection ~= 0 then
            local text = pingWheel[pingWheelSelection].name
            local color = pingWheel[pingWheelSelection].color or textColor
            color[4] = 1

            glColor(color)
            glText(text, pos.x + pingWheelRadius * textAlignRadiusRatio * sin(angle),
				pos.y + pingWheelRadius * textAlignRadiusRatio * cos(angle), pingWheelTextSize * 1.25,
                "cvos")
			glColor(0, 0, 0, 0.4)
			glBeginEnd(GL_QUAD_STRIP, torusSlice, pingWheelRadius * 1.5, deadZoneRadius, angle, (math.pi * 2) / #pingWheel, 24)
        end

        if spamControl > 0 then
            glColor(pingWheelTextSpamColor)
        end

        for i = 1, #pingWheel do
            if i ~= pingWheelSelection or pingWheelSelection == 0 then
                angle = (i - 1) * 2 * math.pi / #pingWheel
                local text = pingWheel[i].name
                local color = pingWheel[i].color or pingWheelTextColor
                color[4] = 0.75
                glColor(color)
                glText(text, pos.x + pingWheelRadius * textAlignRadiusRatio * math.sin(angle),
					pos.y + pingWheelRadius * textAlignRadiusRatio * math.cos(angle),
                    pingWheelTextSize, "cvos")
            end
        end
        glEndText()

        glLineWidth(1)
        glBlending(false)
    end
    glPopMatrix()
end
