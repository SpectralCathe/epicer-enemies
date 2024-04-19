local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    -- ACTIVATORS
    {
        Name = "Benevolence on 0 armor",
        ID = "CATHE_Archetype_Benevolence0Armor",
        Description = "Once per turn, activate Benevolence when an ally is damaged to 0 Physical or Magical Armor.",
        Cost = 5,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Benevolence_ACT_AllyArmorToZero",  -- Fortress 3.1
        },
        Keyword = { Keyword = "Benevolence", BoonType = "Activator" },
    },

    -- MUTATORS
    {
        Name = "Benevolence no stacks",
        ID = "CATHE_Archetype_BenevolenceNoBH",
        Description = "You no longer suffer stacks of Battered or Harried from Benevolence.",
        Cost = 10,
        Weight = 1,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Benevolence_MUTA_GainNoStacks",  -- Goddess 5.1
        },
        Keyword = { Keyword = "Benevolence", BoonType = "Mutator" },
    },
    {
        Name = "Benevolence heal and res",
        ID = "CATHE_Archetype_BenevolenceHealRes",
        Description = "Benevolence restores 15% of missing Vitality and grants +10% elemental resistances for 1 turn, to each target.",
        Cost = 7,
        Weight = 1,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Benevolence_MUTA_HealAndEleRes",  -- Pegasus 4.1
        },
        Keyword = { Keyword = "Benevolence", BoonType = "Mutator" },
    },
    {
        Name = "Benevolence emulate Celestial",
        ID = "CATHE_Archetype_BenevolenceEmulateCelestial",
        Description = "Benevolence emulates the Vitality restoration of your Celestial reaction.",
        Cost = 7,
        Weight = 1,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Benevolence_MUTA_EmulateCelestialHeal",  -- Goddess 4.1
        },
        Keyword = { Keyword = "Benevolence", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
