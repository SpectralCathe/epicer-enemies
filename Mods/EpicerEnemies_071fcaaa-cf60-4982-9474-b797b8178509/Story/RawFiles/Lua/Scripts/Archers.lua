local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Finisher",
        ID = "CATHE_Archetype_PredatorVulture",
        Description = "Finish him off!",
        Cost = -5,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_Predator0Armor_Base"] = true,
            ["CATHE_Ascension_PredatorCritOnLow_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Warbird",
        ID = "CATHE_Archetype_PredatorFalcon",
        Description = "Warriors on wings!",
        Cost = 0,
        Weight = 2,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_VSArcher_Base"] = true,
            ["CATHE_Ascension_PredatorFalcon_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Undertaker",
        ID = "CATHE_Archetype_PredatorCorpses",
        Description = "Lost in Necrooo-palas",
        Cost = 0,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_VSArcher_Base"] = true,
            ["CATHE_Ascension_PredatorCorpse_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Artifacts = { "Artifact_NecromancersRaiment", },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Spider Queen",
        ID = "CATHE_Archetype_PredatorOccultistSkitters",
        Description = "Watch them dance!",
        Cost = -10,
        Weight = 0.3,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorCorpse_Base"] = true,
            ["CATHE_Ascension_PredatorSkitterer_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_Occultist_ACT_AlliedSummonKilled",  -- Supplicant 3.2
            "Ascension_Occultist_MUTA_NowBasicAttack",     -- Imp 5.1
        },
        Artifacts = {
            "Artifact_Zenith",
            "Artifact_Expedition",
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Occultist",
                Amount = 1,
            },
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
