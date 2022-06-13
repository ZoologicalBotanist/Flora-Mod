function log(group, msg)
  api_log(group, msg)
end

-- This is a placeholder file.
function define_npc()
  local res = api_define_npc({
    id = 480,
    name = "ZooBot",
    pronouns = "She/They",
    tooltip = "UwU",
    shop = true,
    walking = true,
    stock = {"seed20", "seed22"}, -- max 10
    specials = {"flower20", "flower21", "flower22"}, -- must be 3
    dialogue = {
      "I just love plants, they're so amazing!",
      "Abbee and I went for a walk in the swamp the other day.",
      "She kept stopping to smell the flowers, but I was more interested in the rare mosses I saw."
    },
    greeting = "Hi! Do you wanna look at plants with me?"
  },
    "sprites/npc/npc_standing.png",
    "sprites/npc/npc_standing_h.png",
    "sprites/npc/npc_walking.png",
    "sprites/npc/npc_walking_h.png",
    "sprites/npc/npc_head.png",
    "sprites/npc/npc_bust.png",
    "sprites/npc/npc_item.png",
    "sprites/npc/npc_dialogue_menu.png",
    "sprites/npc/npc_shop_menu.png"
  )
  api_log("NPC defined", res)

end