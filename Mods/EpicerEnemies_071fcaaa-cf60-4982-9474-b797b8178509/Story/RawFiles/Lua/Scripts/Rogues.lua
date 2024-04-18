local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Peacock",
        ID = "CATHE_Archetype_PredatorFanOfKnive",
        Description = FormatDescription("Ever-opening flower", "Predator on enemy 7 BH, 2/round Fan of Knives on Predator (10 m range)"),
        Cost = 0,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_PredatorBonusReaction"] = true,
            ["CATHE_Ascension_PredatorFalcon_Base"] = true,
            ["CATHE_Ascension_PredatorRange10m"] = true,
            ["CATHE_Ascension_PredatorFoK_Base"] = true,
        },
        RequiredSkills = { "Target_DualWieldingAttack" },
        Keyword = { Keyword = "Predator", BoonType = "Activator" },
    },
    {
        Name = "A bomb?",
        ID = "CATHE_Archetype_CataclysmMeme",
        Description = "Oh my god, JC, a bomb!",
        Cost = 45,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = { ["rogue"] = true, },
        SpecialLogic = {
            "Ascension_Purity_ACT_VitThreshold",          -- Rabbit 4.2
            "Ascension_Purity_MUTA_EmulateSpontCombSI",   -- Nymph 5.3
            "Ascension_Centurion_MUTA_EmulateSupernova",  -- Hope 4.1
        },
        Artifacts = {
            "Artifact_AngelsEgg",
            "Artifact_Cataclysm",
        },
        Keyword = { Keyword = "Purity", BoonType = "Activator" },
    },
    {
        Name = "Crouching manticore",
        ID = "CATHE_Archetype_RoguePaucityBHHide",
        Description = "Hidden dude",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["rogue"] = true,
        },
        SpecialLogic = {
            "Ascension_Paucity_ACT_BHStacks",              -- Hatchet 4.1
            "Ascension_Paucity_MUTA_Sneak_NoWeaponCheck",  -- Manticore 5.2
        },
        Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    },
    {
        Name = "This isn't happening!",
        ID = "CATHE_Archetype_RoguePaucityArmorsHide",
        Description = "Aaand he's gone",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["rogue"] = true,
        },
        SpecialLogic = {
            "Ascension_Paucity_ACT_MK2_ArmorDepleted",     -- Archer 4.3
            "Ascension_Paucity_MUTA_Sneak_NoWeaponCheck",  -- Manticore 5.2
        },
        Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
