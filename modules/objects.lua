function log(group, msg)
    api_log(group, msg)
end

function define_objects()
-- Apiflora Bee Creator
api_define_menu_object({
  id = "apiflora_machine",
  name = "Apiflora Infuser",
  category = "Beekeeping",
  tooltip = "Let's you infuse bees with flowers to create new bees!",
  layout = {
    {16, 18, "Input", {"bee"}},
    {16, 40, "Input", {"flowerX"}},
    {107, 28, "Output"},
    {7, 66},
    {30, 66},
    {53, 66},
    {76, 66},
    {99, 66},
    {122, 66},
  },
  buttons = {"Help", "Target", "Close"},
  info = {
    {"1. Input", "GREEN"},
    {"2. Output", "RED"},
    {"3. Extra Storage", "WHITE"},
  },
  tools = {"mouse1", "hammer1"},
  placeable = true
  }, "sprites/apiflora/apiflora_item.png", "sprites/apiflora/apiflora_menu.png", {
    define = "apiflora_define", -- defined in "scripts.lua" as a function
    draw = "apiflora_draw", -- defined in "scripts.lua" as a function
    tick = "apiflora_tick", -- defined in "scripts.lua" as a function
    change = "apiflora_change" -- defined in "scripts.lua" as a function
  })

  local ai_recipe = {
    {item = "planks", amount = 10},
    {item = "bottle", amount = 1},
}
  
  api_define_recipe("t2", "apiflora_machine", ai_recipe, 1)

  -- Flower Cabinet
  api_define_menu_object({
    id = "flora_cabinet",
    name = "Flower Cabinet",
    category = "Storage",
    tooltip = "A cabinet to store your flowers in!",
    layout = {
      -- Row 1
      {7, 17, "Input", {"flowerX"}},
      {30, 17, "Input", {"flowerX"}},
      {53, 17, "Input", {"flowerX"}},
      {76, 17, "Input", {"flowerX"}},
      {99, 17, "Input", {"flowerX"}},
      {122, 17, "Input", {"flowerX"}},
      -- Row 2
      {7, 40, "Input", {"flowerX"}},
      {30, 40, "Input", {"flowerX"}},
      {53, 40, "Input", {"flowerX"}},
      {76, 40, "Input", {"flowerX"}},
      {99, 40, "Input", {"flowerX"}},
      {122, 40, "Input", {"flowerX"}},
      -- Row 3
      {7, 63, "Input", {"flowerX"}},
      {30, 63, "Input", {"flowerX"}},
      {53, 63, "Input", {"flowerX"}},
      {76, 63, "Input", {"flowerX"}},
      {99, 63, "Input", {"flowerX"}},
      {122, 63, "Input", {"flowerX"}},
      -- Row 4
      {7, 86, "Input", {"flowerX"}},
      {30, 86, "Input", {"flowerX"}},
      {53, 86, "Input", {"flowerX"}},
      {76, 86, "Input", {"flowerX"}},
      {99, 86, "Input", {"flowerX"}},
      {122, 86, "Input", {"flowerX"}}
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Storage", "WHITE"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true
    }, "sprites/decor/flora_cabinet.png", "sprites/decor/flora_cabinet_menu.png", {})

    local fc_recipe = {
      {item = "planks", amount = 10},
      {item = "flora_glass", amount = 4}
  }
    
    api_define_recipe("t2", "flora_cabinet", fc_recipe, 1)



  -- Items
  local res api_define_item({
      id = "bamboo_stick",
      name = "Bamboo Stick",
      category = "Resource",
      tooltip = "A cut peice of bamboo, can be used to craft things.",
      shop_key = false,
      shop_buy = 0,
      shop_sell = 0
  }, "/sprites/items/bamboo_stick.png")

  api_log("Bamboo Stick defined", res)



  -- Bee Special Produce
  local res api_define_item({
    id = "lavender_oil",
    name = "Lavender Oil",
    category = "Beekeeping",
    tooltip = "A pure drop of oil from a lavender flower, highly sought after by essential oil companies.",
    shop_key = false,
    shop_buy = 5,
    shop_sell = 5,
    bee_lore = "A pure drop of oil from a lavender flower, highly sought after by essential oil companies."
  }, "sprites/items/lavender_oil.png")

  api_log("Lavender Oil defined", res)

  local res api_define_item({
    id = "orchid_petal",
    name = "Orchid Petal",
    category = "Beekeeping",
    tooltip = "A petal from the Port Apico Ground Orchid, highly prized for its use in cosmetics and perfume.",
    shop_key = false,
    shop_buy = 15,
    shop_sell = 15,
    bee_lore = "A petal from the Port Apico Ground Orchid, highly prized for its use in cosmetics and perfume."
  }, "sprites/items/orchid_petal.png")

  api_log("Orchid Petal defined", res)

  local res api_define_item({
    id = "glass",
    name = "Glass",
    category = "Resource",
    tooltip = "A glass fragment produced by the glass bee. Used in the production of glass items.",
    shop_key = false,
    shop_buy = 1,
    shop_sell = 1,
    bee_lore = "A glass fragment produced by the glass bee. Used in the production of glass items."
  }, "sprites/items/glass.png")

  -- Walls
  local res api_define_wall({
    id = 20,
    name = "Bamboo Wall"
    }, "sprites/placeables/bamboo_wall.png")
    
  local bw_recipe = {
      {item = "flora_bamboo_stick", amount = 5}
  }
    
    api_define_recipe("t1", "wall20", bw_recipe, 4)
    
    api_log("Bamboo Wall Defined", res)

    --[[local res api_define_wall({
      id = 21,
      name = "Floral Wall"
      }, "sprites/placeables/floral_wall.png")
      
      api_log("Bamboo Wall Defined", res)--]]

  -- Decor 
  local res api_define_object({
    id = "gnome",
    name = "Garden Gnome",
    category = "Decoration",
    tooltip = "A garden gnome to protect your plants.",
    shop_key = false,
    pickable = true,
    place_grass = true,
    shop_buy = 15,
    shop_sell = 15,
    item_sprite = "/sprites/decor/gnome_item.png"
  }, "/sprites/decor/gnome.png")


  api_log("Garden Gnome defined", res)

  -- Small Flower Boxes
  api_define_menu_object({
    id = "small_flowerbox01",
    name = "Small Wood Planter",
    category = "Furniture",
    tooltip = "A small planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/small_flowerbox01_inventory.png"
  }, "sprites/decor/small_flowerbox01.png", "sprites/decor/small_flowerbox_menu.png", {
  },
  "draw_table")

  local small_flowerbox1_recipe = {
    {item = "log", amount = 5}
  }

  api_define_recipe("t2", "flora_small_flowerbox01", small_flowerbox1_recipe, 1)

  api_define_menu_object({
    id = "small_flowerbox02",
    name = "Small Stone Planter",
    category = "Furniture",
    tooltip = "A small planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/small_flowerbox02_inventory.png"
  }, "sprites/decor/small_flowerbox02.png", "sprites/decor/small_flowerbox_menu.png", {
  },
  "draw_table")

  local small_flowerbox1_recipe = {
    {item = "stone", amount = 5}
  }

  api_define_recipe("t2", "flora_small_flowerbox02", small_flowerbox1_recipe, 1)


  -- Regular Flower Boxes
  api_define_menu_object({
    id = "flowerbox01",
    name = "Wooden Planter",
    category = "Furniture",
    tooltip = "A planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
      {38, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/flowerbox01_inventory.png"
  }, "sprites/decor/flowerbox01.png", "sprites/decor/flowerbox_menu.png", {
  },
  "draw_table2")

  local flowerbox1_recipe = {
    {item = "log", amount = 10}
  }

  api_define_recipe("t2", "flora_flowerbox01", flowerbox1_recipe, 1)

  api_define_menu_object({
    id = "flowerbox02",
    name = "Stone Planter",
    category = "Furniture",
    tooltip = "A planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
      {38, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/flowerbox02_inventory.png"
  }, "sprites/decor/flowerbox02.png", "sprites/decor/flowerbox_menu.png", {
  },
  "draw_table2")

  local flowerbox2_recipe = {
    {item = "stone", amount = 10}
  }

  api_define_recipe("t2", "flora_flowerbox02", flowerbox2_recipe, 1)

  -- Large Flower Boxes
  api_define_menu_object({
    id = "large_flowerbox01",
    name = "Large Wooden Planter",
    category = "Furniture",
    tooltip = "A large planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
      {38, 17},
      {66, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/large_flowerbox01_inventory.png"
  }, "sprites/decor/large_flowerbox01.png", "sprites/decor/large_flowerbox_menu.png", {
  },
  "draw_table3")

  local large_flowerbox1_recipe = {
    {item = "log", amount = 15}
  }

  api_define_recipe("t2", "flora_large_flowerbox01", large_flowerbox1_recipe, 1)

  api_define_menu_object({
    id = "large_flowerbox02",
    name = "Large Stone Planter",
    category = "Furniture",
    tooltip = "A large planter to plant flowers in! (NOTE: Bees will not visit these flowers!)",
    shop_buy = 0,
    shop_sell = 0,
    layout = {
      {10, 17},
      {38, 17},
      {66, 17},
    },
    buttons = {"Help", "Target", "Close"},
    info = {
      {"1. Flower Placement", "GREEN"},
    },
    tools = {"mouse1", "hammer1"},
    placeable = true,
    item_sprite = "sprites/decor/large_flowerbox02_inventory.png"
  }, "sprites/decor/large_flowerbox02.png", "sprites/decor/large_flowerbox_menu.png", {
  },
  "draw_table3")

  local large_flowerbox2_recipe = {
    {item = "stone", amount = 15}
  }

  api_define_recipe("t2", "flora_large_flowerbox02", large_flowerbox2_recipe, 1)--]]

  -- Misc. Recipes    
  local bottle_recipe = {
    {item = "flora_glass", amount = 1}
  }

  api_define_recipe("t5", "bottle", bottle_recipe, 3)      

  local gw_recipe = {
    {item = "flora_glass", amount = 2}
  }

  api_define_recipe("t1", "wall8", gw_recipe, 4)
end

-- Flowerbox Draw Function
function draw_table(obj_id)
  obj_inst = api_get_inst(obj_id)
  spr_table = api_get_sprite(obj_inst["oid"])

  if api_get_highlighted("obj") == obj_id then
    api_draw_sprite(spr_table, 1, obj_inst["x"]-1, obj_inst["y"]-1)
  else
    api_draw_sprite(spr_table, 0, obj_inst["x"]-1, obj_inst["y"]-1)
  end

  item1 = api_get_slot(obj_inst["menu_id"], 1)["item"]
  item1_sprite = api_get_sprite("sp_" .. item1)
  if item1 ~= "" then
    if item1 == "flora_bamboo_plant" then
      api_draw_sprite(item1_sprite, 0, obj_inst["x"]-2, obj_inst["y"]-25)
    elseif item1 == "acorn1" then
      item1_halp = "flora_seedling"
      item1_sprite2 = api_get_sprite("sp_" .. item1_halp)
      api_draw_sprite(item1_sprite2, 0, obj_inst["x"], obj_inst["y"]-9)
    elseif item1 == "stone" then
      api_draw_sprite(item1_sprite, 0, obj_inst["x"], obj_inst["y"]-1)
    else
      api_draw_sprite(item1_sprite, 0, obj_inst["x"]-2, obj_inst["y"]-9)
    end
  end
end

function draw_table2(obj_id)
  obj_inst2 = api_get_inst(obj_id)
  spr_table2 = api_get_sprite(obj_inst2["oid"])

  if api_get_highlighted("obj") == obj_id then
    api_draw_sprite(spr_table2, 1, obj_inst2["x"]-1, obj_inst2["y"]-1)
  else
    api_draw_sprite(spr_table2, 0, obj_inst2["x"]-1, obj_inst2["y"]-1)
  end

  item1 = api_get_slot(obj_inst2["menu_id"], 1)["item"]
  item1_sprite = api_get_sprite("sp_" .. item1)
  if item1 ~= "" then
    if item1 == "flora_bamboo_plant" then
      api_draw_sprite(item1_sprite, 0, obj_inst2["x"], obj_inst2["y"]-25)
    elseif item1 == "acorn1" then
      item1_halp = "flora_seedling"
      item1_sprite2 = api_get_sprite("sp_" .. item1_halp)
      api_draw_sprite(item1_sprite2, 0, obj_inst2["x"], obj_inst2["y"]-9)
    elseif item1 == "stone" then
      api_draw_sprite(item1_sprite, 0, obj_inst2["x"], obj_inst2["y"]-1)
    else
      api_draw_sprite(item1_sprite, 0, obj_inst2["x"], obj_inst2["y"]-9)
    end
  end

  item2 = api_get_slot(obj_inst2["menu_id"], 2)["item"]
  item2_sprite = api_get_sprite("sp_" .. item2)
  if item2 ~= "" then
    if item2 == "flora_bamboo_plant" then
      api_draw_sprite(item2_sprite, 0, obj_inst2["x"]+6, obj_inst2["y"]-25)
    elseif item2 == "acorn1" then
      item2_halp = "flora_seedling"
      item2_sprite2 = api_get_sprite("sp_" .. item2_halp)
      api_draw_sprite(item2_sprite2, 0, obj_inst2["x"]+8, obj_inst2["y"]-9)
    elseif item2 == "stone" then
      api_draw_sprite(item2_sprite, 0, obj_inst2["x"]+8, obj_inst2["y"]-1)
    else
      api_draw_sprite(item2_sprite, 0, obj_inst2["x"]+8, obj_inst2["y"]-9)
    end
  end

end

function draw_table3(obj_id)
  obj_inst3= api_get_inst(obj_id)
  spr_table3 = api_get_sprite(obj_inst3["oid"])

  if api_get_highlighted("obj") == obj_id then
    api_draw_sprite(spr_table3, 1, obj_inst3["x"]-1, obj_inst3["y"]-1)
  else
    api_draw_sprite(spr_table3, 0, obj_inst3["x"]-1, obj_inst3["y"]-1)
  end

  item1 = api_get_slot(obj_inst3["menu_id"], 1)["item"]
  item1_sprite = api_get_sprite("sp_" .. item1)
  if item1 ~= "" then
    if item1 == "flora_bamboo_plant" then
      api_draw_sprite(item1_sprite, 0, obj_inst3["x"], obj_inst3["y"]-25)
    elseif item1 == "acorn1" then
      item1_halp = "flora_seedling"
      item1_sprite2 = api_get_sprite("sp_" .. item1_halp)
      api_draw_sprite(item1_sprite2, 0, obj_inst3["x"], obj_inst3["y"]-9)
    elseif item1 == "stone" then
      api_draw_sprite(item1_sprite, 0, obj_inst3["x"], obj_inst3["y"]-1)
    else
      api_draw_sprite(item1_sprite, 0, obj_inst3["x"], obj_inst3["y"]-9)
    end
  end

  item2 = api_get_slot(obj_inst3["menu_id"], 2)["item"]
  item2_sprite = api_get_sprite("sp_" .. item2)
  if item2 ~= "" then
    if item2 == "flora_bamboo_plant" then
      api_draw_sprite(item2_sprite, 0, obj_inst3["x"]+6, obj_inst3["y"]-25)
    elseif item2 == "acorn1" then
      item2_halp = "flora_seedling"
      item2_sprite2 = api_get_sprite("sp_" .. item2_halp)
      api_draw_sprite(item2_sprite2, 0, obj_inst3["x"]+8, obj_inst3["y"]-9)
    elseif item2 == "stone" then
      api_draw_sprite(item2_sprite, 0, obj_inst3["x"]+8, obj_inst3["y"]-1)
    else
      api_draw_sprite(item2_sprite, 0, obj_inst3["x"]+8, obj_inst3["y"]-9)
    end
  end

  item3 = api_get_slot(obj_inst3["menu_id"], 3)["item"]
  item3_sprite = api_get_sprite("sp_" .. item3)
  if item3 ~= "" then
    if item3 == "flora_bamboo_plant" then
      api_draw_sprite(item3_sprite, 0, obj_inst3["x"]+12, obj_inst3["y"]-25)
    elseif item3 == "acorn1" then
      item3_halp = "flora_seedling"
      item3_sprite2 = api_get_sprite("sp_" .. item3_halp)
      api_draw_sprite(item3_sprite2, 0, obj_inst3["x"]+16, obj_inst3["y"]-9)
    elseif item3 == "stone" then
      api_draw_sprite(item3_sprite, 0, obj_inst3["x"]+16, obj_inst3["y"]-1)
    else
      api_draw_sprite(item3_sprite, 0, obj_inst3["x"]+16, obj_inst3["y"]-9)
    end
  end

end--]]

