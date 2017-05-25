local Prototype = require("stdlib.prototype.prototype")

local pipes = {
    north =
    {
        filename = "__pycoalprocessing__/graphics/entity/soil-extractormk01/long-pipe-north.png",
        priority = "low",
        width = 30,
        height = 44,
    },
    south =
    {
        filename = "__pycoalprocessing__/graphics/entity/soil-extractormk01/pipe-south.png",
        priority = "extra-high",
        width = 40,
        height = 45,
    }
}

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "soil-extractormk01",
    energy_required = 10,
    enabled = true,
    ingredients =
    {
        {"burner-mining-drill", 2},
        {"electronic-circuit", 10}, --updated-bob basic-circuit-board
        {"iron-plate", 30},
        {"copper-cable", 5},
        {"iron-gear-wheel", 15},

    },
    result= "soil-extractormk01",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "soil-extractormk01",
    icon = "__pycoalprocessing__/graphics/icons/soil-extractormk01.png",
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "a-c[soil-extractormk01]",
    place_result = "soil-extractormk01",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "soil-extractormk01",
    icon = "__pycoalprocessing__/graphics/icons/soil-extractormk01.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "soil-extractormk01"},
    fast_replaceable_group = "soil-extractormk01",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.48, -3.48}, {3.48, 3.48}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"soil-extraction"},
    crafting_speed = 0.3,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01,
    },
    energy_usage = "400kW",
    ingredient_count = 2,

    animation =
    {
        filename = "__pycoalprocessing__/graphics/entity/soil-extractormk01/soil-extractormk01.png",
        width = 235,
        height = 266,
        frame_count = 30,
        line_length = 6,
        animation_speed = 0.8,
        shift = {0.16, -0.609},
    },

    fluid_boxes =
    {
        {
            production_type = "input",
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            pipe_picture=Prototype.Pipes.pictures("assembling-machine-3", {0,1}, {0,-1}, nil, nil, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {4.0, 0.0} }}
        },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pycoalprocessing__/sounds/soil-extractormk01.ogg" },
        idle_sound = { filename = "__pycoalprocessing__/sounds/soil-extractormk01.ogg", volume = 0.45 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
