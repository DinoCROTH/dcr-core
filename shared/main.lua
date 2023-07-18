DCShared = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do NumberCharset[#NumberCharset+1] = string.char(i) end
for i = 65,  90 do StringCharset[#StringCharset+1] = string.char(i) end
for i = 97, 122 do StringCharset[#StringCharset+1] = string.char(i) end

QBShared.RandomStr = function(length)
    if length <= 0 then return '' end
    return QBShared.RandomStr(length - 1) .. StringCharset[math.random(1, #StringCharset)]
end
exports('RandomStr', QBShared.RandomStr)

QBShared.RandomInt = function(length)
    if length <= 0 then return '' end
    return QBShared.RandomInt(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
end
exports('RandomInt', QBShared.RandomInt)

QBShared.SplitStr = function(str, delimiter)
    local result = { }
    local from = 1
    local delim_from, delim_to = string.find(str, delimiter, from)
    while delim_from do
		result[#result+1] = string.sub(str, from, delim_from - 1)
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delimiter, from)
    end
	result[#result+1] = string.sub(str, from)
    return result
end
exports('SplitStr', QBShared.SplitStr)

QBShared.Trim = function(value)
	if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end
exports('Trim', QBShared.Trim)

QBShared.Round = function(value, numDecimalPlaces)
    if not numDecimalPlaces then return math.floor(value + 0.5) end
    local power = 10 ^ numDecimalPlaces
    return math.floor((value * power) + 0.5) / (power)
end
exports('Round', DCShared.Round)

-- Shared

exports('GetGangs', function()
    return DCShared.Gangs
end)

exports('GetHorses', function()
    return DCShared.Horses
end)

exports('GetItem', function(item)
    if QBShared.Items[item] then
        return DCShared.Items[item]
    end
end)

exports('GetItems', function()
    return DCShared.Items
end)

exports('GetJobs', function()
    return DCShared.Jobs
end)

exports('GetVehicles', function()
    return DCShared.Vehicles
end)

exports('GetWeapons', function()
    return DCShared.Weapons
end)