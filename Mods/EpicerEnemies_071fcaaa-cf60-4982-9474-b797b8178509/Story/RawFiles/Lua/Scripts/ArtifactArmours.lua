local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    -- Adamant - no
    -- Amaranthine Bulwark - no
    -- Face of the Fallen
    -- Infernal Contract - wither so no
    -- Prismatic Barrier - no
    -- Absence - no
    -- Consecration - per build
    {
        Name = "Desperation",
        ID = "CATHE_Artifact_Desperation",
        Description = "You do not realize what you have to lose, until so very little remains.",
        Cost = 7,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Desperation" },
    },
    {
        Name = "Godspeed",
        ID = "CATHE_Artifact_Godspeed",
        Description = "Righteousness finds its mark more swiftly than the arrow.",
        Cost = 5,
        Weight = 1,
        Visible = true,
        Priority = 20,
        RequiredSkills = { "Target_Haste" },
        Artifacts = { "Artifact_Godspeed" },
    },
    -- Kudzu - inconsistent
    -- Onslaught - no
    -- Salamander - no
    {
        Name = "Silkclimb",
        ID = "CATHE_Artifact_Silkclimb",
        Description = "Weaver departed, the net remains.",
        Cost = 5,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Silkclimb" },
    },
    -- Trample - no
    -- Vortex - no
    {
        Name = "Abyss_base",
        ID = "CATHE_Artifact_Abyss_base",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Abyss" },
        Keyword = { Keyword = "Paucity", BoonType = "Activator" },
    },
    {
        Name = "Abyss",
        ID = "CATHE_Artifact_Abyss",
        Description = "Older than darkness, crueler than time",
        Cost = 7,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Artifact_Abyss_base"] = true,
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    -- Antediluvian Carapace - no
    -- Bloodforge - no
    -- Bounty Hunter - no
    -- Coruscating Silks - no
    {
        Name = "Empyrean Vestments",
        ID = "CATHE_Artifact_EmpyreanVestments",
        Description = "Immutable as destiny.",
        Cost = 12,
        Weight = 0.2,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_EmpyreanVestments" },
    },
    -- The Jaguar - no
    -- Malice - no
    -- Mountain - no
    -- Necromancer's Raiment - no wither
    -- Nemesis - doesn't work
    -- Nihility - doesn't work
    -- Ouroboros - no
    -- Urgency - doesn't work
    -- The Vault - no
    -- Apothecary's Guile - doesn't work
    -- The Butcher's Will - no
    {
        Name = "Charity",
        ID = "CATHE_Artifact_Charity",
        Description = "When you affect a character with Benevolence, restore 10% of its total Vitality, Physical Armor, and Magic Armor.",
        Cost = 15,
        Weight = 1.5,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Charity" },
        Keyword = { Keyword = "Benevolence", BoonType = "Mutator" },
    },
    -- Charity - per build
    -- Dominion - no
    -- Ether Tide - no
    -- Fist of Decay - no
    -- Pyre - no
    -- Red Orison - no
    -- Winter's Grasp - no
    -- Giant's Skull - no
    -- Iron Maiden - no
    -- The Locust Crown - no wither
    -- Misery - per build
    {
        Name = "Serenity",
        ID = "CATHE_Artifact_Serenity",
        Description = "The stars always smile.",
        Cost = 12,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Artifacts = { "Artifact_Serenity" },
        Keyword = { Keyword = "Purity", BoonType = "Mutator" },
    },
    -- Smother - no workie
    -- Thorn halo - no
    -- Tundra - no
    -- Paragon - no VV
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
