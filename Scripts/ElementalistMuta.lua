local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Kraken statuses",
        ID = "CATHE_Archetype_ElementalistMutaKraken51",
        Description = "And make it hurt",
        Cost = 10,
        Weight = 1,
        Visible = true,
        Priority = 10,
        SpecialLogic = {
            "Ascension_Elementalist_MUTA_DoTs",  -- Kraken 5.1
        },
        Keyword = { Keyword = "Elementalist", BoonType = "Mutator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
