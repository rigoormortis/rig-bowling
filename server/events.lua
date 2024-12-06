RegisterNetEvent('rig-bowling:server:buyTicket', function(type)
    if type == 'solo' then
        -- Buy Solo Ticket
        lib.triggerClientEvent('rig-bowling:client:assignLane', source)
    elseif type == 'group' then
        -- Buy Group Ticket
        local players = lib.callback.await('rig-bowling:client:getGroup', source)

        for i, player in ipairs(players) do
            lib.triggerClientEvent('rig-bowling:client:assignLane', player)
        end
    end
end)
