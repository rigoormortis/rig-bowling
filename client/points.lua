local config = require 'config'
local occupiedLanes = {}
local lanePoints = {}

local lane1 = lib.points.new({
    coords = config.laneLocations[1],
    distance = 1,
})

local marker = lib.marker.new({
    coords = lane1.coords,
    color = { r = 255, g = 0, b = 0, a = 85 },
    type = "UpsideDownCone"
})

function lane1:onEnter()
    lib.showTextUI('[E] to bowl')
end

function lane1:onExit()
    lib.hideTextUI()
end

function lane1:nearby()
    marker:draw()

    if self.currentDistance < self.distance then
        if IsControlJustReleased(0, 38) then
            -- Bowl
            lib.print.info('Bowl')
        end
    end
end
