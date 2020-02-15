if not mobs.mod == "redo" then return end

mobs:register_mob("mobs_giraffe:jeraf", {
	type = "animal",
	visual = "mesh",
	mesh = "mobs_jeraf.x",
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	animation = {
		speed_normal = 15,	speed_run = 24,
		stand_start = 0,	stand_end = 30,
		walk_start = 70,	walk_end = 100,
		run_start = 70,		run_end = 100
	},
	textures = {
		{"mobs_jeraf.png"},
	},
	stepheight = 2.1,
	fear_height = 3,
	jump = false,
	jump_height = 4,
	fly = false,
	walk_chance = 75,
	walk_velocity = 2,
	run_velocity = 4,
	view_range = 16,
	passive = true,
	attack_type = "dogfight",
	damage = 10,
	reach = 3,
	runaway = true,
	pathfinding = false,
	hp_min = 8,
	hp_max = 12,
	armor = 200,
	knock_back = 1,
	lava_damage = 5,
	fall_damage = 10,
	water_damage = 1,
	makes_footstep_sound = true,
	knock_back = 1,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
		{name = "mobs:leather", chance = 1, min = 1, max = 4}
	},
	replace_what = {
		"default:acacia_leaves",
		"default:acacia_sapling",
		"default:acacia_bush_leaves",
		"default:acacia_bush_sapling"
	},
	replace_with = "air",
	replace_rate = 20,
	follow = {
		"default:acacia_leaves",
		"default:acacia_sapling",
		"default:acacia_bush_leaves",
		"default:acacia_bush_sapling"
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 10, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 0, 80, false, nil) then return end
	end
})

local l_spawn_enabled_giraffe = minetest.settings:get_bool("mobs_giraffe.spawn_enabled_giraffe", true)
if l_spawn_enabled_giraffe then

    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local water_level = minetest.setting_get("water_level") or 0
local l_spawn_on_giraffe = CSVtoTable(minetest.settings:get("mobs_giraffe.spawn_on_giraffe")) or {"default:sand", "default:desert_sand", "default:dirt_with_dry_grass"}
local l_spawn_near_giraffe = CSVtoTable(minetest.settings:get("mobs_giraffe.spawn_near_giraffe")) or nil
local l_spawn_min_light_giraffe = minetest.settings:get("mobs_giraffe.spawn_min_light_giraffe") or 10
local l_spawn_max_light_giraffe = minetest.settings:get("mobs_giraffe.spawn_max_light_giraffe") or nil
local l_spawn_interval_giraffe = minetest.settings:get("mobs_giraffe.spawn_interval_giraffe") or nil
local l_spawn_chance_giraffe = minetest.settings:get("mobs_giraffe.spawn_chance_giraffe") or 300000
local l_spawn_active_object_count_giraffe = minetest.settings:get("mobs_giraffe.spawn_active_object_count_giraffe") or nil
local l_spawn_min_height_giraffe = minetest.settings:get("mobs_giraffe.spawn_min_height_giraffe") or water_level + 1
local l_spawn_max_height_giraffe = minetest.settings:get("mobs_giraffe.spawn_max_height_giraffe") or 5000

mobs:spawn({
	name = "mobs_giraffe:jeraf",
	nodes = l_spawn_on_giraffe,
	neighbors = l_spawn_near_giraffe,
	min_light = l_spawn_min_light_giraffe,
	max_light = l_spawn_max_light_giraffe,
	chance = l_spawn_chance_giraffe,
	interval = l_spawn_interval_giraffe,
	active_object_count = l_spawn_active_object_count_giraffe,
	min_height = l_spawn_min_height_giraffe,
	max_height = l_spawn_max_height_giraffe,
	day_toggle = true,
})
end
mobs:register_egg("mobs_giraffe:jeraf", "Giraffe", "wool_yellow.png", 1)
