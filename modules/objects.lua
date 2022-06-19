function log(group, msg)
    api_log(group, msg)
end

function define_objects()
-- Items
  local res api_define_item({
      id = "bamboo_stick",
      name = "Bamboo Stick",
      category = "Resource",
      tooltip = "A cut peice of bamboo, can be used to craft things.",
      shop_key = false,
      shop_buy = 0,
      shop_sell = 0
  }, "/sprites/items/bamboo_stick.png")

  api_log("Bamboo Stick defined", res)



-- Bee Special Produce
  local res api_define_item({
    id = "lavender_oil",
    name = "Lavender Oil",
    category = "Beekeeping",
    tooltip = "A pure drop of oil from a lavender flower, highly sought after by essential oil companies.",
    shop_key = false,
    shop_buy = 5,
    shop_sell = 5,
    bee_lore = "A pure drop of oil from a lavender flower, highly sought after by essential oil companies."
  }, "sprites/items/lavender_oil.png")

  api_log("Lavender Oil defined", res)

  local res api_define_item({
    id = "orchid_petal",
    name = "Orchid Petal",
    category = "Beekeeping",
    tooltip = "A petal from the Port Apico Ground Orchid, highly prized for its use in cosmetics and perfume.",
    shop_key = false,
    shop_buy = 15,
    shop_sell = 15,
    bee_lore = "A petal from the Port Apico Ground Orchid, highly prized for its use in cosmetics and perfume."
  }, "sprites/items/orchid_petal.png")

  api_log("Orchid Petal defined", res)

-- Walls
  local res api_define_wall({
    id = 20,
    name = "Bamboo Wall"
    }, "sprites/placeables/bamboo_wall.png")
    
  local bw_recipe = {
      {item = "flora_bamboo_stick", amount = 5}
  }
    
    api_define_recipe("t1", "wall20", bw_recipe, 4)
    
    api_log("Bamboo Wall Defined", res)

    --[[local res api_define_wall({
      id = 21,
      name = "Floral Wall"
      }, "sprites/placeables/floral_wall.png")
      
      api_log("Bamboo Wall Defined", res)--]]

-- Decor 
local res api_define_object({
  id = "gnome",
  name = "Garden Gnome",
  category = "Decoration",
  tooltip = "A garden gnome to protect your plants.",
  shop_key = false,
  pickable = true,
  place_grass = true,
  shop_buy = 15,
  shop_sell = 15
}, "/sprites/decor/gnome.png")


api_log("Garden Gnome defined", res)
    
      

end
