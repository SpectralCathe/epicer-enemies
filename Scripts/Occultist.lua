local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Totemtanz",
        ID = "CATHE_Archetype_OccuTotems",
        Description = "Totems totems totems",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["mage"] = true,
        },
        Artifacts = {
            "Artifact_Fecundity"
        },
        SpecialLogic = {
            "Ascension_Occultist_ACT_EndOfTurnFreeOffHand",  -- Basilisk 3.1
            "Ascension_Occultist_ACT_AlliedSummonKilled",    -- Supplicant 3.2
            "Ascension_Occultist_MUTA_MakeTotem",            -- Supplicant 4.2
            "Ascension_Occultist_MUTA_TotemsAttack",         -- Ritual 5.1
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Occultist",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
