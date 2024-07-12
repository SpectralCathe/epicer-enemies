local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "First AIDS",
        ID = "CATHE_Archetype_BeneHealer",
        Description = FormatDescription("When it's needed the most", "Benevolence on ally 0 armour, incurs no BH, emulates Celestial, restores 15% missing vitality, gives 10% Ele res."),
        Cost = -8,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Archetype_Benevolence0Armor"] = true,
            ["CATHE_Archetype_BenevolenceNoBH"] = true,
            ["CATHE_Archetype_BenevolenceHealRes"] = true,
            ["CATHE_Archetype_BenevolenceEmulateCelestial"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true,
        },
        Keyword = { Keyword = "Benevolence", BoonType = "Activator" },
    },
    {
        Name = "Combat medic",
        ID = "CATHE_Archetype_GuardsmanHealer",
        Description = FormatDescription("She's not my sister", "Celestial on BH removal, apply regen, cleanse T1 and T2."),
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
            ["CATHE_Stat_CelestialBonusReaction"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true,
        },
        SpecialLogic = {
            "Ascension_Celestial_MUTA_MagicShell",  -- Stag 4.2
            "Ascension_Celestial_MUTA_CleanseBH",   -- Goddess 4.2
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    {
        Name = "Bambi maid",
        ID = "CATHE_Archetype_HindMaid",
        Description = FormatDescription("Baaaaah", "Celestial on ally Source spent, haste and cleanse T1 and T2"),
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_CelestialBonusReaction2"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true
        },
        SpecialLogic = {
            "Ascension_Celestial_ACT_AllySource",          -- Hind 4.1
            "Ascension_Celestial_ACT_MK2_NoVitThreshold",  -- Stag 3.1
            "Ascension_Celestial_MUTA_Haste",              -- Stag 4.1
            "Ascension_Celestial_MUTA_CleanseBH",          -- Goddess 4.2
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    {
        Name = "Good girl",
        ID = "CATHE_Archetype_CelestialBuffs",
        Description = FormatDescription("You know who you are", "Celestial on BH removal, apply VS, armour and life regen."),
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
            ["CATHE_Ascension_CelestialVS"] = true,
            ["CATHE_Stat_CelestialBonusReaction"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true
        },
        SpecialLogic = {
            "Ascension_Celestial_MUTA_ArmorRestoInertiaScaling",  -- Hyppo 4.2
            "Ascension_Celestial_MUTA_MagicShell",                -- Stag 4.2
        },
        Artifacts = {
            "Artifact_Consecration",
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    -- Way too cancerous on Base ai
    -- {
    --     Name = "Koolaidman",
    --     ID = "CATHE_Archetype_CelestialBuffsWeak",
    --     Description = "You can’t harm a combat medic",
    --     Cost = 25,
    --     Weight = 0,
    --     Visible = true,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["base"] = true
    --     },
    --     SpecialLogic = {
    --         "Ascension_Celestial_ACT_BHStacks",                   -- Guardsman 4.1
    --         "Ascension_Celestial_MUTA_ViolentStrikeForAlly",      -- Hyppo 4.2
    --     },
    --     Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    -- },
}

RegisterEffects(effects)
