function log(group, msg)
  api_log(group, msg)
end


-- Defines flowers
function define_flower()
  -- Rose
  local rose_def = {
    id = "20",
    species = "Rose",
    title = "Rose",
    latin = "Rosa spp.",
    hint = "Roses are a common garden flower, someone's got to have one for sale...",
    desc = "Roses are a commonly grown genus of garden flower with many species and cultivars. There are even events where people show off their prized plants!",
    shop_buy = 5,
    shop_sell = 2,
    aquatic = false,
    variants = 2,
    deep = false
  }
  
  local res api_define_flower(rose_def, 
    "sprites/rose_item.png", "sprites/rose_variants.png", 
    "sprites/rose_seed_item.png", "sprites/rose_hd.png",
    {r=190, g=17, b=17}
  )

  api_log("Rose define", res)

  -- Red Clover
  local redclover_def = {
    id = "21",
    species = "Red Clover",
    title = "Red Clover",
    latin = "Trifolium pratense",
    hint = "Its got the combflowers shape and the beewells color, there has to be a connection there...",
    desc = "Red Clover is a gorgeous species of clover native to Europe and naturalized in North America. The entire plant can be eaten raw, or made into jam or tea.",
    shop_sell = 2,
    aquatic = false,
    variants = 4,
    chance = 50,
    effect_desc = "Red clover is a short lived perrenial plant that grows between 20-80cm (8-31in) tall. ",
    deep = false
  }
  
  
  api_define_flower(redclover_def, 
    "sprites/redclover_item.png", "sprites/redclover_variants.png", 
    "sprites/redclover_seed_item.png", "sprites/redclover_hd.png",
    {r=225, g=130, b=220}
  )

  api_log("Red Clover define", res)

  local res api_define_flower_recipe("flower12", "flower13", "flower21")
  api_log("Red Clover recipe define", res)

end

