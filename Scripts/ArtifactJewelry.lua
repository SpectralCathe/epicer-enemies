local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Angel's Egg",
        ID = "CATHE_Artifact_AngelsEgg",
        Description = "Keep precious things inside you or you will lose them.",
        Cost = 15,
        Weight = 0.3,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_AngelsEgg" },
        Keyword = { Keyword = "Purity", BoonType = "Mutator" },
    },
    -- Arcturus - per build
    -- Austerity - no
    -- Carnality - no
    -- Dread - no VV
    -- Drog's Luck - no
    -- Exaltation - no
    -- Eye of the Storm - no
    {
        Name = "Fecundity",
        ID = "CATHE_Artifact_Fecundity",
        Description = "... Let the Earth bring forth ....",
        Cost = 7,
        Weight = 0.1,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Fecundity" },
    },
    {
        Name = "Ghostflame",
        ID = "CATHE_Artifact_Ghostflame",
        Description = "Eternal Vengeance",
        Cost = 7,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Ghostflame" },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },
    -- Prophecy - unreliable
    {
        Name = "Seraph",
        ID = "CATHE_Artifact_Seraph",
        Description = "Eternal Love",
        Cost = 5,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Seraph" },
        Keyword = { Keyword = "Celestial", BoonType = "Mutator" },
    },
    -- Wendigo - later
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
