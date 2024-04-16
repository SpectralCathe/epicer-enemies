local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "The Black Knight",
        ID = "CATHE_Archetype_PaucityShroud",
        Description = "Tis but a scratch",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
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
        Artifacts = {
            "Artifact_Gluttony",
            "Artifact_Famine",
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
