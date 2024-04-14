local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Zodiac",
        ID = "CATHE_Archetype_Zodiac",
        Description = "If she had only shut her mouth...",
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
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
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 1,
            }
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
