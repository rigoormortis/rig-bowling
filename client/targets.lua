local config = require 'config'
local npc

local function spawnNPC(coords, model, options)
    if lib.requestModel(model) then
        npc = CreatePed(4, model, coords.x, coords.y, coords.z, coords.w, false,
            true)

        while not npc do
            Wait(100)
        end

        SetModelAsNoLongerNeeded(model)
        FreezeEntityPosition(npc, true)
        SetEntityInvincible(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)

        exports.ox_target:addLocalEntity(npc, options)
    end
end

local function deleteNPC(npc)
    if not DoesEntityExist(npc) then return end

    exports.ox_target:removeLocalEntity(npc)

    DeleteEntity(npc)
end

local bowlingAlley = lib.points.new({
    coords = config.location,
    distance = 10
})

function bowlingAlley:onEnter()
    spawnNPC(config.ticketPed.coords, config.ticketPed.model, config.ticketPed.options)
end

function bowlingAlley:onExit()
    deleteNPC(npc)
end
