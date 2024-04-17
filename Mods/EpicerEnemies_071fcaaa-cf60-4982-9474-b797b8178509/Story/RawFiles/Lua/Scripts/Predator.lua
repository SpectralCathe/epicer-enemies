local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

---@type Features.EpicEnemies.Effect[]
local effects = {
    -- STATS
    {
        Name = "Predator bonus reaction",
        ID = "CATHE_Stat_PredatorBonusReaction",
        Description = "+1 free Predator reaction per round.",
        Cost = 3,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Predator",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },

    -- ACTIVATORS
    {
        Name = "Predator 0armor Base",
        ID = "CATHE_Ascension_Predator0Armor_Base",
        Description = "Predator reactions can be performed, once per round, when an enemy you can see is damaged to zero Physical or Magic Armor, or while under 50% Vitality.",
        Cost = 10,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_ACT_AllyAoO",                 -- Vulture 4.2
            "Ascension_Predator_MUTA_CritFromTargetLowLife",  -- Vulture 5.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Predator Falcon Base",
        ID = "CATHE_Ascension_PredatorFalcon_Base",
        Description = "Predator reactions can be performed, once per round, when an enemy you can see reaches Battered or Harried 7 (or higher).",
        Cost = 15,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_ACT_BHStacks",          -- Falcon 4.2
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
    {
        Name = "Predator Corpse Base",
        ID = "CATHE_Ascension_PredatorCorpse_Base",
        Description = "At the end of your turn, perform a Predator reaction on the nearest enemy you can see within 8m of a corpse.",
        Cost = 15,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_ACT_NearCorpseEndOfTurn",  -- Extinction 3.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "Predator on VS Base",
        ID = "CATHE_Ascension_PredatorOnVS_Base",
        Description = "Predator reactions can be performed when an ally performs a Violent Strike on an enemy you can see.",
        Cost = 10,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_ACT_AllyViolentStrike",  -- Extinction 3.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },

    -- MUTATORS
    {
        Name = "Predator Crit on low life Base",
        ID = "CATHE_Ascension_PredatorCritOnLow_Base",
        Description = "While performing a Predator reaction, gain +1.5% Critical Strike per percent of target's missing Vitality, up to a maximum of +50%.",
        Cost = 10,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_CritFromTargetLowLife",  -- Vulture 5.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Predator Hemorrhage Base",
        ID = "CATHE_Ascension_PredatorHemorrhage_Base",
        Description = "Predator reactions apply Bleeding for 2 turns; if the target already has Bleeding, also apply Hemorrhage for 2 turns, which behaves identically to Bleeding.",
        Cost = 5,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_Hemorrhage",  -- Tiger 4.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Predator Slowed2 Base",
        ID = "CATHE_Ascension_PredatorSlowed2_Base",
        Description = "Predator reactions apply up to Slowed II for 2 turns.",
        Cost = 5,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_Slowed2",     -- Falcon 5.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Predator skitterer Base",
        ID = "CATHE_Ascension_PredatorSkitterer_Base",
        Description = "Twice per round, Predator reactions also summon a Boneshaped Skitterer adjacent to the target.",
        Cost = 10,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_SkittererConversion",  -- Extinction 4.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Predator FoK Base",
        ID = "CATHE_Ascension_PredatorFoK_Base",
        Description = "Twice per round your Predator reaction emulates the effects of Fan of Knives,",
        Cost = 25,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_EmulateFoKSI",  -- Extinction 4.2
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Predator range 10m",
        ID = "CATHE_Ascension_PredatorRange10m",
        Description = "Predator reaction range becomes 10m, unless already higher",
        Cost = 10,
        Weight = 0,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Predator_MUTA_Range10m",  -- Tiger 4.1
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },

    -- EFFECTS
    {
        Name = "Bleed for me",
        ID = "CATHE_Effect_PredatorStatuses",
        Description = "Is it that time of month again?",
        Cost = 0,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorHemorrhage_Base"] = true,
            ["CATHE_Ascension_PredatorSlowed2_Base"] = true,
        },
        Keyword = { Keyword = "Predator", BoonType = "Mutator" },
    },
    {
        Name = "Symbiote",
        ID = "CATHE_Archetype_PredatorCelestialVS",
        Description = "Pleasure doing business with ya",
        Cost = 20,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorOnVS_Base"] = true,
        },
        RequiredSkills = { "Target_DualWieldingAttack" },
        SpecialLogic = {
            "Ascension_Celestial_ACT_BHStacks",           -- Guardsman 4.1
            "Celestial_MUTA_ViolentStrikeForAlly",        -- Hippo 4.2
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Celestial",
                Amount = 1,
            },
        },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
