local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Pounder",
        ID = "CATHE_Archetype_CenturionStomp",
        Description = "I refuse to be brought down by you!",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["berserker"] = true,
            ["melee"] = true,
            ["warrior"] = true,
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_EnemyT3StatusOnAlly",   -- Rhino 3.2
            "Ascension_Centurion_MUTA_EmulateBattleStomp",   -- Rhino 4.2
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Centurion",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end