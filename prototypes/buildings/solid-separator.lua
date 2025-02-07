RECIPE {
    type = "recipe",
    name = "solid-separator",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"assembling-machine-1", 5},
        {"electronic-circuit", 30}, --updated bob basic-electronic-circuit-board
        {"steel-plate", 50},
        {"iron-plate", 20},
        {"iron-gear-wheel", 50} --bob brass-gear-wheel
    },
    results = {
        {"solid-separator", 1}
    }
}:add_unlock("separation")

ITEM {
    type = "item",
    name = "solid-separator",
    icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-cp-buildings-mk01",
    order = "x",
    place_result = "solid-separator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "solid-separator",
    icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "solid-separator"},
    fast_replaceable_group = "solid-separator",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.45, -3.45}, {3.45, 3.45}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"solid-separator"},
    crafting_speed = 0.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "150kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/solid-separator/solid-separator.png",
        width = 249,
        height = 298,
        frame_count = 20,
        line_length = 5,
        animation_speed = 1,
        shift = {0.37, -1.169}
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/solid-separator.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/solid-separator.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
