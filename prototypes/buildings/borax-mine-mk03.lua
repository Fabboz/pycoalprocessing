RECIPE {
    type = "recipe",
    name = "borax-mine-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"borax-mine-mk02", 1},
        {"processing-unit", 20},
        {"niobium-plate", 30},
        {"electric-engine-unit", 6},
        {"express-transport-belt", 15}
    },
    results = {
        {"borax-mine-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "borax-mine-mk03",
    icon = "__pycoalprocessing__/graphics/icons/borax-mine-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-extraction",
    order = "a",
    place_result = "borax-mine-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "borax-mine-mk03",
    icon = "__pycoalprocessing__/graphics/icons/borax-mine-mk03.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "borax-mine-mk03"},
    fast_replaceable_group = "borax-mine",
    max_health = 700,
    resource_categories = {"borax"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    input_fluid_box = {
        production_type = "input-output",
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {position = {-5, 0}},
            {position = {5, 0}},
            {position = {0, 5}}
        }
    },
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 34,
    },
    energy_usage = "750kW",
    mining_power = 2,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -4.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pycoalprocessing__/graphics/entity/borax-mine/bottom-borax-mk03.png",
                width = 288,
                height = 144,
                line_length = 7,
                frame_count = 90,
                animation_speed = 0.25,
                shift = {0.0, 2.25}
            },
            {
                filename = "__pycoalprocessing__/graphics/entity/borax-mine/top-borax-mk03.png",
                width = 288,
                height = 144,
                line_length = 7,
                frame_count = 90,
                animation_speed = 0.25,
                shift = {0.0, -2.25}
            }
        }
    },
    input_fluid_patch_sprites = {
        north = {
            priority = "extra-high",
            filename = "__pycoalprocessing__/graphics/entity/borax-mine/N.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0.0)
        },
        east = {
            priority = "extra-high",
            filename = "__pycoalprocessing__/graphics/entity/borax-mine/E.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        },
        south = {
            priority = "extra-high",
            filename = "__pycoalprocessing__/graphics/entity/borax-mine/S.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        },
        west = {
            priority = "extra-high",
            filename = "__pycoalprocessing__/graphics/entity/borax-mine/W.png",
            line_length = 1,
            width = 288,
            height = 288,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, 0)
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/borax-mine.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/borax-mine.ogg", volume = 1.25},
        apparent_volume = 2.5
    }
}
