function log(group, msg)
  api_log(group, msg)
end

-- This is a placeholder file.
function define_npc()

  local npc_def = {
    id = 480,
    name = "ZooBot",
    pronouns = "She/They",
    tooltip = "UwU",
    shop = true,
    walking = false,
    stock = {"flower20", "flower21"}, -- max 10
    specials = {"flower20", "flower21", "log"}, -- must be 3
    dialogue = {
      "I just love plants, they're so amazing!",
      "Abbee and I went for a walk in the swamp the other day.",
      "She kept stopping to smell the flowers, but I was more interested in the rare mosses I saw."
    },
    greeting = "Hi! Do you wanna look at plants with me?"
  }

  local res = api_define_npc(npc_def,
    "sprites/npc_standing.png",
    "sprites/npc_standing_h.png",
    "sprites/npc_walking.png",
    "sprites/npc_walking_h.png",
    "sprites/npc_head.png",
    "sprites/npc_bust.png",
    "sprites/npc_item.png",
    "sprites/npc_dialogue_menu.png",
    "sprites/npc_shop_menu.png"
  )
  api_log("NPC defined", res)

end