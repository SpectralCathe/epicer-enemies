local EpicEnemies = Epip.GetFeature("Feature_EpicEnemies")

-- List of all Cathes's epicer effects
---@type Features.EpicEnemies.Effect[]
local effects = {
    {
        Name = "Prosperity",
        ID = "CATHE_Archetype_Prosperity",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        KeywordStats = { "Prosperity" },
        Keyword = { Keyword = "Prosperity", BoonType = "Activator" },
    },
    {
        Name = "Defiance",
        ID = "CATHE_Archetype_Defiance",
        Description = "",
        Cost = 0,
        Weight = 0,
        Visible = false,
        Priority = 20,
        KeywordStats = { "Defiance" },
        Keyword = { Keyword = "Defiance", BoonType = "Activator" },
    },
}

for _,effect in ipairs(effects) do
    EpicEnemies.RegisterEffect(effect.ID, effect)
end
