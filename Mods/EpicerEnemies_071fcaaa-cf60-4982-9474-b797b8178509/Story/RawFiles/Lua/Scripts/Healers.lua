local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "First AIDS",
        ID = "CATHE_Archetype_BeneHealer",
        Description = "When it's needed the most",
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
        Description = "She's not my sister",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true,
        },
        SpecialLogic = {
            "Ascension_Celestial_ACT_BHStacks",     -- Guardsman 4.1
            "Ascension_Celestial_MUTA_MagicShell",  -- Stag 4.2
            "Ascension_Celestial_MUTA_CleanseBH",   -- Goddess 4.2
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celectial",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    {
        Name = "Bambi maid",
        ID = "CATHE_Archetype_HindMaid",
        Description = "Baaaaah",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
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
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 2,
            }
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    {
        Name = "Good girl",
        ID = "CATHE_Archetype_CelestialBuffs",
        Description = "You know who you are",
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true
        },
        SpecialLogic = {
            "Ascension_Celestial_ACT_BHStacks",                   -- Guardsman 4.1
            "Ascension_Celestial_MUTA_ViolentStrikeForAlly",      -- Hyppo 4.2
            "Ascension_Celestial_MUTA_ArmorRestoInertiaScaling",  -- Hyppo 4.2
            "Ascension_Celestial_MUTA_MagicShell",                -- Stag 4.2
        },
        Artifacts = {
            "Artifact_Consecration",
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    -- Way too cancerous on Base ai
    {
        Name = "Koolaidman",
        ID = "CATHE_Archetype_CelestialBuffsWeak",
        Description = "You can’t harm a combat medic",
        Cost = 25,
        Weight = 0,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true
        },
        SpecialLogic = {
            "Ascension_Celestial_ACT_BHStacks",                   -- Guardsman 4.1
            "Ascension_Celestial_MUTA_ViolentStrikeForAlly",      -- Hyppo 4.2
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
