fx_version 'cerulean'
game 'gta5'

description 'B1-Skillz'
version '1.2.3'

shared_script 'config.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'client/gui.lua'
}

exports {
    "UpdateSkill",
    "GetCurrentSkill"
}
