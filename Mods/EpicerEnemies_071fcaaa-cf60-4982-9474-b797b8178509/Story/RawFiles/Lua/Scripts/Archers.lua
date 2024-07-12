local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Finisher",
        ID = "CATHE_Archetype_PredatorVulture",
        Description = FormatDescription("Finish him off!", "1/round Predator when enemy loses armour or below 50% vitality. Gain crit with target missing vitality."),
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
        Description = FormatDescription("Warriors on wings!", "Predator on enemy 7 BH, VS on 10% vitality damage."),
        Cost = -7,
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
        Description = FormatDescription("Lost in Necrooo-palas", "Predator next to a corpse, VS on 10% vitality damage."),
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
        Description = FormatDescription("Watch them dance!", "Predator next to a corpse, spawns a Skitterer, Basic attack Occultist on ally summon death"),
        Cost = -13,
        Weight = 0.3,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorCorpse_Base"] = true,
            ["CATHE_Ascension_PredatorSkitterer_Base"] = true,
            ["CATHE_Archetype_OccultistSummonDeath"] = true,
            ["CATHE_Archetype_OccultistBasicAttack"] = true,
            ["CATHE_Stat_OccultistBonusReaction"] = true,
        },
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Artifacts = {
            "Artifact_Zenith",
            "Artifact_Expedition",
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
}

RegisterEffects(effects)
