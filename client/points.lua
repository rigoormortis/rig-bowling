local config = require 'config'
local lanePoints = {}
local markers = {}

local function createLanes()
    for i, coords in ipairs(config.laneLocations) do
        local lane = lib.points.new({
            coords = coords,
            distance = 1,
        })

        local marker = lib.marker.new({
            coords = lane.coords,
            color = { r = 255, g = 0, b = 0, a = 85 },
            type = "UpsideDownCone"
        })

        function lane:onEnter()
            lib.showTextUI('[E] to bowl')
        end

        function lane:onExit()
            lib.hideTextUI()
        end

        function lane:nearby()
            marker:draw()

            if self.currentDistance < self.distance then
                if IsControlJustReleased(0, 38) then
                    -- Bowl
                    lib.notify({
                        title = 'Bowl',
                        description = 'You have begun bowling.',
                        type = 'success'
                    })
                end
            end
        end

        table.insert(lanePoints, lane)
        table.insert(markers, marker)
    end
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        createLanes()
    end
end)
