if not mobs.mod == "redo" then return end

dofile(minetest.get_modpath("mobs_fish") .. "/config.lua") -- Oversword

-- local variables
local l_cc_hand           = 25
local l_cc_net            = 80
local l_anims             = {
	speed_normal = 24,		speed_run = 24,
	stand_start = 1,		stand_end = 80,
	walk_start = 81,		walk_end = 155,
	run_start = 81,			run_end = 155
}
local l_visual            = "mesh"
local l_clown_visual_size = { x = .5, y = .5}
local l_trop_visual_size  = { x = 1, y = 1}
local l_clown_mesh        = "animal_clownfish.b3d"
local l_trop_mesh         = "fish_blue_white.b3d"
local l_clown_textures    = {
	{"clownfish.png"},
	{"clownfish2.png"}
}
local l_trop_textures     = {
	{"fish.png"},
	{"fish2.png"},
	{"fish3.png"}
}

-- Clownfish
mobs:register_mob("mobs_fish:clownfish", {
	type = "animal",
	lifetimer = 0,  -- doesn't despawn
	passive = true,
	hp_min = 1,
	hp_max = 4,
	armor = 100,
	collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
	rotate = 270,
	visual = l_visual,
	mesh = l_clown_mesh,
	textures = l_clown_textures,
	visual_size = l_clown_visual_size,
	makes_footstep_sound = false,
	stepheight = 0.1,
	fly = true,
	fly_in = "default:water_source",
	fall_speed = 0,
	view_range = 8,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	animation = l_anims,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, l_cc_hand, l_cc_net, 0, true, "mobs_fish:clownfish")
	end
})
if global_mobs_animal_pack_mobs_fish.spawn_enabled_clownfish then
--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_fish:clownfish", global_mobs_animal_pack_mobs_fish.spawn_on_clownfish, global_mobs_animal_pack_mobs_fish.spawn_near_clownfish, global_mobs_animal_pack_mobs_fish.spawn_min_light_clownfish, global_mobs_animal_pack_mobs_fish.spawn_max_light_clownfish, global_mobs_animal_pack_mobs_fish.spawn_interval_clownfish, global_mobs_animal_pack_mobs_fish.spawn_chance_clownfish, global_mobs_animal_pack_mobs_fish.spawn_active_object_count_clownfish, global_mobs_animal_pack_mobs_fish.spawn_min_height_clownfish, global_mobs_animal_pack_mobs_fish.spawn_max_height_clownfish)
end
mobs:register_egg("mobs_fish:clownfish", "Clownfish", "animal_clownfish_clownfish_item.png", 0)

-- Tropical fish
mobs:register_mob("mobs_fish:tropical", {
	type = "animal",
	lifetimer = 0,  -- doesn't despawn
	passive = true,
	hp_min = 1,
	hp_max = 4,
	armor = 100,
	collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
	rotate = 270,
	visual = l_visual,
	mesh = l_trop_mesh,
	textures = l_trop_textures,
	visual_size = l_trop_visual_size,
	makes_footstep_sound = false,
	stepheight = 0.1,
	fly = true,
	fly_in = "default:water_source",
	fall_speed = 0,
	view_range = 8,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	animation = l_anims,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, l_cc_hand, l_cc_net, 0, true, "mobs_fish:tropical")
	end
})
if global_mobs_animal_pack_mobs_fish.spawn_enabled_tropical then
--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_fish:tropical", global_mobs_animal_pack_mobs_fish.spawn_on_tropical, global_mobs_animal_pack_mobs_fish.spawn_near_tropical, global_mobs_animal_pack_mobs_fish.spawn_min_light_tropical, global_mobs_animal_pack_mobs_fish.spawn_max_light_tropical, global_mobs_animal_pack_mobs_fish.spawn_interval_tropical, global_mobs_animal_pack_mobs_fish.spawn_chance_tropical, global_mobs_animal_pack_mobs_fish.spawn_active_object_count_tropical, global_mobs_animal_pack_mobs_fish.spawn_min_height_tropical, global_mobs_animal_pack_mobs_fish.spawn_max_height_tropical)
end
mobs:register_egg("mobs_fish:tropical", "Tropical fish", "animal_fish_blue_white_fish_blue_white_item.png", 0)
