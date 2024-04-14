local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    -- MUTATORS
    {
        Name = "Kraken statuses",
        ID = "CATHE_Archetype_ElementalistMutaKraken51",
        Description = "And make it hurt",
        Cost = 10,
        Weight = 5,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Elementalist_MUTA_DoTs",  -- Kraken 5.1
        },
        Keyword = { Keyword = "Elementalist", BoonType = "Mutator" },
    },

    -- EFFECTS
    {
        Name = "Fire support",
        ID = "CATHE_Archetype_ElementalistSupport",
        Description = "WORSHIP THE PILLAR OF FIRE!!!",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["mage"] = true,
        },
        SpecialLogic = {
            "Ascension_Elementalist_ACT_CenturionOrWeak3",  -- Enchantress 4.1
            "Ascension_Elementalist_ACT_PredatorOrVuln3",   -- Arcanist 4.1
        },
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Elementalist",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Elementalist", BoonType = "Activator" },
    },
    {
        Name = "Blood is fuel",
        ID = "CATHE_Archetype_ElementalistPurityAndEmulation",
        Description = "Ouch! That hurts!",
        Cost = 10,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Archetype_Prosperity"] = true,
            ["CATHE_Archetype_PurityOnVit"] = true,
            ["CATHE_Archetype_PurityOnProsperityLost"] = true,
        },
        AllowedAIArchetypes = {
            ["mage"] = true,
            ["warrior"] = true,
            ["melee"] = true,
        },
        SpecialLogic = {
            "Ascension_Elementalist_ACT_AirWater_AllySkills_MK2_HuntsWar", -- Pegasus 3.4
            "Ascension_Purity_MUTA_ElemStacksMinus",                       -- Enchantress 5.1
            "Ascension_Elementalist_MUTA_EmulateSkillSI",                  -- Arcanist 5.1
        },
        Keyword = { Keyword = "Elementalist", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