function apiflora_define(menu_id)

  -- create initial props
  api_dp(menu_id, "working", false)
  api_dp(menu_id, "p_start", 0)
  api_dp(menu_id, "p_end", 1)

  -- create gui for the menu
  api_define_gui(menu_id, "progress_bar", 45, 32, "apiflora_gui_tooltip", "sprites/apiflora/apiflora_gui_arrow.png")
  
  -- save gui sprite ref for later
  spr = api_get_sprite("sp_flora_progress_bar")
  api_dp(menu_id, "progress_bar_sprite", spr)

  -- add our p_start and p_end props to the default _fields list so the progress is saved 
  -- any keys in _fields will get their value saved when the game saves, and loaded when the game loads again
  fields = {"p_start", "p_end"}
  fields = api_sp(menu_id, "_fields", fields)

end

-- the change script lets us listen for a change in the menu's slots
-- it's called when a slot changes in the menu
function apiflora_change(menu_id)

  -- if we have items in the first four slots let's get to work
  bee_input = api_get_slot(menu_id, 1)
  flower_input = api_get_slot(menu_id, 2)
  if bee_input == nil then
    api_log("Bee Input Is Nil", "Yeppers")
  end
  api_log("Bee Input", bee_input)
  api_log("Flower Input", flower_input)
  if bee_input ~= nil and flower_input ~= nil then 
    api_log("Working set to true", "Yay")
    api_sp(menu_id, "working", true)
  else
    api_sp(menu_id, "working", false)
    api_log("Working set false", "Uh-oh")
  end
