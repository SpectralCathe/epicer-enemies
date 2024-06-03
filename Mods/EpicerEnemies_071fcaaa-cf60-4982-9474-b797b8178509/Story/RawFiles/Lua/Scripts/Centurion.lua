local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Pounder",
        ID = "CATHE_Archetype_CenturionStomp",
        Description = FormatDescription("I refuse to be brought down by you!", "Centurion on ally getting T2/T3, Battlestomps"),
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
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
