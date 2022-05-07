fx_version 'cerulean'
game 'gta5'

description 'QB-Skillz'
version '1.5.3'

shared_script 'config.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua'
}

exports {
    "UpdateSkill",
    "GetCurrentSkill"
}
