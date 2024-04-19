local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Coach",
        ID = "CATHE_Archetype_VSOnCelestial",
        Description = "Go get 'em, tiger",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Archetype_Benevolence0Armor"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
            ["CATHE_Ascension_CelestialVS"] = true,
            ["CATHE_Stat_CelestialBonusReaction"] = true,
        },
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },
    {
        Name = "Warden",
        ID = "CATHE_Archetype_CelestialSelfWardEncourage",
        Description = "Krieg?",
        Cost = -5,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Ascension_CelestialBHRemoval"] = true,
            ["CATHE_Archetype_Benevolence0Armor"] = true,
            ["CATHE_Archetype_BenevolenceNoBH"] = true,
            ["CATHE_Stat_CelestialBonusReaction2"] = true,
        },
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        SpecialLogic = {
            "Ascension_CenturionAndCelestial_MUTA_WardACTGenExtend", -- The Centurion 4.2
            "Ascension_Ward_MUTA_EncourageReaction",                 -- Champion 3.2
        },
        Artifacts = {
            "Artifact_Arcturus"
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
