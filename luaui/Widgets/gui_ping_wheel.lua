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
local numFadeInFrames = 6   -- how many frames to fade in
local numFadeOutFrames = 4  -- how many frames to fade out
local numFlashFrames = 3    -- how many frames to flash when spamming
local spamControlFrames = 8 -- how many frames to wait before allowing another ping

local viewSizeX, viewSizeY = Spring.GetViewGeometry()
local labelTime = 0

-- Sizes and colors
local pingWheelRadius = 0.12 * math.min(viewSizeX, viewSizeY) -- 10% of the screen size
local pingWheelThickness = 3                                 -- thickness of the ping wheel line drawing
local centerDotSize = 20                                     -- size of the center dot
local deadZoneRadiusRatio = 0.3                              -- the center "no selection" area as a ratio of the ping wheel radius
local outerLimitRadiusRatio = 5                              -- the outer limit ratio where "no selection" is active

local pingWheelTextColor = { 1, 1, 1, 0.7 }
local pingWheelTextSize = 25
local pingWheelTextHighlightColor = { 1, 1, 1, 1 }
local pingWheelTextSpamColor = { 0.9, 0.9, 0.9, 0.4 }

local pingWheelColor = { 0.9, 0.8, 0.5, 0.6 }
---------------------------------------------------------------
-- End of params

local globalDim = 1     -- this controls global alpha of all gl.Color calls
local globalFadeIn = 0  -- how many frames left to fade in
local globalFadeOut = 0 -- how many frames left to fade out

local bgTexture = "LuaUI/images/enemyspotter.dds"
local bgTextureSizeRatio = 1.9
local bgTextureColor = { 0, 0, 0, 0.66 }
local dividerInnerRatio = 0.6
local dividerOuterRatio = 1.2
local textAlignRadiusRatio = 1.0
local dividerColor = { 1, 1, 1, 0.15 }

local pingWheel = pingCommands
local pingKeyDown = false
local pingKeyUpTime = 0
local eraseKeyDown = false
local pingWheelActive = false
local mouseDownTime = 0
local longPressThreshold = 0.2
local distanceThreshhold = 15
local mouseDownPos
local lastCursorWorldPos
local rmbDown = false

local pingWorldLocation
local pingWheelScreenLocation
local pingWheelSelection = 0
local spamControl = 0
local flashFrame = 0
local flashing = false

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
	return dx * dx + dy + dy
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


local function FadeIn()
    if numFadeInFrames == 0 then return end
    globalFadeIn = numFadeInFrames
    globalFadeOut = 0
end

local function fadeOut()
    if numFadeOutFrames == 0 then return end
    globalFadeIn = 0
    globalFadeOut = numFadeOutFrames
end


local function showWheel(show, reason)
    -- set pingwheel to display
	Spring.Echo("Show Wheel: " .. tostring(show) .. " " .. reason)
	if(show) then
		pingWheelActive = true
		if not pingWorldLocation then
			setPingLocation()
		end
		-- turn on fade in
		FadeIn()
	else
		if pingWheelActive then
			pingWheelActive = false
			pingWorldLocation = nil
			pingWheelScreenLocation = nil
			pingWheelSelection = 0
			fadeOut()
		end
	end
end


function pingButtonAction(_, _, _, args)
    if args[1] then
        pingKeyDown = true
    else
		pingKeyDown = false
		pingKeyUpTime = os.clock()
		if(pingWheelActive) then
			fadeOut(false, "key release")
		end
    end
end

function eraseButtonAction(_, _, _, args)
	if args[1] then
		eraseKeyDown = true
	else
		eraseKeyDown = false
	end
end


-- sets flashing effect to true and turn off wheel display
local function flashAndOff()
    flashing = true
    flashFrame = numFlashFrames
end


function widget:MousePress(mx, my, button)
	if(button == 3) then
		rmbDown = true
	end
    if pingKeyDown and button == 1 then
		mouseDownTime = os.clock()
		mouseDownPos = { x = mx, y = my }
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
	if(button == 1) then
		if(
			pingKeyDown and
			os.clock() - mouseDownTime < longPressThreshold and
			distance2dSquared(mouseDownPos.x, mouseDownPos.y, mx, my) < distanceThreshhold
		) then
			Spring.MarkerAddPoint(pingWorldLocation[1], pingWorldLocation[2], pingWorldLocation[3], "")
		end
		mouseDownTime = 0

		if pingWheelActive
			and pingWorldLocation
			and spamControl == 0
		then
			if pingWheelSelection > 0 then
				local pingText = pingWheel[pingWheelSelection].name
				if(pingWheelSelection == 1) then
					Spring.WarpMouse(mouseDownPos.x, mouseDownPos.y)
					Spring.Echo("selected custom")
					labelTime = os.clock()
				else
					Spring.MarkerAddPoint(pingWorldLocation[1], pingWorldLocation[2], pingWorldLocation[3], pingText, false)
				end

				-- Spam control is necessary!
				spamControl = spamControlFrames

				-- play a UI sound to indicate ping was issued
				flashAndOff()
			else
				fadeOut()
			end
		else
			fadeOut()
		end
	end

	if(button == 3) then
		rmbDown = false
	end
