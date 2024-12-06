RegisterNetEvent('rig-bowling:client:assignLane', function()
    lib.notify({
        title = 'Lane Assigned',
        description = 'You have been assigned a lane.',
        type = 'success'
    })
end)
