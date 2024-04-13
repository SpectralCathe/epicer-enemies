local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Fire support",
        ID = "CATHE_Archetype_ElementalistSupport",
        Description = "WORSHIP THE PILLAR OF FIRE!!!",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 20,
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
        Cost = 40,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["mage"] = true,
            ["warrior"] = true,
            ["melee"] = true,
        },
        SpecialLogic = {
            "Ascension_Elementalist_ACT_AirWater_AllySkills_MK2_HuntsWar", -- Pegasus 3.4
            "Ascension_Purity_ACT_VitThreshold",                           -- Huntress 4.2
            "Ascension_Purity_ACT_MK2_ProsperityLost",                     -- Huntress 4.2
            "Ascension_Purity_MUTA_ElemStacksMinus",                       -- Enchantress 5.1
            "Ascension_Elementalist_MUTA_EmulateSkillSI",                  -- Arcanist 5.1
        },
        Keyword = { Keyword = "Elementalist", BoonType = "Activator" },
        KeywordStats = { "Prosperity" }
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end