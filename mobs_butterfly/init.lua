if not mobs.mod == "redo" then return end

dofile(minetest.get_modpath("mobs_butterfly") .. "/config.lua") -- Oversword

-- local variables
local l_skins = {
	{"bf1.png^bf2.png^bf3.png^bf4.png^bf5.png"},
	{"(bf1.png^[colorize:orange)^(bf2.png^[colorize:violet)^(bf3.png^[colorize:yellow)^(bf4.png^[colorize:cyan)^(bf5.png^[colorize:black)"},
	{"(bf1.png^[colorize:magenta)^(bf2.png^[colorize:green)^(bf3.png^[colorize:red)^(bf4.png^[colorize:blue)^(bf5.png^[colorize:white)"},
	{"(bf1.png^[colorize:yellow)^(bf2.png^[colorize:cyan)^(bf3.png^[colorize:green)^(bf4.png^[colorize:violet)^(bf5.png^[colorize:darkgray)"},
	{"(bf1.png^[colorize:pink)^(bf2.png^[colorize:white)^(bf3.png^[colorize:blue)^(bf4.png^[colorize:orange)^(bf5.png^[colorize:gray)"},
	{"(bf1.png^[colorize:darkgreen)^(bf2.png^[colorize:brown)^(bf3.png^[colorize:black)^(bf4.png^[colorize:darkgray)^(bf5.png^[colorize:red)"}
}

-- Butterfly
mobs:register_mob("mobs_butterfly:butterfly", {
	type = "animal",
	passive = true,
	hp_min = 1,
	hp_max = 2,
	armor = 100,
	collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
	visual = "mesh",
	mesh = "mobf_butterfly.x",
	textures = l_skins,
	walk_velocity = 2,
	fall_speed = 0,
	stepheight = 3,
	fly = true,
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	fall_damage = 0,
	view_range = 10,
	animation = {
		speed_normal = 15,	speed_run = 30,
		stand_start = 0,	stand_end = 90,
		walk_start = 0,		walk_end = 90,
	},
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 10, 80, 0, true, "mobs_butterfly:butterfly")
	end
})

if global_mobs_animal_pack_mobs_butterfly.spawn_enabled_butterfly then
--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_butterfly:butterfly", global_mobs_animal_pack_mobs_butterfly.spawn_on_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_near_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_min_light_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_max_light_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_interval_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_chance_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_active_object_count_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_min_height_butterfly, global_mobs_animal_pack_mobs_butterfly.spawn_max_height_butterfly)
end
mobs:register_egg("mobs_butterfly:butterfly", "Butterfly", "default_cloud.png", 1)