end



function widget:MouseMove(x, y)
	if(mouseDownPos and not pingWheelActive) then
		if(distance2dSquared(mouseDownPos.x, mouseDownPos.y, x, y) > distanceThreshhold) then
			mouseDownTime = 0
			mouseDownPos = nil
			showWheel(true, "mouse movement")
		end
	end
end


local fadeTime = 0
local wheelTime = 0
local drawTime = 0
function widget:Update(dt)
	local clock = os.clock()

	-- watch mouse behavior
	if(mouseDownTime > 0 and clock - mouseDownTime > longPressThreshold) then
		mouseDownTime = 0
		showWheel(true, "delayed click")
	end

	-- watch for drawlabel command, we need to fire it on a later frame than the cursor movement
	if(labelTime > 0) then
		if(clock - labelTime > 0.017) then
			Spring.SendCommands("drawlabel")
			labelTime = 0
		end
	end


    -- Fade handling - we need smooth update of fade frames
	fadeTime = fadeTime + dt
    if (fadeTime > 0.017) and globalFadeIn > 0 or globalFadeOut > 0 then
		fadeTime = 0
        if globalFadeIn > 0 then
            globalFadeIn = globalFadeIn - 1
            if globalFadeIn < 0 then globalFadeIn = 0 end
            globalDim = 1 - globalFadeIn / numFadeInFrames
        end
        if globalFadeOut > 0 then
            globalFadeOut = globalFadeOut - 1
            if globalFadeOut <= 0 then
                globalFadeOut = 0
                showWheel(false, "globalFadeOut 0")
            end
            globalDim = globalFadeOut / numFadeOutFrames
        end
    end

	-- Wheel handling
	wheelTime = wheelTime + dt
    if (wheelTime > 0.03) and pingWheelActive then
		wheelTime = 0
        if globalFadeOut == 0 and not flashing then -- if not flashing and not fading out
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
            if (dist < deadZoneRadiusRatio * pingWheelRadius)
                or (dist > outerLimitRadiusRatio * pingWheelRadius)
            then
                pingWheelSelection = 0
                --Spring.SetMouseCursor("cursornormal")
            elseif selection ~= pingWheelSelection then
                pingWheelSelection = selection
                Spring.PlaySoundFile(soundDefaultSelect, 0.05, 'ui')
            end
        end
        if flashing and pingWheelActive then
            if flashFrame > 0 then
                flashFrame = flashFrame - 1
            else
                flashing = false
                fadeOut()
            end
        end
        if spamControl > 0 then
            spamControl = (spamControl == 0) and 0 or (spamControl - 1)
        end
    end


	-- Draw handling
	drawTime = drawTime + dt
	if(drawTime > 0.05) then
		drawTime = 0

		-- Erase
		if(eraseKeyDown and rmbDown) then
			local pos = getCursorWorldPosition()
			if (pos) then
				Spring.MarkerErasePosition(pos[1], pos[2], pos[3])
			end
			return
		end

		-- Draw
		if(pingKeyDown and rmbDown) then
			local pos = getCursorWorldPosition()
			if(pos) then
				local prev = lastCursorWorldPos
				local id = Spring.GetMyPlayerID()
				Spring.MarkerAddLine(prev[1], prev[2], prev[3], pos[1], pos[2], pos[3], false, id)
				lastCursorWorldPos = pos

				-- local dist = distance3d(prev[1], prev[2], prev[3], pos[1], pos[2], pos[3])
				-- Spring.Echo("Distance is " .. tostring(dist))
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
local glDepthTest            = gl.DepthTest
local glBeginEnd             = gl.BeginEnd
local glBeginText            = gl.BeginText
local glEndText              = gl.EndText
local glTexture              = gl.Texture
local glTexRect              = gl.TexRect
local glText                 = gl.Text
local glVertex               = gl.Vertex
local glPointSize            = gl.PointSize
local GL_LINES               = GL.LINES
local GL_LINE_LOOP           = GL.LINE_LOOP
local GL_POINTS              = GL.POINTS
local GL_SRC_ALPHA           = GL.SRC_ALPHA
local GL_ONE_MINUS_SRC_ALPHA = GL.ONE_MINUS_SRC_ALPHA

