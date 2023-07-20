-- Single add job function which should only be used if you planning on adding a single job
exports('AddJob', function(jobName, job)
    if type(jobName) ~= "string" then
        return false, "invalid_job_name"
    end

    if DCCore.Shared.Jobs[jobName] then
        return false, "job_exists"
    end

    DCCore.Shared.Jobs[jobName] = job
    TriggerClientEvent('DCCore:Client:OnSharedUpdate', -1,'Jobs', jobName, job)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, "success"
end)

-- Multiple Add Jobs
exports('AddJobs', function(jobs)
    local shouldContinue = true
    local message = "success"
    local errorItem = nil
    for key, value in pairs(jobs) do
        if type(key) ~= "string" then
            message = 'invalid_job_name'
            shouldContinue = false
            errorItem = jobs[key]
            break
        end

        if DCCore.Shared.Jobs[key] then
            message = 'job_exists'
            shouldContinue = false
            errorItem = jobs[key]
            break
        end

        DCCore.Shared.Jobs[key] = value
    end

    if not shouldContinue then return false, message, errorItem end
    TriggerClientEvent('DCCore:Client:OnSharedUpdateMultiple', -1, 'Jobs', jobs)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, message, nil
end)

-- Single add item
exports('AddItem', function(itemName, item)
    if type(itemName) ~= "string" then
        return false, "invalid_item_name"
    end

    if DCCore.Shared.Items[itemName] then
        return false, "item_exists"
    end

    DCCore.Shared.Items[itemName] = item
    TriggerClientEvent('DCCore:Client:OnSharedUpdate', -1, 'Items', itemName, item)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, "success"
end)

-- Multiple Add Items
exports('AddItems', function(items)
    local shouldContinue = true
    local message = "success"
    local errorItem = nil
    for key, value in pairs(items) do
        if type(key) ~= "string" then
            message = "invalid_item_name"
            shouldContinue = false
            errorItem = items[key]
            break
        end

        if DCCore.Shared.Items[key] then
            message = "item_exists"
            shouldContinue = false
            errorItem = items[key]
            break
        end

        DCCore.Shared.Items[key] = value
    end

    if not shouldContinue then return false, message, errorItem end
    TriggerClientEvent('DCCore:Client:OnSharedUpdateMultiple', -1, 'Items', items)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, message, nil
end)

-- Single Add Gang
exports('AddGang', function(gangName, gang)
    if type(gangName) ~= "string" then
        return false, "invalid_gang_name"
    end
    if DCCore.Shared.Gangs[gangName] then
        return false, "gang_exists"
    end

    DCCore.Shared.Gangs[gangName] = gang
    TriggerClientEvent('DCCore:Client:OnSharedUpdate', -1, 'Gangs', gangName, gang)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, "success"
end)

-- Multiple Add Gangs
exports('AddGangs', function(gangs)
    local shouldContinue = true
    local message = "success"
    local errorItem = nil
    for key, value in pairs(gangs) do
        if type(key) ~= "string" then
            message = "invalid_gang_name"
            shouldContinue = false
            errorItem = gangs[key]
            break
        end

        if DCCore.Shared.Gangs[key] then
            message = "gang_exists"
            shouldContinue = false
            errorItem = gangs[key]
            break
        end
        DCCore.Shared.Gangs[key] = value
    end

    if not shouldContinue then return false, message, errorItem end
    TriggerClientEvent('DCCore:Client:OnSharedUpdateMultiple', -1, 'Gangs', gangs)
    TriggerEvent('DCCore:Server:UpdateObject')
    return true, message, nil
end)
