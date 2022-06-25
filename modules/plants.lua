function log(group, msg)
  api_log(group, msg)
end


-- Defines Plants
function define_plant()
  -- FLOWERS
  -- Tulip
  local res api_define_flower({
    id = "30",
    species = "Tulip",
    title = "Tulip",
    latin = "Tulipa Gesneriana",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "A common species of spring bulb, tulips come in a wide variety of colors.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 6,
    deep = false
  },
    "sprites/plants/tulip_item.png", "sprites/plants/tulip_variants.png",
    "sprites/plants/tulip_seed_item.png", "sprites/plants/tulip_hd.png",
    {r=190, g=17, b=17}
  )
  
  api_log("Tulip defined", res)
  
  -- Daisy
  local res api_define_flower({
    id = "31",
    species = "Daisy",
    title = "Daisy",
    latin = "Bellis Perennis",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "Native to Europe, this flower has become widely naturalized in temperate regions, including the Americas and Australasia.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 2,
    
    deep = false
  },
    "sprites/plants/daisy_item.png", "sprites/plants/daisy_variants.png",
    "sprites/plants/daisy_seed_item.png", "sprites/plants/daisy_hd.png",
    {r=213, g=226, b=238}
  )
  
  api_log("Daisy defined", res)

  -- Carnation
  local res api_define_flower({
    id = "32",
    species = "Carnation",
    title = "Carnation",
    latin = "Dianthus Caryophyllus",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "Carnations have become widely cultivated by people, and were first mentioned in Ancient Greek literature over 2,000 years ago!",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 4,
    deep = false
  },
    "sprites/plants/carnation_item.png", "sprites/plants/carnation_variants.png",
    "sprites/plants/carnation_seed_item.png", "sprites/plants/carnation_hd.png",
    {r=336, g=100, b=100}
  )
  
  api_log("Carnation defined", res)

  -- Daffodil
  local res api_define_flower({
    id = "33",
    species = "Daffodil",
    title = "Daffodil",
    latin = "Narcissus Pseudonarcissus",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "Native to Europe, Daffodils are commonly grown in gardens and as a result, wild populations have established themselves in much of the world.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 2,
    deep = false
  },
    "sprites/plants/daffodil_item.png", "sprites/plants/daffodil_variants.png",
    "sprites/plants/daffodil_seed_item.png", "sprites/plants/daffodil_hd.png",
    {r=228, g=255, b=121}
  )
  
  api_log("Daffodil defined", res)

  -- Marigold
  local res api_define_flower({
    id = "34",
    species = "Marigold",
    title = "Marigold",
    latin = "Tagetes Patula",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "Native to Mexico, Central, and South America, Marigolds are a widely known plant with dozens of different cultivars.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 3,
    deep = false
  },
    "sprites/plants/marigold_item.png", "sprites/plants/marigold_variants.png",
    "sprites/plants/marigold_seed_item.png", "sprites/plants/marigold_hd.png",
    {r=255, g=70, b=0}
  )
  
  api_log("Marigold defined", res)
  
  -- Petunia
  --[[local res api_define_flower({
    id = "36",
    species = "Petunia",
    title = "Petunia",
    latin = "Petunia Atkinsiana",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "The product of hybridization between other Petunia species, P. Atkinsiana has the largest flowers and widest variety of forms and colors, making them a popular choice with gardeners.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 4,
    deep = false
  },
    "sprites/plants/petunia_item.png", "sprites/plants/petunia_variants.png",
    "sprites/plants/petunia_seed_item.png", "sprites/plants/petunia_hd.png",
    {r=255, g=0, b=200}
  )
  
  api_log("Petunia defined", res)--]]

  -- Wood Violet
  local res api_define_flower({
    id = "37",
    species = "Wood Violet",
    title = "Wood Violet",
    latin = "Viola Ordata",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "The scent of this flower was popular in the late victorian period for its scent, which was used in cosmetic fragrences and perfumes",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 2,
    deep = false
  },
    "sprites/plants/violet_item.png", "sprites/plants/violet_variants.png",
    "sprites/plants/violet_seed_item.png", "sprites/plants/violet_hd.png",
    {r=255, g=70, b=0}
  )
  
  api_log("Violet defined", res)

  -- Daylily
  --[[local res api_define_flower({
    id = "38",
    species = "Daylily",
    title = "Daylily",
    latin = "Hemerocallis Fulva",
    hint = "A common flower often found in gardens, perhaps someone has it for sale.",
    desc = "Despite the name, Daylilies are not actually true lilies, but get their name from the superficial resemblance.",
    shop_buy = 10,
    shop_sell = 0,
    aquatic = false,
    variants = 3,
    deep = false
  },
    "sprites/plants/daylily_item.png", "sprites/plants/daylily_variants.png",
    "sprites/plants/daylily_seed_item.png", "sprites/plants/daylily_hd.png",
    {r=255, g=70, b=0}
  )
  
  api_log("Daylily defined", res)--]]

-- Hosta
local res api_define_flower({
  id = "39",
  species = "Hosta",
  title = "Hosta",
  latin = "Hosta Plantaginea",
  hint = "A common flower often found in gardens, perhaps someone has it for sale.",
  desc = "Used worldwide as a shade tolerant flower, Hostas originated in East Asia, particularly Japan and Korea.",
  shop_buy = 10,
  shop_sell = 0,
  aquatic = false,
  variants = 3,
  deep = false
},
  "sprites/plants/hosta_item.png", "sprites/plants/hosta_variants.png",
  "sprites/plants/hosta_seed_item.png", "sprites/plants/hosta_hd.png",
  {r=255, g=70, b=0}
)

