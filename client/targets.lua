local ox_target = exports.ox_target
local npcs = {}

local bowlingPed = lib.points.new({
    coords = vec3(756.35, -774.89, 25.34),
    distance = 30
})

-- Function to spawn an NPC at a location
local function spawnNPC(pedModel, spawnLoc, pedOptions)
    if lib.requestModel(pedModel) then
        local npc = CreatePed(4, pedModel, spawnLoc.x, spawnLoc.y, spawnLoc.z, spawnLoc.w, false,
            true)

        while not npc do
            Wait(100)
        end

        table.insert(npcs, npc)

        SetModelAsNoLongerNeeded(pedModel)
        FreezeEntityPosition(npc, true)
        SetEntityInvincible(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)

        -- Add ox_target interaction to the NPC
        ox_target:addLocalEntity(npc, pedOptions)
    end
end

-- Function to delete NPCs when leaving the area
local function deleteNPCs()
    for _, npc in ipairs(npcs) do
        DeleteEntity(npc)
    end
end

function bowlingPed:onEnter()
    spawnNPC('a_m_m_business_01', vec4(756.35, -774.89, 25.34, 90), {
        {
            label = 'Purchase Solo Ticket',
            icon = 'fa-solid fa-ticket-alt',
            event = 'rig-bowling:client:startSoloBowling',
        },
        {
            label = 'Purchase Group Ticket',
            icon = 'fa-solid fa-ticket-alt',
            event = 'rig-bowling:client:startGroupBowling',
        }
    })
end

function bowlingPed:onExit()
    deleteNPCs()
end

local cookPed = lib.points.new({
    coords = vec3(756.35, -774.89, 25.34),
    distance = 30
})

function cookPed:onEnter()
    spawnNPC('s_m_m_linecook', vec4(756.32, -768.06, 25.34, 90), {
        label = 'Buy Food',
        icon = 'fa-solid fa-hamburger',
        onSelect = function(data)
            lib.print.info('Food purchased')
        end
    })
end

function cookPed:onExit()
    deleteNPCs()
end
