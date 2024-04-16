local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Purity cd reduction",
        ID = "CATHE_Archetype_PurityCdReduction",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Purity_MUTA_CDReduc",
        },
        Keyword = { Keyword = "Purity", BoonType = "Mutator" },
    },

    {
        Name = "Borrowed time",
        ID = "CATHE_Archetype_PurityOnVit",
        Description = "Do that again.",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_Prosperity"] = true,
            ["CATHE_Archetype_PurityCdReduction"] = true,
        },
        SpecialLogic = {
            "Ascension_Purity_ACT_VitThreshold",
        },
        Keyword = { Keyword = "Purity", BoonType = "Activator" },
    },
    {
        Name = "Combat regeneration",
        ID = "CATHE_Archetype_PurityOnShieldsUp",
        Description = "Can’t even penetrate my defences!",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        RequiredSkills = {
            "Shout_RecoverArmour"
        },
        Prerequisites = {
            ["CATHE_Archetype_Prosperity"] = true,
            ["CATHE_Archetype_PurityCdReduction"] = true,
        },
        SpecialLogic = {
            "Ascension_Purity_ACT_ShieldsUp",
        },
        Keyword = { Keyword = "Purity", BoonType = "Activator" },
    },
    {
        Name = "Loss",
        ID = "CATHE_Archetype_PurityOnProsperityLost",
        Description = "...is this?",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_Prosperity"] = true,
            ["CATHE_Archetype_PurityCdReduction"] = true,
        },
        SpecialLogic = {
            "Ascension_Purity_ACT_MK2_ProsperityLost",
        },
        Keyword = { Keyword = "Purity", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
