local QBCore = exports['qb-core']:GetCoreObject()

local function createSkillMenu()
    skillMenu = {}
    skillMenu[#skillMenu + 1] = {
        isHeader = true,
        header = 'Skills',
        isMenuHeader = true,
    }
    for k,v in pairs(Config.Skills) do
        skillMenu[#skillMenu + 1] = {
            header = ''.. k .. '',
            txt = ''..v['Current']..'%',
            params = {
                args = {
                    v
                }
            }
        }
    end
    exports['qb-menu']:openMenu(skillMenu)
end
    
RegisterCommand(Config.Skillmenu, function()
    createSkillMenu()
end)
