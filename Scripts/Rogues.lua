local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Peacock",
        ID = "CATHE_Archetype_PredatorFanOfKnive",
        Description = "xexe pee kok",
        Cost = 40,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["rogue"] = true,
        },
        SpecialLogic = {
            "Ascension_Predator_ACT_BHStacks",       -- Falcon 4.2
            "Ascension_Predator_MUTA_EmulateFoKSI",  -- Manticore 5.3
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Predator",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    -- {
    --     Name = "Crouching manticore",
    --     ID = "CATHE_Archetype_RoguePaucityBHHide",
    --     Description = "Hidden dude",
    --     Cost = 25,
    --     Weight = 1,
    --     Visible = true,
    --     Priority = 20,
    --     AllowedAIArchetypes = {
    --         ["rogue"] = true,
    --     },
    --     SpecialLogic = {
    --         "Ascension_Paucity_ACT_BHStacks",  -- Hatchet 4.1
    --         "Ascension_Paucity_MUTA_Sneak",    -- Manticore 5.2
    --     },
    --     Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    -- },
    -- {
    --     Name = "Crouching manticore",
    --     ID = "CATHE_Archetype_RoguePaucityArmorsHide",
    --     Description = "Hidden dude",
    --     Cost = 25,
    --     Weight = 1,
    --     Visible = true,
    --     Priority = 20,
    --     AllowedAIArchetypes = {
    --         ["rogue"] = true,
    --     },
    --     SpecialLogic = {
    --         "Ascension_Paucity_ACT_MK2_ArmorDepleted",  -- Archer 4.3
    --         "Ascension_Paucity_MUTA_Sneak",             -- Manticore 5.2
    --     },
    --     Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    -- },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
