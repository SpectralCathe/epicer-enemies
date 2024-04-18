local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Coach",
        ID = "CATHE_Archetype_VSOnCelestial",
        Description = "Go get 'em, tiger",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        SpecialLogic = {
            "Ascension_Benevolence_ACT_AllyArmorToZero",  -- Fortress 3.1
            "Ascension_Celestial_ACT_BHStacks",           -- Guardsman 4.1
            "Celestial_MUTA_ViolentStrikeForAlly",        -- Hippo 4.2
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
    {
        Name = "Warden",
        ID = "CATHE_Archetype_CelestialSelfWardEncourage",
        Description = "Krieg?",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
        },
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        SpecialLogic = {
            "Ascension_Benevolence_ACT_AllyArmorToZero",             -- Fortress 3.1
            "Ascension_Benevolence_MUTA_GainNoStacks",               -- Goddess 5.1
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
    {
        Name = "Symbiote",
        ID = "CATHE_Archetype_PredatorCelestialVS",
        Description = FormatDescription("Pleasure doing business with ya", "Celestial on BH removal, gives VS. Predator on ally VS (10 m range)."),
        Cost = -6,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
            ["CATHE_Stat_CelestialBonusReaction"] = true,
            ["CATHE_Ascension_CelestialVS"] = true,
            ["CATHE_Ascension_PredatorOnVS"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorRange10m"] = true,
        },
        RequiredSkills = { "Target_DualWieldingAttack" },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
