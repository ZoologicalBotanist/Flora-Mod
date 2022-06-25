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
    stock = {"seed30", "seed31", "seed32", "seed33", "seed34", "seed37", "seed39"}, -- max 10
    specials = {"flower1", "flower2", "flower3"}, -- must be 3
    dialogue = {
      "I just love plants, they're so amazing!",
      "Abbee thinks her roses are better than mine, but she's not the one with the rare orchids now is she?.",
      "So what if I cant grow a rose to save my life, roses are overrated anyways."
    },
    greeting = "Hi! Do you wanna look at plants with me?"
  },
    "sprites/npc/npc480_standing.png",
    "sprites/npc/npc480_standing_h.png",
    "sprites/npc/npc480_walking.png",
    "sprites/npc/npc480_walking_h.png",
    "sprites/npc/npc480_head.png",
    "sprites/npc/npc480_bust.png",
    "sprites/npc/npc480_item.png",
    "sprites/npc/npc_dialogue_menu.png",
    "sprites/npc/npc_shop_menu.png"
  )
  api_log("NPC defined", res)

  --[[local res = api_define_npc({
    id = 481,
    name = "Mandragora",
    pronouns = "They/Them",
    tooltip = "*mumble*",
    shop = true,
    walking = false,
    stock = {"seed24", "seed22", "seed24"}, -- max 10
    specials = {"flower23", "flower24", "flower25"}, -- must be 3
    dialogue = {
      "You give coin, I give rare flower."
    },
    greeting = "Want rare flower? Got coin?"
  },
    "sprites/npc/npc481_standing.png",
    "sprites/npc/npc481_standing_h.png",
    "sprites/npc/npc481_walking.png",
    "sprites/npc/npc481_walking_h.png",
    "sprites/npc/npc481_head.png",
    "sprites/npc/npc481_bust.png",
    "sprites/npc/npc481_item.png",
    "sprites/npc/npc481_dialogue_menu.png",
    "sprites/npc/npc481_shop_menu.png"
  )
  api_log("NPC defined", res)--]]

end