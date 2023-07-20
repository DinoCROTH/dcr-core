DCConfig = {}

-- General Settings
    DCConfig.MaxPlayers = GetConvarInt('sv_maxclients', 48)
    DCConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
    DCConfig.UpdateInterval = 5 -- Update player data interval (in minutes)
    DCConfig.StatusInterval = 5000 -- Check hunger/thirst status interval (in milliseconds)
    DCConfig.EnablePVP = true -- Enable or disable player versus player (PvP) combat

-- Server Configuration
    DCConfig.Server = {} -- General server config
    DCConfig.Server.Discord = "" -- Discord invite link
    DCConfig.Server.ServerClosed = false -- Set server to closed mode (except for players with 'dcadmin.join' permission)
    DCConfig.Server.ServerClosedReason = "Server Closed" -- Reason for server being closed
    DCConfig.Server.Uptime = 0 -- Time the server has been up.
    DCConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
    DCConfig.Server.WhitelistPermission = { 'god', 'admin', 'mod' } -- Permission that's able to enter the server when the whitelist is on
    DCConfig.Server.UseConnectQueue = true -- Use connectqueue resource for queue system
    DCConfig.Server.CheckDuplicateLicense = false -- Check for duplicate rockstar license on join
    DCConfig.Server.Permissions = { 'god', 'admin', 'mod' } -- Add as many groups as you want here after creating them in your server.cfg

-- Money/Economy Settings
    DCConfig.Money = {}
    DCConfig.Money.MoneyTypes = {
        cash = 500,
        cents = 0,
        bank = 5000,
        gold = 0,
        bloodmoney = 0
        }
    DCConfig.Money.DontAllowMinus = { 'cash', 'cents', 'bank', 'gold', 'bloodmoney' }
    DCConfig.Money.PayCheckTimeOut = 10 -- Time in minutes between paychecks
    DCConfig.Money.PayCheckSociety = false -- Paycheck from the player's employed society account (requires dc-bossmenu)

-- Player Settings
    DCConfig.Player = {}
    DCConfig.Player.RevealMap = true
    DCConfig.Player.MaxWeight = 50000 -- Maximum weight a player can carry (in grams)
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

-- Notifications Settings
    DCConfig.Notify = {}

    DCConfig.Notify.NotificationStyling = {
        group = false, -- Allow notifications to stack with a badge instead of repeating
        position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
        progress = true -- Display Progress Bar
        }

    -- These are how you define different notification variants
    -- The "color" key is background of the notification
    -- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
    DCConfig.Notify.VariantDefinitions = {
        success = {
            classes = 'success',
            icon = 'done'
        },
        primary = {
            classes = 'primary',
            icon = 'info'
        },
        error = {
            classes = 'error',
            icon = 'dangerous'
        },
        police = {
            classes = 'police',
            icon = 'local_police'
        },
        medic = {
            classes = 'medic',
            icon = 'fas fa-ambulance'
        },
        horse = {
            classes = 'horse',
            icon = 'fas fa-horse-head'
        }
    }

-- Skill XP Levels (Optional)
    -- Left side is level right side xp needed, you just have to add the skill here and in the metadata in servers/player.lua
    -- You dont have to use this if you dont want to, just leave as is
    DCConfig.XPLevels = {
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

-- Export the Config Table
    exports('GetConfig', function()
        return DCConfig
    end)
