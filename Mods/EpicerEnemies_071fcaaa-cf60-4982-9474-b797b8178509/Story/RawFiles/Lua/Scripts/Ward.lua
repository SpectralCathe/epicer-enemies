local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Calcification",
        ID = "CATHE_Archetype_WardDamageBuffer",
        Description = FormatDescription("My skin turns to bone!", "Ward on accumulating 20% vitality damage."),
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
        Description = FormatDescription("Only makes me harder!", "Ward when hit with a critical strike."),
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
        Name = "Equalizer Base",
        ID = "CATHE_Archetype_WardAdaptation_Base",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Ward_MUTA_AdaptationStacks",
        },
        Keyword = { Keyword = "Adaptation", BoonType = "Activator" },
    },
    {
        Name = "Equalizer",
        ID = "CATHE_Archetype_WardAdaptation",
        Description = FormatDescription("Like water", "Adaptation on ward"),
        Cost = 15,
        Weight = 5,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_WardAdaptation_Base"] = true,
        },
        Keyword = { Keyword = "Ward", BoonType = "Mutator" },
    },
    {
        Name = "Noi",
        ID = "CATHE_Archetype_WardAdaptation",
        Description = FormatDescription("You really shook up my internal organs!", "Ward recovers vitality and removes 1 BH."),
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
