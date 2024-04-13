local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Hurt more",
        ID = "CATHE_Archetype_ArcherVS",
        Description = "What if I stab you a bit deeper?",
        Cost = 15,
        Weight = 1,
        Visible = true,
        Priority = 15,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["rogue"] = true,
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_ViolentStrike_ACT_DamageAtOnce",    -- Archer 4.1
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Activator" },
    },
    {
        Name = "Out with a bang",
        ID = "CATHE_Archetype_HatchetVS",
        Description = "Totally calculated my AP",
        Cost = 10,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["rogue"] = true,
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_ViolentStrike_ACT_0AP",    -- Hatchet 4.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Activator" },
    },
    {
        Name = "And rip...",
        ID = "CATHE_Archetype_ConquerorVS",
        Description = "...and cut and mutilate the innocent",
        Cost = 30,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["rogue"] = true,
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_ViolentStrike_ACT_BasicOnHit",    -- Conqueror 3.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Activator" },
    },

    {
        Name = "vs Acid",
        ID = "CATHE_Archetype_VSAcid",
        Description = "You're so pretty under this armour...",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 10,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Acid",  -- Hatchet 5.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Bleeding",
        ID = "CATHE_Archetype_VSBleed",
        Description = "Someone likes it rough",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 10,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Bleeding",  -- Hatchet 5.3
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Choking",
        ID = "CATHE_Archetype_VSSuffocating",
        Description = "Someone here likes it",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 10,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Suffocating",  -- Hatchet 5.4
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Scary",
        ID = "CATHE_Archetype_VSTerrified",
        Description = "We do have a safe word",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 10,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Terrified",  -- Hatchet 5.5
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