end

function apiflora_tick(menu_id)

  -- handle countdown if working
  if api_gp(menu_id, "working") == true then

    -- add to counter
    api_sp(menu_id, "p_start", api_gp(menu_id, "p_start") + 0.1)
    -- if we hit the end, i.e. 10s have passed
    if api_gp(menu_id, "p_start") >= api_gp(menu_id, "p_end") then

      -- reset the counter
      api_sp(menu_id, "p_start", 0)
      
      -- get the "input" slots to get an item
      bee_input = api_get_slot(menu_id, 1)
      flower_input = api_get_slot(menu_id, 2)
      -- assuming there is a slot width stuff
      if bee_input ~= nil and flower_input ~= nil then
        bee_type = bee_input["stats"]["species"]
        flower_type = flower_input["item"]
        if bee_type == "uncommon" and flower_type == "flower41" then
          bee_chance = api_random_range(1, 100)
          if bee_chance <= 60 then
            bee_item = api_create_bee_stats("lavender", false)
            output_slot = api_get_slot(menu_id, 3)
            if output_slot["item"] == "" then
              api_slot_set(output_slot["id"],"bee", 1, bee_item)
              api_slot_decr(bee_input["id"])
              api_slot_decr(flower_input["id"])
            end
          else
            bee_item = api_create_bee_stats("overgrowth", false)
            output_slot = api_get_slot(menu_id, 3)
            if output_slot["item"] == "" then
              api_slot_set(output_slot["id"],"bee", 1, bee_item)
              api_slot_decr(bee_input["id"])
              api_slot_decr(flower_input["id"])
            end
          end
        elseif bee_type == "bee:common" and flower_type == "flower12" then
          bee_chance = api_random_range(1, 100)
          if bee_chance <= 60 then
            bee_item = api_create_bee_stats("combristle", false)
            output_slot = api_get_slot(menu_id, 3)
            if output_slot["item"] == "" then
              api_slot_set(output_slot["id"],"bee", 1, bee_item)
              api_slot_decr(bee_input["id"])
              api_slot_decr(flower_input["id"])
            end
          else
            bee_item = api_create_bee_stats("overgrowth", false)
            output_slot = api_get_slot(menu_id, 3)
            if output_slot["item"] == "" then
              api_slot_set(output_slot["id"],"bee", 1, bee_item)
              api_slot_decr(bee_input["id"])
              api_slot_decr(flower_input["id"])
            end
          end
        end
      end
      bee_input = api_get_slot(menu_id, 1)
      flower_input = api_get_slot(menu_id, 2)
      if bee_input == nil or flower_input == nil then
        api_log("Did we make it this far", "Yay!")
        api_sp(menu_id, "working", false) 
      end
    end
  end
