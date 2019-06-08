RECIPE {
    type = "recipe",
    name = "classifier",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"assembling-machine-1", 5},
        {"electronic-circuit", 10}, --bob brass-bearing
        {"transport-belt", 30},
        {"iron-plate", 20}, --bob titanium-plate
        {"iron-gear-wheel", 50} --bob brass-bearing
    },
    results = {
        {"classifier", 1}
    }
}:add_unlock("separation")

ITEM {
    type = "item",
    name = "classifier",
    icon = "__pycoalprocessing__/graphics/icons/classifier.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-cp-buildings-mk01",
    order = "f",
    place_result = "classifier",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "classifier",
    icon = "__pycoalprocessing__/graphics/icons/classifier.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "classifier"},
    fast_replaceable_group = "classifier",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.45, -3.45}, {3.45, 3.45}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"classifier"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "170kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/classifier/classifier.png",
        width = 256,
        height = 257,
        frame_count = 34,
        line_length = 8,
        animation_speed = 0.9,
        shift = {0.495, -0.48}
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/classifier.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/classifier.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
