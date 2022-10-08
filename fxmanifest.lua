fx_version 'cerulean'
game 'gta5'

description 'B1-Skillz'
version '1.3.5'

ui_page "skill-menu/index.html"

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

files {
    "skill-menu/index.html",
    "skill-menu/app.css",
    "skill-menu/app.js"
}

exports {
    "UpdateSkill",
    "GetCurrentSkill"
}
