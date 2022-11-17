-- sort keys into an array then iterate the sorted array and return key & value
local function pairsByKeys (t, f)
    local a = {}
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
    end
    return iter
end

local function createSkillMenu()
    skillMenu = {}
    if Config.UI then
        for k,v in pairsByKeys(Config.Skills) do
            skillMenu[#skillMenu + 1] = {
                    name = k,
                    icon = v['icon'],
                    level = v['Current']
            }
        end
        SendNUIMessage({
            action = "toggleMenu",
            skills = skillMenu
        })
        SetNuiFocus(true,true)
    else
        skillMenu[#skillMenu + 1] = {
            isHeader = true,
            header = 'Skills',
            isMenuHeader = true,
            icon = 'fas fa-chart-simple'
        }
        for k,v in pairsByKeys(Config.Skills) do
            skillMenu[#skillMenu + 1] = {
                header = ''.. k .. '',
                txt = ''..v['Current']..'%',
                icon = ''..v['icon']..'',
                params = {
                    args = {
                        v
                    }
                }
            }
        end
        exports['qb-menu']:openMenu(skillMenu)
    end
end

RegisterNUICallback('close', function()
    SendNUIMessage({action = "close"})
    SetNuiFocus(false)
end)

RegisterCommand(Config.Skillmenu, function()
    createSkillMenu()
end)
