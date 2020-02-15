if not mobs.mod == "redo" then return end

-- local variables
local l_skins_gull = {
	{"animal_gull_mesh.png"},
	{"gull_black.png"},
	{"gull_gray.png"},
	{"gull_grayblue.png"}
}
local l_skins_bird = {
	{"bird_blueish.png"},
	{"bird_brown.png"},
	{"bird_gray.png"},
	{"bird_grayblue.png"},
	{"bird_red.png"},
	{"bird_redish.png"}
}
local l_anims = {
	speed_normal = 24,	speed_run = 24,
	stand_start = 1,	stand_end = 95,
	walk_start = 1,		walk_end = 95,
	run_start = 1,		run_end = 95
}
local l_gull_model			= "mobs_birds_gull.b3d"
local l_thrush_model		= "mobs_birds_thrush.b3d"
local l_egg_texture			= "default_cloud.png"
local l_capture_chance_h	= 5
local l_capture_chance_n	= 60
    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

-- gulls
mobs:register_mob("mobs_birds:gull", {
	type = "animal",
	passive = true,
	hp_min = 5,
	hp_max = 10,
	armor = 100,
	collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
	visual = "mesh",
	mesh = l_gull_model,
	textures = l_skins_gull,
	rotate = 270,
	walk_velocity = 4,
	run_velocity = 6,
	fall_speed = 0,
	stepheight = 3,
	fly = true,
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	view_range = 14,
	animation = l_anims,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, "mobs_birds:gull")
	end,
	drops = {
		{name="mobs:meat_raw", chance=1, min=0, max=2},
		{name="mobs:chicken_feather", chance=1, min=0, max=2}
	},
})

local l_spawn_enabled_gull = minetest.settings:get_bool("mobs_birds.spawn_enabled_gull", true)
if l_spawn_enabled_gull then

local l_spawn_on_gull = CSVtoTable(minetest.settings:get("mobs_birds.spawn_on_gull")) or {"air"}
local l_spawn_near_gull = CSVtoTable(minetest.settings:get("mobs_birds.spawn_near_gull")) or {"default:water_source", "default:water_flowing"}
local l_spawn_min_light_gull = minetest.settings:get("mobs_birds.spawn_min_light_gull") or 5
local l_spawn_max_light_gull = minetest.settings:get("mobs_birds.spawn_max_light_gull") or 20
local l_spawn_interval_gull = minetest.settings:get("mobs_birds.spawn_interval_gull") or 30
local l_spawn_chance_gull = minetest.settings:get("mobs_birds.spawn_chance_gull") or 240000
local l_spawn_active_object_count_gull = minetest.settings:get("mobs_birds.spawn_active_object_count_gull") or 1
local l_spawn_min_height_gull = minetest.settings:get("mobs_birds.spawn_min_height_gull") or 0
local l_spawn_max_height_gull = minetest.settings:get("mobs_birds.spawn_max_height_gull") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_birds:gull", l_spawn_on_gull, l_spawn_near_gull, l_spawn_min_light_gull, l_spawn_max_light_gull, l_spawn_interval_gull, l_spawn_chance_gull, l_spawn_active_object_count_gull, l_spawn_min_height_gull, l_spawn_max_height_gull)
end
mobs:register_egg("mobs_birds:gull", "Gull", l_egg_texture, 1)

-- large birds
mobs:register_mob("mobs_birds:bird_lg", {
	type = "animal",
	passive = true,
	hp_min = 5,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.5, -0.3, -0.5, 0.5, 0.3, 0.5},
	visual = "mesh",
	mesh = l_thrush_model,
	textures = l_skins_bird,
	visual_size = {x=.5, y=.5},
	rotate = 270,
	walk_velocity = 4,
	run_velocity = 6,
	fall_speed = 0,
	stepheight = 3,
	fly = true,
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	view_range = 12,
	animation = l_anims,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, "mobs_birds:bird_lg")
	end,
	drops = {
		{name="mobs:meat_raw", chance=1, min=0, max=2},
		{name="mobs:chicken_feather", chance=1, min=0, max=2}
	},
})

local l_spawn_enabled_bird_lg = minetest.settings:get_bool("mobs_birds.spawn_enabled_bird_lg", true)
if l_spawn_enabled_bird_lg then

