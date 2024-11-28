local lane1 = lib.points.new({
    coords = vec3(747.6432, -781.8240, 26.45),
    distance = 1,
    lane = 1,
})

local lane1Marker = lib.marker.new({
    coords = vec3(lane1.coords.x, lane1.coords.y, lane1.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane1:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane1:onExit()
    lib.hideTextUI()
end

function lane1:nearby()
    lane1Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane2 = lib.points.new({
    coords = vec3(747.6756, -779.7428, 26.45),
    distance = 1,
    lane = 2,
})

local lane2Marker = lib.marker.new({
    coords = vec3(lane2.coords.x, lane2.coords.y, lane2.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane2:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane2:onExit()
    lib.hideTextUI()
end

function lane2:nearby()
    lane2Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane3 = lib.points.new({
    coords = vec3(747.7544, -777.6724, 26.45),
    distance = 1,
    lane = 3,
})

local lane3Marker = lib.marker.new({
    coords = vec3(lane3.coords.x, lane3.coords.y, lane3.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane3:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane3:onExit()
    lib.hideTextUI()
end

function lane3:nearby()
    lane3Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane4 = lib.points.new({
    coords = vec3(747.7924, -775.5908, 26.45),
    distance = 1,
    lane = 4,
})

local lane4Marker = lib.marker.new({
    coords = vec3(lane4.coords.x, lane4.coords.y, lane4.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane4:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane4:onExit()
    lib.hideTextUI()
end

function lane4:nearby()
    lane4Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane5 = lib.points.new({
    coords = vec3(747.8304, -773.5092, 26.45),
    distance = 1,
    lane = 5,
})

local lane5Marker = lib.marker.new({
    coords = vec3(lane5.coords.x, lane5.coords.y, lane5.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane5:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane5:onExit()
    lib.hideTextUI()
end

function lane5:nearby()
    lane5Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane6 = lib.points.new({
    coords = vec3(747.8684, -771.4276, 26.45),
    distance = 1,
    lane = 6,
})

local lane6Marker = lib.marker.new({
    coords = vec3(lane6.coords.x, lane6.coords.y, lane6.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane6:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane6:onExit()
    lib.hideTextUI()
end

function lane6:nearby()
    lane6Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end

local lane7 = lib.points.new({
    coords = vec3(747.7703, -767.2361, 26.45),
    distance = 1,
    lane = 7,
})

local lane7Marker = lib.marker.new({
    coords = vec3(lane7.coords.x, lane7.coords.y, lane7.coords.z - 1.0),
    type = "HorizontalCircleSkinny",
    color = { r = 0, g = 255, b = 0, a = 100 },
    width = 1.0
})

function lane7:onEnter()
    lib.showTextUI('[E] Start Bowling')
end

function lane7:onExit()
    lib.hideTextUI()
end

function lane7:nearby()
    lane7Marker:draw()

    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        TriggerEvent('rig-bowling:client:startBowling', self.lane)
    end
end
