function log(group, msg)
  api_log(group, msg)
end


-- Defines Plants
function define_plant()
  -- FLOWERS
  -- Rose
  local res api_define_flower({
    id = "20",
    species = "Rose",
    title = "Rose",
    latin = "Rosa spp.",
    hint = "Roses are a common garden flower, someone's got to have one for sale...",
    desc = "Roses are a commonly grown genus of garden flower with many species and cultivars. There are even events where people show off their prized plants!",
    shop_buy = 10,
    shop_sell = 10,
    aquatic = false,
    variants = 2,
    deep = false
  }, 
    "sprites/plants/rose_item.png", "sprites/plants/rose_variants.png", 
    "sprites/plants/rose_seed_item.png", "sprites/plants/rose_hd.png",
    {r=190, g=17, b=17}
  )

  api_log("Rose define", res)

  -- Red Clover
  api_define_flower({
    id = "21",
    species = "Red Clover",
    title = "Red Clover",
    latin = "Trifolium Pratense",
    hint = "Its got the combflowers shape and the beewells color, there has to be a connection there...",
    desc = "Red Clover is a gorgeous species of clover native to Europe and naturalized in North America. The entire plant can be eaten raw, or made into jam or tea.",
    shop_sell = 2,
    shop_buy = 2,
    aquatic = false,
    variants = 4,
    chance = 30,
    effect_desc = "Red clover is a short lived perrenial plant that grows between 20-80cm (8-31in) tall. ",
    deep = false
  }, 
    "sprites/plants/redclover_item.png", "sprites/plants/redclover_variants.png", 
    "sprites/plants/redclover_seed_item.png", "sprites/plants/redclover_hd.png",
    {r=225, g=130, b=220}
  )

  api_define_flower_recipe("flower12", "flower13", "flower21")

  api_log("Red Clover define", res)

  -- Fly Agaric
  api_define_flower({
    id = "22",
    species = "Fly Agaric",
    title = "Fly Agaric",
    latin = "Amanita Muscaria",
    hint = "Perhaps a local gardener will have some spores from one...",
    desc = "Fly agaric is a species of mushroom native to the Northern Hemisphere, but it has also been unintentionally introduced to the Southern Hemisphere as well. It is one of the most recognizable species of mushroom in pop culture!",
    shop_sell = 10,
    shop_buy = 10,
    aquatic = false,
    variants = 3,
    chance = 50,
    effect_desc = "While some fly agaric may have yellow or white caps, they can all usually be recognized by the white spots on the cap.",
    deep = false
  }, 
    "sprites/plants/flyagaric_item.png", "sprites/plants/flyagaric_variants.png", 
    "sprites/plants/flyagaric_seed_item.png", "sprites/plants/flyagaric_hd.png",
    {r=225, g=130, b=220}
  )

  api_log("Fly Agaric define", res)

  -- Lavender
  api_define_flower({
    id = "23",
    species = "Lavender",
    title = "Lavender",
    latin = "Lavandula Angustifolia",
    hint = "Descended from a purpley pink mutation of honeydrop.",
    desc = "Lavender is a strongly aromatic flowering shrub that has long found use by humans for its oil, which can be used in balms, salves, perfumes, cosmetics, and topical applications. It can also be used in cooking.",
    shop_sell = 2,
    shop_buy = 2,
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
  
  api_define_flower_recipe("flower9", "flower13", "flower23")

  api_log("Lavender define", res)

  --Orchid
  api_define_flower({
    id = "24",
    species = "Port Apico Ground Orchid",
    title = "Port Apico Ground Orchid",
    latin = "Spathoglottis Apicoensis",
    hint = "This flower is incredibly rare, and may only be obtainable as a reward from the universe.",
    desc = "Belonging to a family of ground orchids, the Port Apico Ground Orchid is only found in Port Apico, and any attempts to cultivate it outside the archipelago have thus far failed.",
    shop_sell = 2,
    shop_buy = 2,
    aquatic = false,
    variants = 3,
    chance = 10,
    effect_desc = "The Port Apico Ground Orchid is incredibly rare, most likely due to poaching for its petals, which are highly valued in cosmetics. This in turn has led to the decline of its symbiotic species, the Orchid Bee.",
    deep = false
  }, 
    "sprites/plants/orchid_item.png", "sprites/plants/orchid_variants.png", 
    "sprites/plants/orchid_seed_item.png", "sprites/plants/orchid_hd.png",
    {r=231, g=183, b=229}
  )
  
  api_define_flower_recipe("flower9", "flower13", "flower23")

  api_log("Port Apico Ground Orchid define", res)



  -- TREES
  -- Bamboo
  api_define_object({
    id = "fake_bamboo",
    name = "FAKE Bamboo",
    category = "Decoration",
    tooltip = "A bamboo plant",
    tools = {"mouse1", "axeX"},
    pickable = true,
    durability = 10.0
  }, "sprites/plants/bamboo_tree.png")

  api_define_object({
    id = "bamboo_plant",
    name = "Bamboo",
    category = "Flora Trees",
    tooltip = "A bamboo plant",
    tools = {"mouse1", "axeX"},
    pickable = true,
    growth = "flora_fake_bamboo 5 10",
    hp = 10.0
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
    shop_sell = 10
  }, "sprites/plants/bamboo_seedling.png")

  -- Crape Myrtle
  api_define_object({
    id = "crape_myrtle_tree",
    name = "Crape Myrtle",
    category = "Flora Trees",
    tooltip = "A species of tree native to Asia that is used in landscaping",
    tools = {"mouse1", "axeX"},
    hp = 10.0
  }, "sprites/plants/crape_myrtle_tree.png")

  api_define_object({
    id = "crape_myrtle_sapling",
    name = "Crape Myrtle Sapling",
    category = "Flora Trees",
    tooltip = "A crape myrtle sapling",
    tools = {"mouse1", "axeX"},
    growth = "flora_crape_myrtle_tree 350 400",
    item_sprite = "sprites/plants/crape_myrtle_seedling_inventory.png",
    shop_buy = 10,
    shop_sell = 10
  }, "sprites/plants/crape_myrtle_seedling.png") 

end
    category = "Flora Trees",
    tooltip = "A crape myrtle sapling",
    tools = {"mouse1", "axeX"},
    pickable = true,
    growth = "flora_crape_myrtle_tree 350 400"
  }

  api_define_object(crapemyrtle_sapling_def, "sprites/crape_myrtle_sapling.png")

  local crapemyrtle_seed_def = {
    id = "crape_myrtle_seed",
    name = "Crape Myrtle Seed",
    category = "Flora Trees",
    tooltip = "The seed of a crape myrtle tree",
    tools = {"mouse1", "axeX"},
    pickable = true,
    growth = "flora_crape_myrtle_sapling 1 2"
  }

  api_define_object(crapemyrtle_seed_def, "sprites/crape_myrtle_seed.png")

  

end