end

-- the draw script lets us draw custom things on the menu when it's open
-- here we can draw GUI elements or buttons or other things
-- you should avoid putting complex logic in the draw script
function apiflora_draw(menu_id)

  -- get camera
  cam = api_get_cam()

  -- draw gui progress here
  gui = api_get_inst(api_gp(menu_id, "progress_bar"))
  spr = api_gp(menu_id, "progress_bar_sprite")

  -- draw arrow "progress" block then cover up with arrow hole
  -- arrow sprite is 47x10
  gx = gui["x"] - cam["x"]
  gy = gui["y"] - cam["y"]
  progress = (api_gp(menu_id, "p_start") / api_gp(menu_id, "p_end") * 47)
  api_draw_sprite_part(spr, 2, 0, 0, progress, 10, gx, gy)
  api_draw_sprite(spr, 1, gx, gy)

  -- draw highlight if highlighted
  if api_get_highlighted("ui") == gui["id"] then
    api_draw_sprite(spr, 0, gx, gy)
  end

end

-- return text for gui tooltip
-- this method is called by the GUI instance when we hover over it
-- the text returned is shown in a tooltip
function apiflora_gui_tooltip(menu_id) 
  progress = math.floor((api_gp(menu_id, "p_start") / api_gp(menu_id, "p_end")) * 100)
  percent = tostring(progress) .. "%"
  return {
    {"Progress", "FONT_WHITE"},
    {percent, "FONT_BGREY"}
  }
end
