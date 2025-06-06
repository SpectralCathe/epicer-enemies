local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "VS Archer base",
        ID = "CATHE_Ascension_VSArcher_Base",
        Description = "",
        Cost = 15,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_ViolentStrike_ACT_DamageAtOnce",    -- Archer 4.1
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Activator" },
    },
    {
        Name = "Hurt more",
        ID = "CATHE_Archetype_VSArcher",
        Description = FormatDescription("What if I stab you a bit deeper?", "VS on dealing damage that exceeds 10% target’s Vitality."),
        Cost = 0,
        Weight = 1,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Ascension_VSArcher_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
            ["berserker"] = true,
            ["melee"] = true,
            ["rogue"] = true,
            ["ranger"] = true,
            ["ranged"] = true,
        },
    },

    {
        Name = "Out with a bang",
        ID = "CATHE_Archetype_HatchetVS",
        Description = FormatDescription("Totally calculated my AP", "VS on reaching 0 AP."),
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
        ID = "CATHE_Archetype_VSConqueror",
        Description = FormatDescription("...and cut and mutilate the innocent", "VS on using skills that cost 1 or more AP."),
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

    -- MUTATORS
    {
        Name = "vs Lust",
        ID = "CATHE_Archetype_VSAcid",
        Description = FormatDescription("You're so pretty under this armour...", "VS applies Acid"),
        Cost = 7,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Acid",  -- Hatchet 5.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Bleed",
        ID = "CATHE_Archetype_VSBleed",
        Description = FormatDescription("Someone likes it rough", "VS applies Bleeding"),
        Cost = 7,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Bleeding",  -- Hatchet 5.3
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Choking",
        ID = "CATHE_Archetype_VSSuffocating",
        Description = FormatDescription("Someone here likes it", "VS applies Suffocating"),
        Cost = 7,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Suffocating",  -- Hatchet 5.4
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "vs Fear",
        ID = "CATHE_Archetype_VSTerrified",
        Description = FormatDescription("We do have a safe word", "VS applies Terrified 2"),
        Cost = 8,
        Weight = 1,
        Visible = true,
        Priority = 20,
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_Terrified",  -- Hatchet 5.5
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
    {
        Name = "Scavenger",
        ID = "CATHE_Archetype_ArcherVSEleArrows",
        Description = FormatDescription("What pain will it take to satisfy?", "VS gives Elemental Arrowheads"),
        Cost = 4,
        Weight = 1,
        Visible = true,
        Priority = 20,
        AllowedAIArchetypes = {
            ["ranger"] = true,
            ["ranged"] = true,
        },
        SpecialLogic = {
            "Ascension_ViolentStrike_MUTA_EleArrowheads",  -- Archer 5.2
        },
        Keyword = { Keyword = "ViolentStrike", BoonType = "Mutator" },
    },
}

RegisterEffects(effects)
