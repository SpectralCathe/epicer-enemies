local EpicEnemies = Mods.EpipEncounters.Epip.GetFeature("Feature_EpicEnemies")


Mods.EpipEncounters.Epip.ImportGlobals(_G)


function FormatDescription( textBig, textSmall )
    return Text.Format(textBig .. "<br>%s", {
        FormatArgs = {
            {
                Text = textSmall,
                FontType = Text.FONTS.ITALIC,
                Color = Color.LARIAN.GRAY,
            }
        }
    })
end


-- Defining archetype base effect and all "no archetype" archetypes
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Archetype base",
        ID = "CATHE_Archetype_Base",
        Description = "Archetype base effects ensuring proper point cost",
        Cost = 100,        -- Cost should be > 1/2 of enemy total points
        Weight = 0,        -- 0 weight so never appears naturally
        Visible = false,
        Priority = 100,    -- Priority here does not matter but make sure all high-level archetypes use the same
    },

    -- {
    --     Name = "Default Warrior Priority 100",
    --     ID = "CATHE_Archetype_DefaultWarriorPrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 0,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["warrior"] = true,
    --     },
    -- },
    -- {
    --     Name = "Default Melee Priority 100",
    --     ID = "CATHE_Archetype_DefaultMeleePrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 0,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["melee"] = true,
    --     },
    -- },
    -- {
    --     Name = "Default Berserker Priority 100",
    --     ID = "CATHE_Archetype_DefaultBerserkerPrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 0,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["berserker"] = true,
    --     },
    -- },

    {
        Name = "Default Base Priority 100",
        ID = "CATHE_Archetype_DefaultBasePrio100",
        Description = "Boring.",
        Cost = 0,
        Weight = 0.75,
        Visible = false,
        Priority = 100,
        Prerequisites = {
            ["CATHE_Archetype_Base"] = true,
        },
        AllowedAIArchetypes = {
            ["base"] = true,
        },
    },

    -- {
    --     Name = "Default Rogue Priority 100",
    --     ID = "CATHE_Archetype_DefaultRoguePrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 2,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["rogue"] = true,
    --     },
    -- },

    -- {
    --     Name = "Default Mage Priority 100",
    --     ID = "CATHE_Archetype_DefaultMagePrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 2,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["mage"] = true,
    --     },
    -- },

    -- {
    --     Name = "Default RangerRanged Priority 100",
    --     ID = "CATHE_Archetype_DefaultRangerRangedPrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 2,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["ranger"] = true,
    --         ["ranged"] = true,
    --     },
    -- },

    -- {
    --     Name = "Default Healer Priority 100",
    --     ID = "CATHE_Archetype_DefaultHealerPrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 0,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["healer"] = true,
    --     },
    -- },

    -- {
    --     Name = "Default misc Priority 100",
    --     ID = "CATHE_Archetype_DefaultMiscPrio100",
    --     Description = "Boring.",
    --     Cost = 0,
    --     Weight = 2,
    --     Visible = false,
    --     Priority = 100,
    --     Prerequisites = {
    --         ["CATHE_Archetype_Base"] = true,
    --     },
    --     AllowedAIArchetypes = {
    --         ["bazooka"] = true,
    --         ["bomber"] = true,
    --     },
    -- },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
