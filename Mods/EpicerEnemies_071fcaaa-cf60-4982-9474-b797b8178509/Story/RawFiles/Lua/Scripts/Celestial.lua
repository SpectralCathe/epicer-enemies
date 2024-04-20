local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

---@type Features.EpicEnemies.Effect[]
local effects = {
    -- STATS
    {
        Name = "Celestial bonus reaction",
        ID = "CATHE_Stat_CelestialBonusReaction",
        Description = "+1 free Celestial reaction per round.",
        Cost = 3,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Celestial", BoonType = "Mutator" },
    },
    {
        Name = "Celestial 2 bonus reactions",
        ID = "CATHE_Stat_CelestialBonusReaction2",
        Description = "+2 free Celestial reactions per round.",
        Cost = 5,
        Weight = 0.1,
        Visible = true,
        Priority = 20,
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 2,
            }
        },
        Keyword = { Keyword = "Celestial", BoonType = "Mutator" },
    },

    -- ACTIVATORS
    {
        Name = "Celestial on B/H removal",
        ID = "CATHE_Ascension_CelestialBHRemoval",
        Description = "Celestial reactions can be performed on allies you can see when a friendly effect removes Battered or Harried from them.",
        Cost = 10,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Celestial_ACT_BHStacks",  -- Guardsman 4.1
        },
        Keyword = { Keyword = "Celestial", BoonType = "Activator" },
    },

    -- MUTATORS
    {
        Name = "Celestial activates Violent Strikes",
        ID = "CATHE_Ascension_CelestialVS",
        Description = "Celestial reactions activate Violent Strike for allies,",
        Cost = 10,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Celestial_MUTA_ViolentStrikeForAlly",  -- Hippo 4.2
        },
        Keyword = { Keyword = "Celestial", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
