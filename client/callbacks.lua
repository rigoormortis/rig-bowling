lib.callback.register('rig-bowling:client:getGroup', function()
    local groupInput = lib.inputDialog('Group Builder', {
        {
            type = 'select',
            label = 'Select Player',
            options = {
                { label = 'Player 1',  value = 'Player 1' },
                { label = 'Player 2',  value = 'Player 2' },
                { label = 'Player 3',  value = 'Player 3' },
                { label = 'Player 4',  value = 'Player 4' },
                { label = 'Player 5',  value = 'Player 5' },
                { label = 'Player 6',  value = 'Player 6' },
                { label = 'Player 7',  value = 'Player 7' },
                { label = 'Player 8',  value = 'Player 8' },
                { label = 'Player 9',  value = 'Player 9' },
                { label = 'Player 10', value = 'Player 10' },
            }
        }
    })

    lib.print.info(groupInput)
end)
