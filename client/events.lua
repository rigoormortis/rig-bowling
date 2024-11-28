local occupiedLanes = {}

RegisterNetEvent('rig-bowling:client:startSoloBowling', function()
    local playerData = QBX.PlayerData

    -- Check if the player has enough money
    if playerData.money.cash >= 100 then
        lib.print.info('Solo Bowling started')
    else
        lib.print.error('You do not have enough money to start solo bowling')
    end
end)
