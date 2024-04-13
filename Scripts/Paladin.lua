local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Warden",
        ID = "CATHE_Archetype_CelestialSelfWardEncourage",
        Description = "Krieg?",
        Cost = 20,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["warrior"] = true,
        },
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        SpecialLogic = {
            "Ascension_Benevolence_ACT_AllyArmorToZero",             -- Fortress 3.1
            "Ascension_Benevolence_MUTA_GainNoStacks",               -- Goddess 5.1
            "Ascension_Celestial_ACT_BHStacks",                      -- Guardsman 4.1
            "Ascension_CenturionAndCelestial_MUTA_WardACTGenExtend", -- The Centurion 4.2
            "Ascension_Ward_MUTA_EncourageReaction",                 -- Champion 3.2
        },
        Artifacts = {
            "Artifact_Arcturus"
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 2,
            }
        },
        Keyword = { Keyword = "Ward", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end