local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Jauffre",
        ID = "CATHE_Archetype_RogueDodgeturionTendies",
        Description = FormatDescription("Stop right there, criminal scum!", "Cent on dodge, gives tendies."),
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["rogue"] = true,
            ["warrior"] = true,
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_MissedByAttack",      -- Key 4.1
            "Ascension_Centurion_MUTA_SIRupturedTendons",  -- The Centurion 5.1
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Centurion",
                Amount = 2,
            }
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
    {
        Name = "The Drunken Fist",
        ID = "CATHE_Archetype_CenturionVertigo",
        Description = FormatDescription("We’ll get hit by you next time!", "Cent on dodge, high dodge and fatigue, low power."),
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["rogue"] = true,
            ["berserker"] = true,
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_MissedByAttack",  -- Key 4.1
        },
        Artifacts = {
            "Artifact_Vertigo",
            "Artifact_Desperation",
        },
        ExtendedStats = {
            {
                StatID = "DodgeFatigue_AddAmount",
                Amount = -57
            }
        },
        FlexStats = {
            {
                Type = "Attribute",
                Stat = "FINESSE",
                Amount = 25
            },
            {
                Type = "Attribute",
                Stat = "INTELLIGENCE",
                Amount = -10
            },
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
}

RegisterEffects(effects)
