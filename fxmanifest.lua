fx_version 'cerulean'
game 'gta5'

author 'Rigoormortis'
description 'Bowling Alley'
version '1.0.0'

client_scripts {
    '@qbx_core/modules/playerdata.lua',
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

shared_scripts {
    '@ox_lib/init.lua'
}

lua54 'yes'
