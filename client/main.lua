local config = require 'config'
local occupiedLanes = {}
local lanePoints = {}
local npcs = {}

local function spawnNPC(coords, model)
    if lib.requestModel(model) then
        local npc = CreatePed(4, model, coords.x, coords.y, coords.z, coords.w, false,
            true)

        while not npc do
            Wait(100)
        end

        SetModelAsNoLongerNeeded(model)
        FreezeEntityPosition(npc, true)
        SetEntityInvincible(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)

        table.insert(npcs, npc)
    end
end

local function deleteNPC(npc)
    if not DoesEntityExist(npc) then return end

    DeleteEntity(npc)
end

local bowlingAlley = lib.points.new({
    coords = config.location,
    distance = 10
})

function bowlingAlley:onEnter()
    for key, ped in pairs(config.peds) do
        spawnNPC(ped.coords, ped.model)
    end
end

function bowlingAlley:onExit()
    for i, npc in ipairs(npcs) do
        deleteNPC(npc)
    end
end

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
