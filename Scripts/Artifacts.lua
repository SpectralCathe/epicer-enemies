local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Momentum",
        ID = "CATHE_Archetype_ArtifactMomentum",
        Description = "A body in motion stays in motion, until it gets shot with this.",
        Cost = 12,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Artifacts = {
            "Artifact_Momentum",
            "Artifact_Desperation",
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
