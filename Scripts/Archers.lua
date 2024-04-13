local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Finisher",
        ID = "CATHE_Archetype_PredatorVulture",
        Description = "Finish him off!",
        Cost = 20,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_Predator_ACT_AllyAoO",                 -- Vulture 4.2
            "Ascension_Predator_MUTA_CritFromTargetLowLife",  -- Vulture 5.2
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Predator",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Falcon",
        ID = "CATHE_Archetype_PredatorFalcon",
        Description = "Warriors on wings!",
        Cost = 10,
        Weight = 2,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_Predator_ACT_BHStacks",          -- Falcon 4.2
            "Ascension_ViolentStrike_ACT_DamageAtOnce", -- Archer 4.1
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Predator",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Undertaker",
        ID = "CATHE_Archetype_PredatorCorpses",
        Description = "Lost in Necrooo-palas",
        Cost = 30,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_Predator_ACT_NearCorpseEndOfTurn",  -- Extinction 3.2
            "Ascension_ViolentStrike_ACT_DamageAtOnce",    -- Archer 4.1
        },
        Artifacts = {
            "Artifact_NecromancersRaiment",
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Predator",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Scavenger",
        ID = "CATHE_Archetype_ArcherVSEleArrows",
        Description = "What pain will it take to satisfy?",
        Cost = 20,
        Weight = 1,
        Visible = true,
        Priority = 10,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_EleArrowheads",  -- Archer 5.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
