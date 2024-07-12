local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Zodiac",
        ID = "CATHE_Archetype_Zodiac",
        Description = FormatDescription("If she had only shut her mouth...", "Celestial on enemy Vulnerable 3"),
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_CelestialBonusReaction"] = true,
        },
        AllowedAIArchetypes = {
            ["healer"] = true,
            ["mage"] = true,
        },
        SpecialLogic = {
            "Ascension_Celestial_ACT_Offensive",  -- Champion 3.1
        },
        Artifacts = {
            "Artifact_Zodiac",
            "Artifact_Misery",
            "Artifact_BlackglassBrand",
        },
    },
}

RegisterEffects(effects)
