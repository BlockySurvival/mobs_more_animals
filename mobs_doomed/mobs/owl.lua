mobs:register_mob("mobs_doomed:owl", {
    type = "animal",
    passive = true,
    hp_min = 12,
    hp_max = 22,
    armor = 130,
    collisionbox = {-0.3, -0.5, -0.3, 0.2, 0.2, 0.2},
    visual = "mesh",
    mesh = "owl.b3d",
    textures = {
        {"mobs_doomed_owl.png"},
    },
    blood_texture = "mobs_blood.png",
    visual_size = {x=2, y=2},
    makes_footstep_sound = false,
    walk_velocity = 0,
    run_velocity = 0,
    jump = false,
    water_damage = 2,
    lava_damage = 2,
    light_damage = 0,
    view_range = 1,
    local follow = {}
        if minetest.get_modpath("farming") then
	        table.insert(follow, "farming:seed_wheat")
	        table.insert(follow, "farming:seed_cotton")
            end
        if minetest.get_modpath("mobs_bugslive") then
	        table.insert(follow, "mobs_bugslive:bug")
            end
        if minetest.get_modpath("mobs_butterfly") then
	        table.insert(follow, "mobs_butterfly:butterfly")
            end
        if minetest.get_modpath("butterflies") then
	        table.insert(follow, "butterflies:butterfly_red")
	        table.insert(follow, "butterflies:butterfly_violet")
	        table.insert(follow, "butterflies:butterfly_white")
            end
        if minetest.get_modpath("fireflies") then
	        table.insert(follow, "fireflies:firefly")
            end
        if minetest.get_modpath("mobs_animals") then
	        table.insert(follow, "mobs_animals:rat")
	        table.insert(follow, "mobs_animals:bee")
	        table.insert(follow, "mobs_animals:bunny")
	        table.insert(follow, "mobs_animals:chicken")
            end
        if minetest.get_modpath("mobs_fish") then
	        table.insert(follow, "mobs_fish:tropical")
	        table.insert(follow, "mobs_fish:clownfish")
            end
        if minetest.get_modpath("mobs_better_rat") then
	        table.insert(follow, "mobs_better_rat:rat")
            end
        if minetest.get_modpath("mobs_bat") then
	        table.insert(follow, "mobs_bat:bat")
            end
        if minetest.get_modpath("mobs_birds") then
	        table.insert(follow, "mobs_birds:bird_sm")
            end
        if minetest.get_modpath("mobs_doomed") then
	        table.insert(follow, "mobs_doomed:hedgehog")
            end

    follow = follow

    drops = {
        {name="mobs:meat_raw", chance=1, min=0, max=2},
        {name="mobs:chicken_feather", chance=1, min=0, max=2}
    },
    do_custom = function(self)
        local daytime = minetest.get_timeofday()*24000
        if daytime <=6000 then
        self.object:set_properties({
                            textures = {"mobs_doomed_owl_awake.png"},
                            mesh = "owl.b3d",
                    })
        elseif daytime >=6000 then
        self.object:set_properties({
                            textures = {"mobs_doomed_owl.png"},
                            mesh = "owl.b3d",
                    })
        end
    end,
    animation = {
        speed_normal = 1,
        walk_start = 1,
        walk_end = 50,
    },
    on_rightclick = function(self, clicker)

        if mobs:feed_tame(self, clicker, 8, true, true) then
            return
        end
        if mobs:protect(self, clicker) then return end
        mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
    end,
})

mobs:register_egg("mobs_doomed:owl", "Owl", "default_tree.png", 1)

mobs:spawn_specific("mobs_doomed:owl",
                    {"group:leaves"},
                    {"air"},
                    0, 14, 30, 300000, 2, 0, 5000, false)
