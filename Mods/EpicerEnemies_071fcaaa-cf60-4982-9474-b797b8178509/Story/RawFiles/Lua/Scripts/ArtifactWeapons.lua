local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    -- The Butcher's Disciple - no
    {
        Name = "The Chthonian",
        ID = "CATHE_Artifact_Cthonian",
        Description = "Survival of the fittest.",
        Cost = 14,
        Weight = 0.3,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["warrior"] = true,
            ["rogue"] = true,
        },
        Artifacts = { "Artifact_Chthonian" },
    },
    {
        Name = "Famine",
        ID = "CATHE_Artifact_Famine",
        Description = "Behold the black rider, with a pair of balances in his hand, to judge who should suffer and who should flourish.",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Famine" },
        Keyword = { Keyword = "Paucity", BoonType = "Mutator" },
    },
    -- Golem - no
    {
        Name = "Vertigo",
        ID = "CATHE_Artifact_Vertigo",
        Description = "I'll put it on your tab.",
        Cost = 7,
        Weight = 0.1,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["berserker"] = true,
            ["rogue"] = true,
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Artifacts = { "Artifact_Vertigo" },
        Keyword = { Keyword = "BasicAttack", BoonType = "Activator" },
    },
    {
        Name = "Convergence",
        ID = "CATHE_Artifact_Convergence",
        Description = "Focus.",
        Cost = 15,
        Weight = 1,
        Visible = false,
        Priority = 20,
        RequiredSkills = { "Projectile_LightningBolt" },
        Artifacts = { "Artifact_Convergence" },
        Keyword = { Keyword = "BasicAttack", BoonType = "Activator" },
    },
    {
        Name = "Expedition",
        ID = "CATHE_Artifact_Expedition",
        Description = "It's a dangerous business, going out your door.",
        Cost = 5,
        Weight = 1,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Expedition" },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },
    -- Hibernaculum	- later
    {
        Name = "Momentum",
        ID = "CATHE_Artifact_Momentum",
        Description = "A body in motion stays in motion, until it gets shot with this.",
        Cost = 12,
        Weight = 0.4,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        Artifacts = { "Artifact_Momentum", "Artifact_Desperation" },
    },
    -- Zenith - per build
    -- Cataclysm - per build
    -- Leper - useless
    -- Mirage - doesn't work
    -- Occam - no
    -- Thirst - crit so useless
    {
        Name = "Wraith",
        ID = "CATHE_Artifact_Wraith",
        Description = "Just as you escape, I have arrived.",
        Cost = 5,
        Weight = 0.2,
        Visible = false,
        Priority = 20,
        AllowedAIArchetypes = {
            ["rogue"] = true,
        },
        Artifacts = { "Artifact_Wraith" },
        Keyword = { Keyword = "BasicAttack", BoonType = "Activator" },
    },
    -- Crucible - no
    -- Glacier - later
    -- Goldforge - reactive armor so no
    -- Leviathan - won't work
    -- Malleus Maleficarum - won't work
    {
        Name = "Gluttony",
        ID = "CATHE_Artifact_Gluttony",
        Description = "Without satiety, appetite grows to madness.",
        Cost = 13,
        Weight = 0.1,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Gluttony" },
    },
    -- Impetus - no
    -- Lightspire - no
    -- Nightmare - no
    {
        Name = "Pestilence",
        ID = "CATHE_Artifact_Pestilence",
        Description = "Behold the white rider, who wears a fever crown, and cuts down kings without army or sword.",
        Cost = 13,
        Weight = 1,
        Visible = false,
        Priority = 20,
        RequiredSkills = { "Shout_Contamination" },
        Artifacts = { "Artifact_Pestilence" },
    },
    -- Cannibal - won't work
    -- Eclipse - no
    {
        Name = "Obelisk",
        ID = "CATHE_Artifact_Obelisk",
        Description = "While this pillar stands, your enemies shall fall.",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 20,
        RequiredSkills = { "Projectile_StaffOfMagus" },
        Artifacts = { "Artifact_Obelisk" },
    },
    -- The Savage - no
    -- The Zodiac - per build
    {
        Name = "Blackglass Brand",
        ID = "CATHE_Artifact_BlackglassBrand",
        Description = "A single blunder will suffice to burden blood with plague and ice.",
        Cost = 10,
        Weight = 2,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_BlackglassBrand" },
        ExtendedStats = {
            {
                StatID = "DodgeFatigue_AddAmount",
                Amount = -27
            }
        },
        FlexStats = {
            {
                Type = "Attribute",
                Stat = "FINESSE",
                Amount = 20
            },
        },
        Keyword = { Keyword = "Centurion", BoonType = "Mutator" },
    },
    {
        Name = "Gram, Sword of Grief",
        ID = "CATHE_Artifact_GramSwordOfGrief",
        Description = "Greatness at the cost of goodness.",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 20,
        RequiredSkills = { "Shout_Contamination" },
        Artifacts = { "Artifact_GramSwordOfGrief" },
    },
    {
        Name = "Judgement",
        ID = "CATHE_Artifact_Judgement",
        Description = "I AM THE LAW",
        Cost = 20,
        Weight = 1,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Judgement" },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "Lambent Blade",
        ID = "CATHE_Artifact_LambentBlade",
        Description = "Brighter than hope, swifter than defeat.",
        Cost = 5,
        Weight = 1,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_LambentBlade" },
        Keyword = { Keyword = "BasicAttack", BoonType = "Activator" },
    },
    -- Zeal - no
    -- Rod of Abeyance - no
    -- Rod of Command - no
    -- Rod of Conviction - volatile armor so no
    -- Pariah - too much power so no
    {
        Name = "Rapture_base",
        ID = "CATHE_Artifact_Rapture_base",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        Artifacts = { "Artifact_Rapture" },
        Keyword = { Keyword = "Purity", BoonType = "Activator" },
    },
    {
        Name = "Rapture",
        ID = "CATHE_Artifact_Rapture",
        Description = "Hide us from the face of the one who sits upon the throne.",
        Cost = 15,
        Weight = 1,
        Visible = false,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Artifact_Rapture_base"] = true,
        },
        Keyword = { Keyword = "Celestial", BoonType = "Mutator" },
    },
    {
        Name = "Sanguine Harvest",
        ID = "CATHE_Artifact_SanguineHarvest",
        Description = "The tranquil spirit reaps a mortal harvest.",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 20,
        RequiredSkills = { "Target_Restoration" },
        Prerequisites = {
            ["CATHE_Artifact_Rapture_base"] = true,
        },
        Artifacts = { "Artifact_SanguineHarvest" },
    },
}

RegisterEffects(effects)
