local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Procrastination",
        ID = "CATHE_Archetype_Abeyance",
        Description = "Not today",
        Cost = 30,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        KeywordStats = { "Abeyance" },
        Keyword = { Keyword = "Abeyance", BoonType = "Activator" },
    },
    {
        Name = "Procrastination plus",
        ID = "CATHE_Archetype_AbeyanceDamageOrder",
        Description = "Not tomorrow either",
        Cost = 10,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Abeyance_MUTA_DamageOrder",  -- Rhino 3.1
        },
        Keyword = { Keyword = "Abeyance", BoonType = "Mutator" },
    },
    {
        Name = "Procrastination plus plus",
        ID = "CATHE_Archetype_AbeyanceDropTiered",
        Description = "Also I'm hungry",
        Cost = 10,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Abeyance_MUTA_CleanseTiered1And2",  -- Chalice 5.1
        },
        Keyword = { Keyword = "Abeyance", BoonType = "Mutator" },
    },
}

RegisterEffects(effects)
