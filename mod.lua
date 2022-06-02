
MOD_NAME = "flora"

function register()

  return {
    name = MOD_NAME,
    hooks = {"ready"},
    modules = {"flowers", "bees", "npcs"}
  }
end

function init() 

  api_set_devmode(true)
  log("init", "Hello World!")

  local res = define_flower()
  api_log("Flowers defined", res)

  local res = define_npc()
  api_log("NPCs defined", res)

  return "Success"

  

end

function list_flowers()
  flowers = {
  "flower20",
  "flower21"
  }
end

function ready()

  -- if we haven't already spawned our new npc, spawn them
  friend = api_get_menu_objects(nil, "npc480")
  if #friend == 0 then
    player = api_get_player_position()
    api_create_obj("npc480", player["x"] + 16, player["y"] - 32)
  end

  -- play a sound to celebrate our mod loading! :D
  api_play_sound("confetti")


end

function data(ev, data)

  if (ev == "LOAD" and data ~= nil) then
    name = api_gp(api_get_player_instance(), "name")
    if data["players"][name] == nil then
      api_log("data", "First time!")
      data["players"][name] = true
      api_set_data(data)
    else
      api_log("data", "Loaded before.")
    end

  end

  if (ev == "SAVE" and data ~= nil) then
    return
  end

end