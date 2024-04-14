local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Dragon RAWR :3",
        ID = "CATHE_Archetype_CenturionDragon",
        Description = "Don’t stand in my safe space! :(",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Archetype_Defiance"] = true,
        },
        RequiredSkills = {
            "Target_DualWieldingAttack"
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_EndOfTurnDefiance",   -- Arena 3.1
            "Ascension_Centurion_MUTA_AdaptationStacks",   -- Gryphon 4.1
            "Ascension_Centurion_MUTA_EmulateDragonBlaze"  -- Dragon 5.3
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
    {
        Name = "BlyadSuka",
        ID = "CATHE_Archetype_CenturionTendies",
        Description = "Blood for the flayed twins!",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Archetype_Defiance"] = true,
        },
        RequiredSkills = {
            "Target_HeavyAttack"
        },
        SpecialLogic = {
            "Ascension_Centurion_ACT_EndOfTurnDefiance",     -- Arena 3.1
            "Ascension_Centurion_MUTA_SIRupturedTendons",    -- The Centurion 5.1
        },
        Keyword = { Keyword = "Centurion", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
