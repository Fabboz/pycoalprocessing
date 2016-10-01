require("stdlib.event.event")

local Area=require("stdlib.area.area")

local function on_player_created(event)
  local player = game.players[event.player_index]

  local simple_stack =
  {
    "deconstruction-planner",
    "tailings-pond",
    "magic-wand",
    "creative-mode_fluid-source",
    "creative-mode_energy-source",
    "creative-mode_super-electric-pole",
    "construction-robot",
    --"power-armor-mk2",
  }

  for _, item in pairs(simple_stack) do
    if game.item_prototypes[item] then
      player.insert(item)
    end
  end

  --Put on power armor, install equipment
  local inv = player.get_inventory(defines.inventory.player_armor)
  inv.insert("power-armor-mk2")
  local armor = inv[1].grid
  armor.put{name="fusion-reactor-equipment"}
  armor.put{name="personal-roboport-equipment"}

end
Event.register(defines.events.on_player_created, on_player_created)

local function on_player_joined_game(event)
  local player = game.players[event.player_index]
  local surface = player.surface
  local area = {{-200, -200}, {200, 200}}
  local entities = surface.find_entities(area)
  for _, entity in pairs(entities) do
    if entity.name ~= "player" then
      entity.destroy()
    end
  end

  local tiles = {}
  for x, y in Area.spiral_iterate(area) do
    tiles[#tiles+1]={name="grass", position={x=x, y=y}}
  end
  surface.set_tiles(tiles, true)

  --player.clear_console()
end
Event.register(defines.events.on_player_joined_game, on_player_joined_game)
