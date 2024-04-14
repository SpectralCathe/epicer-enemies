local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Calcification",
        ID = "CATHE_Archetype_WardDamageBuffer",
        Description = "My skin turns to bone!",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Ward_ACT_DamageBuffer",
        },
        Keyword = { Keyword = "Ward", BoonType = "Activator" },
    },
    {
        Name = "Lignification",
        ID = "CATHE_Archetype_WardOnCrit",
        Description = "Only makes me harder!",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Ward_ACT_MK2_CritByEnemy",
        },
        Keyword = { Keyword = "Ward", BoonType = "Activator" },
    },
    {
        Name = "Equalizer",
        ID = "CATHE_Archetype_WardAdaptation",
        Description = "Like water",
        Cost = 15,
        Weight = 5,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Ward_MUTA_AdaptationStacks",
        },
        Keyword = { Keyword = "Ward", BoonType = "Mutator" },
    },
    {
        Name = "Noi",
        ID = "CATHE_Archetype_WardAdaptation",
        Description = "You really shook up my internal organs!",
        Cost = 15,
        Weight = 5,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Ward_MUTA_HealAndRemoveBHStacks",
        },
        Keyword = { Keyword = "Ward", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
