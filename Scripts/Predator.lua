local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Spider Queen",
        ID = "CATHE_Archetype_PredatorOccultistSkitters",
        Description = "Watch them dance!",
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_Predator_ACT_NearCorpseEndOfTurn",  -- Extinction 3.2
            "Ascension_Predator_MUTA_SkittererConversion", -- Extinction 4.2
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
                Property1 = "Predator",
                Amount = 1,
            },
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
