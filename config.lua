Config = {}

Config.UpdateFrequency = 300 -- seconds interval between removing values

Config.Notifications = true -- notification when skill is added
Config.NotifyType = 'qb' -- notification type: '3d' for 3d Messagebox, 'qb' for QBCore notification, 'tnj' for tnj notification

Config.Debug = false -- debug print

Config.Skillmenu = "skills" -- skillmenu command

Config.Skills = {
    ["Stamina"] = {
        ["Current"] = 0, -- Default value 
        ["RemoveAmount"] = -0.3, -- % to remove when updating,
        ["Stat"] = "MP0_STAMINA", -- GTA stat hashname
        ['icon'] = 'fas fa-walking',
    },

    ["Strength"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.3,
        ["Stat"] = "MP0_STRENGTH",
        ['icon'] = 'fas fa-dumbbell',
    },

    ["Lung Capacity"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_LUNG_CAPACITY",
        ['icon'] = 'fas fa-heartbeat',
    },

    ["Shooting"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.1,
        ["Stat"] = "MP0_SHOOTING_ABILITY",
        ['icon'] = 'fas fa-bullseye',
    },

    ["Driving"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.5,
        ["Stat"] = "MP0_DRIVING_ABILITY",
        ['icon'] = 'fas fa-car-side',
    },

    ["Wheelie"] = {
        ["Current"] = 0,
        ["RemoveAmount"] = -0.2,
        ["Stat"] = "MP0_WHEELIE_ABILITY",
        ['icon'] = 'fas fa-wheelchair',
    }
}