local l_spawn_on_bird_lg = CSVtoTable(minetest.settings:get("mobs_birds.spawn_on_bird_lg")) or {"air"}
local l_spawn_near_bird_lg = CSVtoTable(minetest.settings:get("mobs_birds.spawn_near_bird_lg")) or {"default:leaves", "default:pine_needles", "default:jungleleaves", "default:cactus"}
local l_spawn_min_light_bird_lg = minetest.settings:get("mobs_birds.spawn_min_light_bird_lg") or 5
local l_spawn_max_light_bird_lg = minetest.settings:get("mobs_birds.spawn_max_light_bird_lg") or 20
local l_spawn_interval_bird_lg = minetest.settings:get("mobs_birds.spawn_interval_bird_lg") or 30
local l_spawn_chance_bird_lg = minetest.settings:get("mobs_birds.spawn_chance_bird_lg") or 360000
local l_spawn_active_object_count_bird_lg = minetest.settings:get("mobs_birds.spawn_active_object_count_bird_lg") or 1
local l_spawn_min_height_bird_lg = minetest.settings:get("mobs_birds.spawn_min_height_bird_lg") or 0
local l_spawn_max_height_bird_lg = minetest.settings:get("mobs_birds.spawn_max_height_bird_lg") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_birds:bird_lg", l_spawn_on_bird_lg, l_spawn_near_bird_lg, l_spawn_min_light_bird_lg, l_spawn_max_light_bird_lg, l_spawn_interval_bird_lg, l_spawn_chance_bird_lg, l_spawn_active_object_count_bird_lg, l_spawn_min_height_bird_lg, l_spawn_max_height_bird_lg)
end
mobs:register_egg("mobs_birds:bird_lg", "Large bird", l_egg_texture, 1)

-- small birds
mobs:register_mob("mobs_birds:bird_sm", {
	type = "animal",
	passive = true,
	hp_min = 2,
	hp_max = 5,
	armor = 100,
	collisionbox = {-0.25, -0.3, -0.25, 0.25, 0.3, 0.25},
	visual = "mesh",
	mesh = l_thrush_model,
	textures = l_skins_bird,
	visual_size = {x=.25, y=.25},
	rotate = 270,
	walk_velocity = 4,
	run_velocity = 6,
	fall_speed = 0,
	stepheight = 3,
	fly = true,
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	view_range = 10,
	animation = l_anims,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, "mobs_birds:bird_sm")
	end,
	drops = {
		{name="mobs:meat_raw", chance=1, min=0, max=1},
		{name="mobs:chicken_feather", chance=1, min=0, max=1}
	},
})

local l_spawn_enabled_bird_sm = minetest.settings:get_bool("mobs_birds.spawn_enabled_bird_sm", true)
if l_spawn_enabled_bird_sm then

local l_spawn_on_bird_sm = CSVtoTable(minetest.settings:get("mobs_birds.spawn_on_bird_sm")) or {"air"}
local l_spawn_near_bird_sm = CSVtoTable(minetest.settings:get("mobs_birds.spawn_near_bird_sm")) or {"default:leaves", "default:pine_needles", "default:jungleleaves", "default:cactus"}
local l_spawn_min_light_bird_sm = minetest.settings:get("mobs_birds.spawn_min_light_bird_sm") or 5
local l_spawn_max_light_bird_sm = minetest.settings:get("mobs_birds.spawn_max_light_bird_sm") or 20
local l_spawn_interval_bird_sm = minetest.settings:get("mobs_birds.spawn_interval_bird_sm") or 30
local l_spawn_chance_bird_sm = minetest.settings:get("mobs_birds.spawn_chance_bird_sm") or 360000
local l_spawn_active_object_count_bird_sm = minetest.settings:get("mobs_birds.spawn_active_object_count_bird_sm") or 1
local l_spawn_min_height_bird_sm = minetest.settings:get("mobs_birds.spawn_min_height_bird_sm") or 0
local l_spawn_max_height_bird_sm = minetest.settings:get("mobs_birds.spawn_max_height_bird_sm") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_birds:bird_sm", l_spawn_on_bird_sm, l_spawn_near_bird_sm, l_spawn_min_light_bird_sm, l_spawn_max_light_bird_sm, l_spawn_interval_bird_sm, l_spawn_chance_bird_sm, l_spawn_active_object_count_bird_sm, l_spawn_min_height_bird_sm, l_spawn_max_height_bird_sm)
end
mobs:register_egg("mobs_birds:bird_sm", "Small bird", l_egg_texture, 1)
