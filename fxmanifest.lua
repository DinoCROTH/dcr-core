fx_version 'cerulean'
game 'rdr3'
description 'Dinocore RedM'
version '0.0.1'

shared_scripts {
	'shared/locale.lua',
	'locale/en.lua', -- replace with desired language
	'config.lua',
	'shared/main.lua',
	'shared/items.lua',
	'shared/jobs.lua',
	'shared/horse.lua',
	'shared/vehicles.lua',
	'shared/gangs.lua',
	'shared/weapons.lua'
}

client_scripts {
	'client/functions.lua',
	'client/loops.lua',
	'client/events.lua',
	'client/notify.js',
	'client/drawtxt.lua',
	'client/prompts.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/debug.lua',
	'server/functions.lua',
	'server/player.lua',
	'server/events.lua',
	'server/commands.lua',
	'server/exports.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css'
}

dependencies {
	'oxmysql',
}

lua54 'yes'
