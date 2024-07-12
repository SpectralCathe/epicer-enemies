local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "The Black Knight",
        ID = "CATHE_Archetype_PaucityShroud",
        Description = FormatDescription("Tis but a scratch", "Paucity at 25% Vit, Black Shroud end of turn if active"),
        Cost = 2,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Artifact_Gluttony"] = true,
            ["CATHE_Artifact_Famine"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
            ["berserker"] = true,
            ["melee"] = true,
        },
        SpecialLogic = {
            "Ascension_Paucity_ACT_VitThreshold",        -- Manticore 4.1
            "Ascension_Paucity_MUTA_EmulateBlackShroud", -- Manticore 5.1
        },
    },
}

RegisterEffects(effects)
