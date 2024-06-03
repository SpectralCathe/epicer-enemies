local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Furtive jihad",
        ID = "CATHE_Archetype_BomberSilkClimb",
        Description = "Gone like the wind!",
        Cost = 0,
        Weight = 1,
        Visible = false,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Artifact_Silkclimb"] = true,
        },
        AllowedAIArchetypes = {
            ["bomber"] = true,
        },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