function widget:DrawScreen()
    -- if keyDown then draw a dot at where mouse is
    glPushMatrix()
    if pingKeyDown and not pingWheelActive then
        -- draw dot at mouse location
        local mx, my = spGetMouseState()
        glColor2(pingWheelColor)
        glPointSize(centerDotSize)
        glBeginEnd(GL_POINTS, glVertex, mx, my)
        -- draw two hints at the top left and right of the location
        glColor2(1, 1, 1, 1)
        glText("R-click\nMsgs", mx + 15, my + 11, 12, "os")
        glText("L-click\nCmds", mx - 15, my + 11, 12, "ros")
    end
    -- we draw a wheel at the pingWheelScreenLocation divided into #pingWheel slices, with the first slice starting at the top
    if pingWheelActive and pingWheelScreenLocation then
        -- add the blackCircleTexture as background texture
        glBlending(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
        glColor(0,0,0,0.4) -- inverting color for the glow texture :)
        glTexture(bgTexture)
        -- use pingWheelRadius as the size of the background texture
        local halfSize = pingWheelRadius * bgTextureSizeRatio
        glTexRect(pingWheelScreenLocation.x - halfSize, pingWheelScreenLocation.y - halfSize,
            pingWheelScreenLocation.x + halfSize, pingWheelScreenLocation.y + halfSize)
        glTexture(false)

        -- draw a smooth circle at the pingWheelScreenLocation with 128 vertices
        --glColor(pingWheelColor)
        glColor(0, 0, 0, 0.5)
        glLineWidth(pingWheelThickness)

        local function Circle(r)
            for i = 1, 128 do
                local angle = (i - 1) * 2 * math.pi / 128
                glVertex(pingWheelScreenLocation.x + r * sin(angle), pingWheelScreenLocation.y + r * cos(angle))
            end
        end

        -- draw the dead zone circle
        if draw_circle then
            glBeginEnd(GL_LINE_LOOP, Circle, pingWheelRadius * deadZoneRadiusRatio)
        end

		-- draw outer circle
		glBeginEnd(GL_LINE_LOOP, Circle, pingWheelRadius * 1.5)

        -- draw the center dot
        glColor(pingWheelColor)
        glPointSize(centerDotSize)
        glBeginEnd(GL_POINTS, glVertex, pingWheelScreenLocation.x, pingWheelScreenLocation.y)
        glPointSize(1)

        local function line(x1, y1, x2, y2)
            glVertex(x1, y1)
            glVertex(x2, y2)
        end
        -- draw a dotted line connecting from center of wheel to the mouse location
        if draw_line and pingWheelSelection > 0 then
            glColor(1, 1, 1, 0.5)
            glLineWidth(pingWheelThickness / 4)
            local mx, my = spGetMouseState()
            glBeginEnd(GL_LINES, line, pingWheelScreenLocation.x, pingWheelScreenLocation.y, mx, my)
        end

        -- draw divider lines between slices
        if draw_dividers then
            local function Line2(angle)
                glVertex(pingWheelScreenLocation.x + pingWheelRadius * dividerInnerRatio * sin(angle),
                    pingWheelScreenLocation.y + pingWheelRadius * dividerInnerRatio * cos(angle))
                glVertex(pingWheelScreenLocation.x + pingWheelRadius * dividerOuterRatio * sin(angle),
                    pingWheelScreenLocation.y + pingWheelRadius * dividerOuterRatio * cos(angle))
            end

            glColor(dividerColor)
            glLineWidth(pingWheelThickness * 1)
            for i = 1, #pingWheel do
                local angle2 = (i - 1.5) * 2 * math.pi / #pingWheel
                glBeginEnd(GL_LINES, Line2, angle2)
            end
        end

        -- draw the text for each slice and highlight the selected one
        local textColor = pingWheelTextColor
		textColor = pingWheelTextHighlightColor
        local angle = (pingWheelSelection - 1) * 2 * pi / #pingWheel

        glBeginText()
        if pingWheelSelection ~= 0 then
            local text = pingWheel[pingWheelSelection].name
            local color = pingWheel[pingWheelSelection].color or textColor
            color[4] = 1

            glColor(color)
            glText(text, pingWheelScreenLocation.x + pingWheelRadius * textAlignRadiusRatio * sin(angle),
                pingWheelScreenLocation.y + pingWheelRadius * textAlignRadiusRatio * cos(angle), pingWheelTextSize * 1.25,
                "cvos")
        end

        --glColor(pingWheelTextColor)
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
                glText(text, pingWheelScreenLocation.x + pingWheelRadius * textAlignRadiusRatio * math.sin(angle),
                    pingWheelScreenLocation.y + pingWheelRadius * textAlignRadiusRatio * math.cos(angle),
                    pingWheelTextSize, "cvos")
            end
        end
        glEndText()

        glLineWidth(1)
        glBlending(false)
    end
    glPopMatrix()
end
