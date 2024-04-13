local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Default Warrior Priority 20",
        ID = "CATHE_Archetype_DefaultWarriorPrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["warrior"] = true,
        },
    },
    {
        Name = "Default Melee Priority 20",
        ID = "CATHE_Archetype_DefaultMeleePrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["melee"] = true,
        },
    },
    {
        Name = "Default Berserker Priority 20",
        ID = "CATHE_Archetype_DefaultBerserkerPrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["berserker"] = true,
        },
    },

    {
        Name = "Default Base Priority 20",
        ID = "CATHE_Archetype_DefaultBasePrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
        },
    },

    {
        Name = "Default Rogue Priority 20",
        ID = "CATHE_Archetype_DefaultRoguePrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["rogue"] = true,
        },
    },

    {
        Name = "Default Mage Priority 20",
        ID = "CATHE_Archetype_DefaultMagePrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["mage"] = true,
        },
    },

    {
        Name = "Default RangerRanged Priority 20",
        ID = "CATHE_Archetype_DefaultRangerRangedPrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
    },

    {
        Name = "Default Healer Priority 20",
        ID = "CATHE_Archetype_DefaultHealerPrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["healer"] = true,
        },
    },

    {
        Name = "Default misc Priority 20",
        ID = "CATHE_Archetype_DefaultMiscPrio20",
        Description = "Boring.",
        Cost = 0,
        Weight = 2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["bazooka"] = true,
            ["bomber"] = true,
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
