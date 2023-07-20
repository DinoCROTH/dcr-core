local isLoggedIn = false
AddStateBagChangeHandler('isLoggedIn', nil, function(bagName, key, value)
    isLoggedIn = value
end)

CreateThread(function()
    while true do
        Wait(0)
        if isLoggedIn then
            Wait((1000 * 60) * DCConfig.UpdateInterval)
            TriggerServerEvent('DCCore:UpdatePlayer')
        end
    end
end)

CreateThread(function()
    while true do
        Wait(DCConfig.StatusInterval)
        if isLoggedIn then
            if DCCore.PlayerData.metadata['hunger'] <= 0 or DCCore.PlayerData.metadata['thirst'] <= 0 then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                SetEntityHealth(ped, currentHealth - math.random(5, 10))
            end
        end
    end
end)
