local QBCore = exports['qb-core']:GetCoreObject()

FetchSkills = function()
    QBCore.Functions.TriggerCallback("skillsystem:fetchStatus", function(data)
        if data then
            for status, value in pairs(data) do
                if Config.Skills[status] then
                    Config.Skills[status]["Current"] = value["Current"]
                else
                    print("Removing: " .. status) 
                end
            end
    end
        RefreshSkills()
    end)
end

GetCurrentSkill = function(skill)
    return Config.Skills[skill]
end

--exports('GetCurrentSkill')

UpdateSkill = function(skill, amount)

    if not Config.Skills[skill] then
        print("Skill " .. skill .. " doesn't exist")
        return
    end

    local SkillAmount = Config.Skills[skill]["Current"]
    
    if SkillAmount + tonumber(amount) < 0 then
        Config.Skills[skill]["Current"] = 0
    elseif SkillAmount + tonumber(amount) > 100 then
        Config.Skills[skill]["Current"] = 100
    else
        Config.Skills[skill]["Current"] = SkillAmount + tonumber(amount)
    end

    RefreshSkills()

    if Config.Notifications and  tonumber(amount) > 0 then
        if Config.NotifyType == "3d" then
            Notification("~g~+" .. amount .. "% ~s~" .. skill)
        elseif Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("+" .. amount .. "% " .. skill)
        elseif Config.NotifyType == "tnj" then
            exports['tnj-notify']:Notify("+" .. amount .. "% " .. skill, "primary", 1500)
        end
    end
    TriggerServerEvent("skillsystem:update", json.encode(Config.Skills))
end


function round(num)
    return math.floor(num+.5)
end

RefreshSkills = function()
    for type, value in pairs(Config.Skills) do
        if Config.Debug then
            print(type .. ": " .. value['Current'])
        elseif Config.Debug and not Config.Skills[skill] then
            print("something went wrong")
        end
        if value["Stat"] then
            StatSetInt(value["Stat"], round(value["Current"]), true)
        end
    end
end

exports('CheckSkill', function(skill, val, hasskill)
    if Config.Skills[skill] then
        if Config.Skills[skill]["Current"] >= tonumber(val) then
            hasskill(true)
        else
            hasskill(false)
        end
    else
        print("Skill " .. skill .. " doesn't exist")
        hasskill(false)
    end
end)

MessageBox = function(text, alpha)
    if alpha > 255 then
        alpha = 255
    elseif alpha < 0 then
        alpha = 0
    end
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, math.floor(alpha))
    SetTextEdge(2, 0, 0, 0, math.floor(alpha))
    SetTextDropShadow()
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextScale(0.31, 0.31)
    AddTextComponentString(text)
    local factor = (string.len(text)) / 350
    local x = 0.015
    local y = 0.5
    local width = 0.05 
    local height = 0.025
    DrawText(x + (width / 2.0), y + (height / 2.0) - 0.01)
    DrawRect(x + (width / 2.0), y + (height / 2.0), width, height, 25, 25, 25, math.floor(alpha))
end

Notification = function(message)
    local alpha = 185

    for time = 1, 250 do
        Wait(1)

        if time >= 150 then
            alpha = alpha - 2
            if alpha <= 0 then
                alpha = 0
            end
        end
        MessageBox(message, alpha)
    end
end