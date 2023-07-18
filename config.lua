DCConfig = {}

-- Server Settings
DCConfig.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- Maximum number of players allowed on the server (default: 48)
DCConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0) -- Default spawn location for players
DCConfig.UpdateInterval = 5 -- Interval (in minutes) for updating player data
DCConfig.StatusInterval = 5000 -- Interval (in milliseconds) for checking hunger and thirst status
DCConfig.EnablePVP = true -- Enable or disable player-versus-player combat on the server
DCConfig.Discord = "" -- Discord invite link
DCConfig.ServerClosed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
DCConfig.ServerClosedReason = "Server Closed" -- Reason for server being closed
DCConfig.UseConnectQueue = true -- Use connectqueue resource for a queue system
DCConfig.Permissions = {'god', 'admin', 'mod'} -- Permissions/groups for players on the server

-- Money Settings
DCConfig.Money = {}
DCConfig.Money.MoneyTypes = { -- ['type']=startamount - Add or remove money types for your server (for ex. ['blackmoney']=0), remember once added it will not be removed from the database!
    ['cash'] = 50,
    ['cents'] = 0,
    ['bank'] = 200,
    ['bloodmoney'] = 0,
    ['gold'] = 0
}
DCConfig.Money.DontAllowMinus = { -- Money types not allowed to go into negative values
    'cash',
    'coins',
    'gold',
    'bloodmoney'
}
DCConfig.Money.PayCheckTimeOut = 30 -- Time in minutes for giving paychecks
DCConfig.Money.PayCheckSociety = false -- If true, paychecks will come from the society account that the player is employed at

-- Player Settings
DCConfig.Player = {}
DCConfig.Player.RevealMap = false -- Whether to reveal the map for players
DCConfig.Player.MaxWeight = 120000 -- Maximum weight a player can carry (currently 120kg, written in grams)
DCConfig.Player.MaxInvSlots = 41 -- Maximum inventory slots for a player
DCConfig.Player.HungerRate = 4.2 -- Rate at which hunger decreases
DCConfig.Player.ThirstRate = 3.8 -- Rate at which thirst decreases
DCConfig.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}

-- Skill Levels
DCConfig.Levels = {
    ["main"] = {
        [0] = 0,
        [1] = 50,
        [2] = 100,
        [3] = 150,
        [4] = 200,
        [5] = 250,
        [6] = 300,
        [7] = 350,
        [8] = 400,
        [9] = 450,
        [10] = 500,
        [11] = 550,
        [12] = 600,
        [13] = 650,
        [14] = 700,
        [15] = 750,
        [16] = 800,
        [17] = 850,
        [18] = 900,
        [19] = 950,
        [20] = 1000
    },
    ["mining"] = {
        [0] = 0,
        [1] = 50,
        [2] = 100,
        [3] = 150,
        [4] = 200,
        [5] = 250,
        [6] = 300,
        [7] = 350,
        [8] = 400,
        [9] = 450,
        [10] = 500,
        [11] = 550,
        [12] = 600,
        [13] = 650,
        [14] = 700,
        [15] = 750,
        [16] = 800,
        [17] = 850,
        [18] = 900,
        [19] = 950,
        [20] = 1000
    },
    ["herbalism"] = {
        [0] = 0,
        [1] = 50,
        [2] = 100,
        [3] = 150,
        [4] = 200,
        [5] = 250,
        [6] = 300,
        [7] = 350,
        [8] = 400,
        [9] = 450,
        [10] = 500,
        [11] = 550,
        [12] = 600,
        [13] = 650,
        [14] = 700,
        [15] = 750,
        [16] = 800,
        [17] = 850,
        [18] = 900,
        [19] = 950,
        [20] = 1000
    },
}

-- Export the config table
exports('GetConfig', function()
    return DCConfig
end)
