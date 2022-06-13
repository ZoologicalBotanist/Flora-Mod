
MOD_NAME = "flora"

-- Thanks to Mushy for tossing this my way
ROTATING_STOCK = {2, 
{"seed20", "seed22"},
{"flora_bamboo_sapling", "flora_crape_myrtle_sapling"}
}

function register()

  return {
    name = MOD_NAME,
    hooks = {"ready", "click", "key"},
    modules = {"plants", "npcs", "bees", "objects"}
  }
end

function init() 

  api_set_devmode(true)
  log("init", "Hello World!")

  local res = define_plant()

  local res = define_objects()

  local res = define_bee()

  local res = define_npc()

  return "Success"

end

-- Quests
quests = {}

api_define_gif("quest1-1", "sprites/quests/quest1-1.gif",1)

quests[1] = {
  def = {
    id = "flora_quest1_cuttings",
    title = "Plant Cuttings",
    reqs = nil,
    icon = "flower23",
    reward = "flower24@1",
    unlock = {"flora_quest2_apiflora"},
    unlocked = true
  },
  page1 = {
    {text = "Some plants can be propagated with cuttings!"},
    {gif = "quest1-1", height = 46},
    {text = "To do so, just right click on the plant. Remember that not all plants can do this!"},
  },
  page2 = {
    {text = "Give it a try with this orchid!"}
  }
}

quests[2] = {
  def = {
    id = "flora_quest2_apiflora",
    title = "Apiflora Bees",
    reqs = {"bee.combflower@1"},
    icon = "lavender",
    reward = "bee.lavender@1",
    unlock = nil
  },
  page1 = {
    {text = "Sometimes, when picking flowers, they might have an apiflora bee nesting inside of them!"},
    {text = "The combflower is one of these flowers, go pick a few!"},
  }
}

function ready()

  -- if we haven't already spawned our new npc, spawn them
  friend = api_get_menu_objects(nil, "npc480")
  if #friend == 0 then
    player = api_get_player_position()
    api_create_obj("npc480", player["x"] + 16, player["y"] - 32)
  end


  -- The next sections of code focus on adding cross compatability with other mods.
  -- This will check if the composter mod by Parchment is installed, and if so will make Flora plants compostable
  if api_mod_exists("composter_mod") ~= nil then
    api_mod_call("composter_mod", "add_growable_plant", {"seedling20", "flower20"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling21", "flower21"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling22", "flower22"})
    api_mod_call("composter_mod", "add_growable_plant", {"seedling23", "flower23"})
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
    api_mod_call("uranium_bee", "add_item_elements", {"bamboo_stick", 1, {"nature"}})
    api_mod_call("uranium_bee", "add_item_elements", {"lavender_oil", 2, {"nature", "air"}})
    api_mod_call("uranium_bee", "add_item_elements", {"orchid_petal", 2, {"nature", "rareium"}})

    -- This will give bees elements and wiki pages
    api_mod_call("uranium_bee", "add_bee_elements", {"combristle", 2, {"nature", "death"}}) 
    api_mod_call("uranium_bee", "add_wiki_page", {"combristle", "/sprites/compatability/uranium_wp/wp_combristle.png"})   

    api_mod_call("uranium_bee", "add_bee_elements", {"lavender", 1, {"nature"}}) 
    api_mod_call("uranium_bee", "add_wiki_page", {"lavender", "/sprites/compatability/uranium_wp/wp_lavender.png"})   

    api_mod_call("uranium_bee", "add_bee_elements", {"orchid", 2, {"nature", "rareium"}}) 
    api_mod_call("uranium_bee", "add_wiki_page", {"orchid", "/sprites/compatability/uranium_wp/wp_orchid.png"})  

    api_log("Uranium Bee compatability added", "Success")

  else
    return "Uranium Bee Mod not installed!"
  end

  api_unlock_quest("flora_quest1_cuttings")

  api_get_data()
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
      if inst["oid"] == "flower12" then
        bee_chance = api_random_range(1, 5)
        if bee_chance == 1 then
          stats = api_create_bee_stats("combristle", false)
          api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
        end
      end
      if inst["oid"] == "flower23" then
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

--[[direction = {south=0,east=1,north=2,west=3}
current_direction = direction.south
function animate_kiosk(obj_id)
  local ox = api_gp(obj_id, "x")
  local oy = api_gp(obj_id, "y")
  local hl = api_get_highlighted("obj")
  if hl ~= nil and hl == obj_id then
    api_draw_sprite(spr_kiosk, 1+(current_direction*2), ox, oy - 2)
  else
    api_draw_sprite(spr_kiosk, 0+(current_direction*2), ox, oy - 2)
  end
end--]]

-- Crafting Table