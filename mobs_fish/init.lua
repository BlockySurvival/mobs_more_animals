if not mobs.mod == "redo" then return end

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

local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

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

local water_level = minetest.setting_get("water_level") or 0
local l_spawn_enabled_clownfish = minetest.settings:get_bool("mobs_fish.spawn_enabled_clownfish", true)
if l_spawn_enabled_clownfish then
    
local l_spawn_on_clownfish = CSVtoTable(minetest.settings:get("mobs_fish.spawn_on_clownfish")) or {"default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local l_spawn_near_clownfish = CSVtoTable(minetest.settings:get("mobs_fish.spawn_near_clownfish")) or {"default:sand","default:dirt","group:seaplants","group:seacoral"}
local l_spawn_min_light_clownfish = minetest.settings:get("mobs_fish.spawn_min_light_clownfish") or 5
local l_spawn_max_light_clownfish = minetest.settings:get("mobs_fish.spawn_max_light_clownfish") or 20
local l_spawn_interval_clownfish = minetest.settings:get("mobs_fish.spawn_interval_clownfish") or 30
local l_spawn_chance_clownfish = minetest.settings:get("mobs_fish.spawn_chance_clownfish") or 100000
local l_spawn_active_object_count_clownfish = minetest.settings:get("mobs_fish.spawn_active_object_count_clownfish") or 1
local l_spawn_min_height_clownfish = minetest.settings:get("mobs_fish.spawn_min_height_clownfish") or -50
local l_spawn_max_height_clownfish = minetest.settings:get("mobs_fish.spawn_max_height_clownfish") or water_level - 1

--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_fish:clownfish", l_spawn_on_clownfish, l_spawn_near_clownfish, l_spawn_min_light_clownfish, l_spawn_max_light_clownfish, l_spawn_interval_clownfish, l_spawn_chance_clownfish, l_spawn_active_object_count_clownfish, l_spawn_min_height_clownfish, l_spawn_max_height_clownfish)
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

local l_spawn_enabled_tropical_fish = minetest.settings:get_bool("mobs_fish.spawn_enabled_tropical_fish", true)
if l_spawn_enabled_tropical_fish then

local l_spawn_on_tropical_fish = CSVtoTable(minetest.settings:get("mobs_fish.spawn_on_tropical_fish")) or {"default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local l_spawn_near_tropical_fish = CSVtoTable(minetest.settings:get("mobs_fish.spawn_near_tropical_fish")) or {"default:sand","default:dirt","group:seaplants","group:seacoral"}
local l_spawn_min_light_tropical_fish = minetest.settings:get("mobs_fish.spawn_min_light_tropical_fish") or 5
local l_spawn_max_light_tropical_fish = minetest.settings:get("mobs_fish.spawn_max_light_tropical_fish") or 20
local l_spawn_interval_tropical_fish = minetest.settings:get("mobs_fish.spawn_interval_tropical_fish") or 30
local l_spawn_chance_tropical_fish = minetest.settings:get("mobs_fish.spawn_chance_tropical_fish") or 100000
local l_spawn_active_object_count_tropical_fish = minetest.settings:get("mobs_fish.spawn_active_object_count_tropical_fish") or 1
local l_spawn_min_height_tropical_fish = minetest.settings:get("mobs_fish.spawn_min_height_tropical_fish") or -50
local l_spawn_max_height_tropical_fish = minetest.settings:get("mobs_fish.spawn_max_height_tropical_fish") or water_level - 1

--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_fish:tropical", l_spawn_on_tropical_fish, l_spawn_near_tropical_fish, l_spawn_min_light_tropical_fish, l_spawn_max_light_tropical_fish, l_spawn_interval_tropical_fish, l_spawn_chance_tropical_fish, l_spawn_active_object_count_tropical_fish, l_spawn_min_height_tropical_fish, l_spawn_max_height_tropical_fish)
end
mobs:register_egg("mobs_fish:tropical", "Tropical fish", "animal_fish_blue_white_fish_blue_white_item.png", 0)
