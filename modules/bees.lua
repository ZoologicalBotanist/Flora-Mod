function log(group, msg)
  api_log(group, msg)
end

function define_bee()
  -- BIDS are _Z
  -- Glass Bee
  local res = api_define_bee({
    id = "glassbee",
    title = "Glass",
    latin = "Florapis Mellaseta",
    hint = "An artificial bee, they are often sold by florists.",
    desc = "An artificial bee, these bees were created by florists to produce large amounts of glass for use in building greenhouses.",
    lifespan = {"Normal"},
    productivity = {"Normal"},
    fertility = {"Normal"},
    stability = {"Normal"},
    behaviour = {"Diurnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = false,
    produce = "flora_glass",
    chance = 100,
    requirement = "",
    shop_buy = 50,
    shop_sell = 50,
    bid = "GZ"
  }, 
    "sprites/bees/glass_bee_item.png", "sprites/bees/glass_bee_shiny.png", 
    "sprites/bees/glass_bee_hd.png",
    {r=191, g=206, b=212},
    "sprites/bees/glass_bee_mag.png",
    "Are you sure its not going to break?",
    "Thanks to local Port APICO beekeeper, the Glass Bee is... far more common in nature than one would expect from something manmade."
  )
  api_log("Combristle Bee defined", res)
  -- Combristle Bee
  local res = api_define_bee({
    id = "combristle",
    title = "Combristle",
    latin = "Florapis Mellaseta",
    hint = "This short-lived bee can often be found amongst combristle flowers",
    desc = "These bees live very short lives, likely as a result of feeding almost exclusively on combristle nectar. To make up for it however, the queens are extremely fertile.",
    lifespan = {"Rapid", "Hyper"},
    productivity = {"Fastest", "Fast"},
    fertility = {"Swarming", "Prolific"},
    stability = {"Normal", "Stable"},
    behaviour = {"Diurnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = false,
    produce = "honeydew",
    chance = 100,
    requirement = "",
    bid = "CZ"
  }, 
    "sprites/bees/combristle_bee_item.png", "sprites/bees/combristle_bee_shiny.png", 
    "sprites/bees/combristle_bee_hd.png",
    {r=168, g=137, b=126},
    "sprites/bees/combristle_bee_mag.png",
    "Shortest Lived Bee brought back from the brink!",
    "Thanks to the efforts of a local Port APICO beekeeper, the Combristle Bee is buzzing around once more!"
  )
  api_log("Combristle Bee defined", res)

  -- Lavender Bee
  local res = api_define_bee({
    id = "lavender",
    title = "Lavender",
    latin = "Florapis Lavandula",
    hint = "This delightful smelling bee can often be found amongst lavender flowers",
    desc = "These bees are most known for their scent, as well as the oil that they produce. Just know that they feed only on the nectar from lavender flowers!",
    lifespan = {"Normal"},
    productivity = {"Fast", "Normal"},
    fertility = {"Swarming", "Prolific"},
    stability = {"Normal"},
    behaviour = {"Diurnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = false,
    produce = "flora_lavender_oil",
    chance = 100,
    requirement = "",
    bid = "LZ"
  }, 
    "sprites/bees/lavender_bee_item.png", "sprites/bees/lavender_bee_shiny.png", 
    "sprites/bees/lavender_bee_hd.png",
    {r=209, g=166, b=225},
    "sprites/bees/lavender_bee_mag.png",
    "The scent of Lavender Bees fills the air!",
    "Thanks to the efforts of a local Port APICO beekeeper, folks can enjoy the floral scent of the Lavender Bee again!"
  )
  api_log("Lavender Bee defined", res)

  -- Orchid Bee
  local res = api_define_bee({
    id = "orchid",
    title = "Orchid",
    latin = "Florapis Orchis",
    hint = "A rare bee only found amongst Port Apico Ground Orchids",
    desc = "A very rare species of bee, they are known to nest in the roots of the Port Apico Ground Orchid. Instead of harming the plant, they have a symbiotic relationship with it, protecting it from danger in exchange for shelter.",
    lifespan = {"Normal", "Long"},
    productivity = {"Normal"},
    fertility = {"Swarming", "Prolific"},
    stability = {"Normal"},
    behaviour = {"Cathemeral"},
    climate = {"Tropic"},
    rainlover = true,
    snowlover = false,
    grumpy = true,
    calming = {"flower24"},
    produce = "flora_orchid_petal",
    chance = 100,
    requirement = "",
    bid = "OZ"
  }, 
    "sprites/bees/orchid_bee_item.png", "sprites/bees/orchid_bee_shiny.png", 
    "sprites/bees/orchid_bee_hd.png",
    {r=231, g=183, b=229},
    "sprites/bees/orchid_bee_mag.png",
    "The Orchid Bee returns once more!",
    "The unwavering dedication of local Port Apico Beekeeper has resulted in yet another miracle: The return of the Orchid Bee!"
  )
  api_log("Orchid Bee defined", res)
end