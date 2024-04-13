local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Furtive jihad",
        ID = "CATHE_Archetype_BomberSilkClimb",
        Description = "Gone like the wind!",
        Cost = 25,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["bomber"] = true,
        },
        Artifacts = {
            "Artifact_Silkclimb"
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
