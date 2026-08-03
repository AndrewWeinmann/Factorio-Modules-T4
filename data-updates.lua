local moduleFamilies = {"speed", "productivity", "efficiency", "quality"}

for _, family in pairs(moduleFamilies) do
    local tier3Recipe = data.raw.recipe[family .. "-module-3"]
    local tier4Recipe = data.raw.recipe[family .. "-module-4"]
    if tier3Recipe and tier4Recipe then
        if tier3Recipe.categories then
            tier4Recipe.categories = table.deepcopy(tier3Recipe.categories)
        elseif tier3Recipe.category then
            tier4Recipe.category = tier3Recipe.category
        end
    end
end
