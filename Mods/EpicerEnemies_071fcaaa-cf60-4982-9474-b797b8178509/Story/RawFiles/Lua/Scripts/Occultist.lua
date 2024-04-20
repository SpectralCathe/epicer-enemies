local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    -- STATS
    {
        Name = "Occultist bonus reaction",
        ID = "CATHE_Stat_OccultistBonusReaction",
        Description = "+1 free Occultist reaction per round.",
        Cost = 3,
        Weight = 0.2,
        Visible = false,
        Priority = 20,
        ExtendedStats = {
            {
                StatID = "FreeReactionCharge",
                Property1 = "Occultist",
                Amount = 1,
            }
        },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },

    -- ACTIVATORS
    {
        Name = "Occultist at the end of turn BASE",
        ID = "CATHE_Archetype_OccultistEndTurn_Base",
        Description = "At the end of your turn perform an Occultist reaction on the nearest non-totem enemy you can see.",
        Cost = 8,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_ACT_EndOfTurnFreeOffHand",  -- Basilisk 3.1
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist at the end of turn",
        ID = "CATHE_Archetype_OccultistEndTurn",
        Description = "At the end of your turn perform an Occultist reaction on the nearest non-totem enemy you can see.",
        Cost = 0,
        Weight = 0.3,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_OccultistEndTurn_Base"] = true,
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist on summon death",
        ID = "CATHE_Archetype_OccultistSummonDeath",
        Description = "Occultist reactions can be performed when an enemy you can see kills an allied summon.",
        Cost = 8,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_ACT_AlliedSummonKilled",  -- Supplicant 3.2
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist on Ataxia/Squelched T2/T3 Base",
        ID = "CATHE_Archetype_OccultistAtaxiaSquelched_Base",
        Description = "Occultist reactions can be performed when an ally applies tier II or III of Ataxia or Squelched to an enemy you can see.",
        Cost = 7,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_ACT_AtaxiaSquelched",  -- Key 4.2
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist on Ataxia/Squelched T2/T3",
        ID = "CATHE_Archetype_OccultistAtaxiaSquelched",
        Description = "Occultist reactions can be performed when an ally applies tier II or III of Ataxia or Squelched to an enemy you can see.",
        Cost = 0,
        Weight = 0.3,
        Visible = true,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_OccultistAtaxiaSquelched_Base"] = true,
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist on Subjugated/Terrified T2/T3",
        ID = "CATHE_Archetype_OccultistSubjugatedTerrified_Base",
        Description = "Occultist reactions can be performed when an ally applies tier II or III of Subjugated or Terrified to an enemy you can see.",
        Cost = 7,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_ACT_TerrifiedAndSubj2And3",  -- Vulture 4.1
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Occultist on Subjugated/Terrified T2/T3",
        ID = "CATHE_Archetype_OccultistSubjugatedTerrified",
        Description = "Occultist reactions can be performed when an ally applies tier II or III of Subjugated or Terrified to an enemy you can see.",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        Prerequisites = {
            ["CATHE_Archetype_OccultistSubjugatedTerrified_Base"] = true,
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },

    -- MUTATORS
    {
        Name = "Occultist creates totem",
        ID = "CATHE_Archetype_OccultistTotem",
        Description = "Occultist reactions summon a totem adjacent to the target.",
        Cost = 8,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_MUTA_MakeTotem",  -- Supplicant 4.2
        },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },
    {
        Name = "Occultist commands totems to attack",
        ID = "CATHE_Archetype_OccultistTotemAttack",
        Description = "Once per turn, when you perform an Occultist reaction on an enemy, your totems attempt to attack it. Allied totems that are owned by another character with this effect also attempt to attack.",
        Cost = 14,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_MUTA_TotemsAttack",  -- Ritual 5.1
        },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },
    {
        Name = "Occultist basic attack",
        ID = "CATHE_Archetype_OccultistBasicAttack",
        Description = "Occultist reactions count as basic attacks.",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_MUTA_NowBasicAttack",  -- Imp 5.1
        },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },
    {
        Name = "Occultist medusa",
        ID = "CATHE_Archetype_OccultistEmulateMedusa",
        Description = "1/round when you perform an Occultist reaction, emulate the effects of Petrifying Visage.",
        Cost = 10,
        Weight = 0,
        Visible = false,
        Priority = 20,
        SpecialLogic = {
            "Ascension_Occultist_MUTA_EmulatePetrifyingVisage",  -- Basilisk 4.1
        },
        Keyword = { Keyword = "Occultist", BoonType = "Mutator" },
    },

    -- EFFECT
    {
        Name = "Totemtanz",
        ID = "CATHE_Archetype_OccultistTotems",
        Description = FormatDescription("Totems totems totems", "Occultist on turn end and ally summon death, summons totem, 1/turn command totems to attack."),
        Cost = -3,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_OccultistBonusReaction"] = true,
            ["CATHE_Archetype_OccultistEndTurn_Base"] = true,
            ["CATHE_Archetype_OccultistSummonDeath"] = true,
            ["CATHE_Archetype_OccultistTotem"] = true,
            ["CATHE_Archetype_OccultistTotemAttack"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true,
            ["mage"] = true,
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
    {
        Name = "Gorgon",
        ID = "CATHE_Archetype_OccultistMedusa",
        Description = FormatDescription("I'll make you hard", "Occultist on Ataxia, Subjugated, Squelched and Terrified T2/T3, 1/round emulates Petrifying Visage."),
        Cost = -3,
        Weight = 1,
        Visible = true,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
            ["CATHE_Stat_OccultistBonusReaction"] = true,
            ["CATHE_Archetype_OccultistSubjugatedTerrified_Base"] = true,
            ["CATHE_Archetype_OccultistAtaxiaSquelched_Base"] = true,
            ["CATHE_Archetype_OccultistEmulateMedusa"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true,
            ["warrior"] = true,
        },
        Keyword = { Keyword = "Occultist", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
