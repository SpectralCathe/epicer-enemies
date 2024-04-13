local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Jauffre",
        ID = "CATHE_Archetype_RogueDodgeturionTendies",
        Description = "Stop right there, criminal scum!",
        Cost = 35,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["rogue"] = true,
            ["warrior"] = true,
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_MissedByAttack",      -- Key 4.1
            "Ascension_Centurion_MUTA_SIRupturedTendons",  -- The Centurion 5.1
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Centurion",
                Amount = 2,
            }
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
