--[[function define_quests()

    -- Intro to flower cuttings
    api_define_quest({
        id = "flora_quest_01",
        title = "Flower Cuttings",
        reqs = {"flower23@1"},
        icon = "flower23",
        reward = "flower24",
        unlock = {""},
        unlocked = true
        },{
            {text = "Welcome to the flora mod! We have just a couple things to go over really quickly."},
            {text = "The first is a new method of obtaining more plants: Plant cuttings. To obtain some, just right click on a plant."},
            {text = "Remember that not all plants can be probagated this way. Lavender can though, why dont you take a lavender cutting?"}
        },{
            {text = "Did you do it? Awesome, here have this rare orchid! Its the only one you'll get until you grow more, so dont loose it!"}
        }
    )

end--]]