TECHNOLOGY {
    type = "technology",
    name = "energy-2",
    icon = "__pycoalprocessing__/graphics/technology/energy-2.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"methanol-processing-2", "energy-1"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 45
    }
}
