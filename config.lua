Config = {}

Config.UpdateFrequency = 300 -- seconds interval between removing values

Config.Notifications = false -- notification when skill is added
Config.NotifyType = 'qb' -- notification type: '3d' for 3d Messagebox, 'qb' for QBCore notification, 'tnj' for tnj notification

Config.Debug = false -- debug print

Config.Skillmenu = "skills" -- skillmenu command

Config.UI = true -- set to false for qb-menu

Config.ShootingSkillChance = 33 -- higher this is the more the skill will update max is 100 lowest is 1

Config.ShootingSkillUpAmount = 0.1 --the amount the skill goes up when triggered

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

Config.BlackListedWeapons = { -- Blacklisted Weapons that will not increase players shooting skill
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`,
    `weapon_fertilizercan`,
    `weapon_flare`,
    `weapon_smokegrenade`,
    `weapon_ball`,
    `weapon_pipebomb`,
    `weapon_snowball`,
    `weapon_proxmine`,
    `weapon_stickybomb`,
    `weapon_molotov`,
    `weapon_bzgas`,
    `weapon_grenade`,
    `weapon_stone_hatchet`,
    `weapon_bread`,
    `weapon_handcuffs`,
    `weapon_garbagebag`,
    `weapon_briefcase_02`,
    `weapon_briefcase`,
    `weapon_poolcue`,
    `weapon_battleaxe`,
    `weapon_wrench`,
    `weapon_nightstick`,
    `weapon_switchblade`,
    `weapon_machete`,
    `weapon_knife`,
    `weapon_knuckle`,
    `weapon_hatchet`,
    `weapon_hammer`,
    `weapon_golfclub`,
    `weapon_flashlight`,
    `weapon_crowbar`,
    `weapon_bottle`,
    `weapon_bat`,
    `weapon_dagger`,
    `weapon_unarmed`,
    `weapon_flashlight`,
    `weapon_stungun`,
}