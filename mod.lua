
MOD_NAME = "flora"

-- Thanks to Mushy for tossing this my way
ROTATING_STOCK = {2, 
{"seed30", "seed31", "seed32", "seed33", "seed34", "seed35", "seed36", "seed37", "seed38", "seed39"},
{"seed40", "seed41"},
{"flora_bamboo_sapling", "flora_crape_myrtle_sapling"},
{"flora_gnome"}
}

function register()

  return {
    name = MOD_NAME,
    hooks = {"ready", "click", "key", "create"},
    modules = {"plants", "npcs", "bees", "objects"}
  }
end

function init() 

  api_set_devmode(true)
  log("init", "Hello World!")

  local res = api_define_workbench("Flora Mod", {
    t1 = "Decor",
    t2 = "Materials",
    t3 = "Hello",
    t4 = "Hello",
    t5 = "Hello"
  })

  api_log("Workbench Tabs defined", res)

  local res = define_plant()
  api_log("Plants defined", res)

  local res = define_objects()
  api_log("Objects defined", res)

  local res = define_bee()
  api_log("Bees defined", res)

  local res = define_npc()
  api_log("NPC defined", res)

  local cb_recipe = {
    {item = "log", amount = 5}
}

  return "Success"

end

function ready()

  -- if we haven't already spawned our new npc, spawn them
  friend = api_get_menu_objects(nil, "npc480")
  if #friend == 0 then
    player = api_get_player_position()
    api_create_obj("npc480", player["x"] + 16, player["y"] - 32)
  end

  if #friend > 1 then
    for i=2, #friend do
      api_destroy_inst(friend[i]["id"])
    end
  end

  --[[friend2 = api_get_menu_objects(nil, "npc481")
  if #friend == 0 then
    api_create_obj("npc481", 3241, 3653)
  end

  if #friend2 > 1 then
    for i=2, #friend2 do
      api_destroy_inst(friend2[i]["id"])
    end
  end--]]



  --api_unlock_quest("flora_quest_01")


  -- The next sections of code focus on adding cross compatability with other mods.
  -- This will check if the composter mod by Parchment is installed, and if so will make Flora plants compostable
  --[[if api_mod_exists("composter_mod") ~= nil then
    api_mod_call("composter_mod", "add_growable_plant", {"seedling30", "flower30"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling31", "flower31"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling32", "flower32"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling33", "flower33"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling34", "flower34"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling35", "flower35"})
    api_mod_call("composter_mod", "add_growable_plant", {"flora_bamboo_sapling", "flora_fake_bamboo"})
    api_mod_call("composter_mod", "add_growable_plant", {"flora_crape_myrtle_sapling", "flora_crape_myrtle_tree"})
    api_log("Composter Mod compatability added", "Success")
  else
    return "Composter Mod not installed!"
  end

  -- This will check if the uranium bees mod by CookieRA is installed, and if so will give Flora plants, items, and bees elements and wiki pages
  if api_mod_exists("uranium_bee") ~= nil then
    
    --  This will give flowers elements
    api_mod_call("uranium_bee", "add_item_elements", {"flower20", 1, {"nature"}})
    api_mod_call("uranium_bee", "add_item_elements", {"flower21", 1, {"nature"}})
    api_mod_call("uranium_bee", "add_item_elements", {"flower22", 1, {"nature"}})
    api_mod_call("uranium_bee", "add_item_elements", {"flower23", 1, {"nature"}})
    api_mod_call("uranium_bee", "add_item_elements", {"flower24", 2, {"nature", "rareium"}})
    api_mod_call("uranium_bee", "add_item_elements", {"flower25", 2, {"nature", "light"}})
    

    api_log("Uranium Bee compatability added", "Success")

  else
    return "Uranium Bee Mod not installed!"
  end--]]

  -- play a sound to celebrate our mod loading! :D
  api_play_sound("confetti")


end

-- Clicky button thingy for Fake Trees and Floral Bees
-- Note that current_health does not work at the current moment
function click(button, click_type)
  -- Things that happen when you break things
  if button == "LEFT" and click_type == "PRESSED" then
    mouse_pos = api_get_mouse_position()
    highlighted = api_get_highlighted("obj")
    if highlighted ~= nil then
      inst = api_get_inst(highlighted)
      if inst["oid"] == "flora_crape_myrtle_tree" then
        health_now = api_get_property(highlighted, "current_health")
        equipped = api_get_equipped()
        if equipped == "axe1" or equipped == "axe2" then
          api_set_property(highlighted, "current_health", health_now - 1)
        elseif equipped == "axe3" then
          api_set_property(highlighted, "current_health", health_now - 2)
        else
          api_set_property(highlighted, "current_health", health_now - 0.1)
        end
        if health_now <= 0.1 then
          log_num = api_random_range(2, 5)
          sapling_num = api_random_range(1, 3)
          api_destroy_inst(highlighted)  
          api_create_item("log", log_num, mouse_pos["x"], mouse_pos["y"], nil)
          api_create_item("flora_crape_myrtle_sapling", sapling_num, mouse_pos["x"], mouse_pos["y"], nil)
        end
      end
      if inst["oid"] == "flora_crape_myrtle_sapling" then
        stick_num = api_random_range(1, 3)
        api_destroy_inst(highlighted)
        api_create_item("flora_crape_myrtle_sapling", 1, mouse_pos["x"], mouse_pos["y"], nil)
        api_create_item("stick", stick_num, mouse_pos["x"], mouse_pos["y"], nil)
      end
      if inst["oid"] == "flora_bamboo_plant" then
        health_now = api_get_property(highlighted, "current_health")
        equipped = api_get_equipped()
        if equipped == "axe1" or equipped == "axe2" then
          api_set_property(highlighted, "current_health", health_now - 1)
        elseif equipped == "axe3" then
          api_set_property(highlighted, "current_health", health_now - 2)
        else
          api_set_property(highlighted, "current_health", health_now - 0.1)
        end
        if health_now <= 0.1 then
          log_num = api_random_range(2, 5)
          sapling_num = api_random_range(1, 3)
          api_destroy_inst(highlighted)  
          api_create_item("flora_bamboo_stick", log_num, mouse_pos["x"], mouse_pos["y"], nil)
          api_create_item("flora_bamboo_sapling", sapling_num, mouse_pos["x"], mouse_pos["y"], nil)
        end
      end
      if inst["oid"] == "flora_gnome" then
        api_create_item("flora_gnome", 1, mouse_pos["x"], mouse_pos["y"], nil)
      end
      if inst["oid"] == "flower12" then
        bee_chance = api_random_range(1, 5)
        if bee_chance == 1 then
          stats = api_create_bee_stats("combristle", false)
          api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
        end
      end
      if inst["oid"] == "flower32" then
        bee_chance = api_random_range(1, 10)
        if bee_chance == 1 then
          stats = api_create_bee_stats("lavender", false)
          api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
        end
      end
      if inst["oid"] == "flower24" then
        bee_chance = api_random_range(1, 100)
        if bee_chance == 1 then
          stats = api_create_bee_stats("orchid", false)
          api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
        end
      end
    end
  end
  -- Things that happen when you left click things
  if button == "RIGHT" and click_type == "PRESSED" then
    mouse_pos = api_get_mouse_position()
    highlighted = api_get_highlighted("obj")
    if highlighted ~= nil then
      inst = api_get_inst(highlighted)
      if inst["oid"] == "flower1" then
        api_create_item("flower1", 1, mouse_pos["x"], mouse_pos["y"], nil)
      elseif inst["oid"] == "flower6" then
        api_create_item("flower6", 1, mouse_pos["x"], mouse_pos["y"], nil)
      elseif inst["oid"] == "flower23" then
        api_create_item("flower23", 1, mouse_pos["x"], mouse_pos["y"], nil)
      elseif inst["oid"] == "flower24" then
        api_create_item("flower24", 1, mouse_pos["x"], mouse_pos["y"], nil)
      end
    end
  end
end

function key(key_code)
  --code from SamuelSapp
  if key_code == 82 then
      if api_gp(api_gp(api_get_menu_objects(nil, "npc480")[1]["menu_id"], "shop"), "open") == true then
          change_stock("npc480", ROTATING_STOCK)
      end
  end
end

function change_stock(npc_id, stock_table)
  --code from SamuelSapp
  local npc_object = api_get_menu_objects(nil, npc_id)
  local shop_id = api_gp(npc_object[1]["menu_id"], "shop")
  if stock_table[1] > #stock_table-1 then
    stock_table[1] = 1
  end

  if shop_id ~= nil then
    local shop_slots = api_get_slots(shop_id)
    local i_end = #stock_table[stock_table[1]+1]
    if i_end > 10 then
      i_end = 10
    end
    for i=1, i_end do
      api_slot_set(shop_slots[i+1]["id"],stock_table[stock_table[1]+1][i],0)
    end
    if i_end < 10 then
      for i=i_end+1, 10 do
        api_slot_clear(shop_slots[i+1]["id"])
      end
    end

    if stock_table[1]+1 == #stock_table then
      stock_table[1] = 1
    else
      stock_table[1] = stock_table[1] + 1
    end
  end
end

function create(id, x, y, oid, inst_type) 

  if oid == "flora_fake_bamboo" then
    api_create_obj("flora_bamboo_plant", x, y-32)
    api_destroy_inst(id)
  end

end

