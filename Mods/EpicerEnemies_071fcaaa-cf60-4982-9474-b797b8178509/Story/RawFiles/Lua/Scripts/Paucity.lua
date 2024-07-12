local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

---@type Features.EpicEnemies.Effect[]
local effects = {
    -- ACTIVATORS
    {
        Name = "Paucity 7 BH",
        ID = "CATHE_Ascension_Paucity7BH",
        Description = "Once per round, Paucity activates when you reach Battered or Harried 7 and above.",
        Cost = 6,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Paucity_ACT_BHStacks",  -- Hatchet 4.0
        },
        Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    },

    -- MUTATORS
    {
        Name = "Paucity Wither on basic attacks Base",
        ID = "CATHE_Ascension_PaucityWither_Base",
        Description = "If you have Paucity Active, apply Withered for 1 turn to enemies hit while performing a basic attack.",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        Keyword = { Keyword = "Wither", BoonType = "Activator" },
    },
    {
        Name = "Paucity Wither on basic attacks",
        ID = "CATHE_Ascension_PaucityWither",
        Description = "If you have Paucity Active, apply Withered for 1 turn to enemies hit while performing a basic attack.",
        Cost = 10,
        Weight = 0,
        Visible = false,
        Priority = 20,
        Prerequisites = {
            -- ["CATHE_Ascension_PaucityWither_Base"] = true,
        },
        SpecialLogic = {
            "Ascension_Paucity_MUTA_WitherACT_BasicAttack",  -- Wrath 4.1
        },
        Keyword = { Keyword = "Paucity", BoonType = "Mutator" },
    },

    -- EFFECTS
    {
        Name = "Oppression-suppression",
        ID = "CATHE_Effect_PaucityOnBHWither",
        Description = FormatDescription("I suck power from thee!", "Paucity on 7 BH, Paucity makes basic attacks apply Wither."),
        Cost = 0,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Ascension_Paucity7BH"] = true,
            ["CATHE_Ascension_PaucityWither_Base"] = true,
            ["CATHE_Ascension_PaucityWither"] = true,
        },
        Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    },
}

RegisterEffects(effects)