api_log("Daylily defined", res)

  -- Red Clover
  api_define_flower({
    id = "40",
    species = "Red Clover",
    title = "Red Clover",
    latin = "Trifolium Pratense",
    hint = "Its got the combflowers shape and the beewells color, there has to be a connection there...",
    desc = "Red Clover is a gorgeous species of clover native to Europe and naturalized in North America. The entire plant can be eaten raw, or made into jam or tea.",
    shop_sell = 10,
    shop_buy = 0,
    aquatic = false,
    variants = 4,
    chance = 30,
    effect_desc = "Red clover is a short lived perrenial plant that grows between 20-80cm (8-31in) tall. ",
    deep = false
  }, 
    "sprites/plants/redclover_item.png", "sprites/plants/redclover_variants.png", 
    "sprites/plants/redclover_seed_item.png", "sprites/plants/redclover_hd.png",
    {r=197, g=115, b=233}
  )

  api_log("Red Clover define", res)

  -- Lavender
  api_define_flower({
    id = "41",
    species = "Lavender",
    title = "Lavender",
    latin = "Lavandula Angustifolia",
    hint = "Descended from a purpley pink mutation of honeydrop.",
    desc = "Lavender is a strongly aromatic flowering shrub that has long found use by humans for its oil, which can be used in balms, salves, perfumes, cosmetics, and topical applications. It can also be used in cooking.",
    shop_sell = 10,
    shop_buy = 0,
    aquatic = false,
    variants = 3,
    chance = 10,
    effect_desc = "Lavender grows as a shrub that reaches as high as 1-2 meters (3'3 to 6'7) tall. The leaves are evergreen, and the flowers are pinkish purple (lavender colored) and produced on spikes.",
    deep = false
  }, 
    "sprites/plants/lavender_item.png", "sprites/plants/lavender_variants.png", 
    "sprites/plants/lavender_seed_item.png", "sprites/plants/lavender_hd.png",
    {r=209, g=166, b=225}
  )

  api_log("Lavender define", res)

  -- Port Apico Ground Orchid
  api_define_flower({
    id = "24",
    species = "Port Apico Ground Orchid",
    title = "Port Apico Ground Orchid",
    latin = "Spathoglottis Apicoensis",
    hint = "This flower is incredibly rare, and may only be obtainable as a reward from the universe.",
    desc = "Belonging to a family of ground orchids, the Port Apico Ground Orchid is only found in Port Apico, and any attempts to cultivate it outside the archipelago have thus far failed.",
    shop_sell = 10,
    shop_buy = 0,
    aquatic = false,
    variants = 2,
    chance = 10,
    effect_desc = "The Port Apico Ground Orchid is incredibly rare, most likely due to poaching for its petals, which are highly valued in cosmetics. This in turn has led to the decline of its symbiotic species, the Orchid Bee.",
    deep = false
  }, 
    "sprites/plants/orchid_item.png", "sprites/plants/orchid_variants.png", 
    "sprites/plants/orchid_seed_item.png", "sprites/plants/orchid_hd.png",
    {r=231, g=183, b=229}
  )
  
  api_define_flower_recipe("flower9", "flower13", "flower41")

  api_log("Port Apico Ground Orchid define", res)

  --Glowbell
  api_define_flower({
    id = "25",
    species = "Glowbell",
    title = "Glowbell",
    latin = "Lumibella Caeruleus",
    hint = "A common yet magical flower, it is often sold by botanists",
    desc = "Thanks to its soft blue glow, this flower is easiest found at night.",
    shop_sell = 10,
    shop_buy = 0,
    aquatic = false,
    variants = 2,
    chance = 10,
    effect_desc = "",
    has_lighting = true,
    deep = false,
  }, 
    "sprites/plants/glowbell_item.png", "sprites/plants/glowbell_variants.png", 
    "sprites/plants/glowbell_seed_item.png", "sprites/plants/glowbell_hd.png",
    {r=107, g=170, b=229}
  )

  api_log("Glowbell define", res)



  -- TREES
  -- Bamboo
  api_define_object({
    id = "bamboo_plant",
    name = "Bamboo",
    category = "Flora Trees",
    tooltip = "A bamboo plant",
    pickable = true,
    hp = true,
    has_shadow = true,
    item_sprite = "sprites/plants/bamboo_tree_item.png"
  }, "sprites/plants/bamboo_tree.png")

  api_define_object({
    id = "bamboo_sapling",
    name = "Bamboo",
    category = "Flora Trees",
    tooltip = "A bamboo plant",
    tools = {"mouse1", "axeX"},
    pickable = true,
    growth = "flora_bamboo_plant 350 400",
    shop_buy = 10,
    shop_sell = 10,
    has_shadow = true
  }, "sprites/plants/bamboo_seedling.png")

  -- Crape Myrtle
  api_define_object({
    id = "crape_myrtle_tree",
    name = "Crape Myrtle",
    category = "Flora Trees",
    tooltip = "A species of tree native to Asia that is used in landscaping",
    hp = true,
    has_shadow = true
  }, "sprites/plants/crape_myrtle_tree.png")

  api_define_object({
    id = "crape_myrtle_sapling",
    name = "Crape Myrtle Sapling",
    category = "Flora Trees",
    tooltip = "A crape myrtle sapling",
    tools = {"mouse1", "axeX"},
    growth = "flora_crape_myrtle_tree 350 400",
    shop_buy = 10,
    shop_sell = 10,
    has_shadow = true
  }, "sprites/plants/crape_myrtle_seedling.png")

  -- These plants are just used for sprites in planter boxes
  api_define_object({
    id = "seedling",
    name = "Tree Sapling",
    category = "Flora Trees",
    tooltip = "A tree sapling",
    tools = {"mouse1", "axeX"},
    shop_buy = 10,
    shop_sell = 10,
    has_shadow = true
  }, "sprites/plants/tree_sapling.png")

end
