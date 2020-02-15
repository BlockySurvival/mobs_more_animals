if not mobs.mod == "redo" then return end

mobs:register_mob("mobs_bugslive:bug", {
	type = "animal",
	visual = "mesh",
	visual_size = {x=0.5, y=0.5},
	mesh = "bug.x",
	collisionbox = {-0.1, -0.01, -0.1, 0.1, 0.1, 0.1},
	textures = {
		{"bug1.png"},
		{"bug2.png"},
		{"bug3.png"},
		{"bug4.png"},
		{"bug5.png"},
		{"bug6.png"},
		{"bug7.png"},
		{"bug8.png"}
	},
	stepheight = 1.1,
	runaway = true,
	jump_chance = 5,
	jump_height = 2,
	fly = false,
	walk_chance = 60,
	walk_velocity = 2,
	run_velocity = 4,
	fall_speed = -5,
	floats = 0,
	view_range = 3,
	passive = true,
	attack_type = "dogfight",
	damage = 1,
	reach = 1,
	pathfinding = false,
	group_attack = true,
	hp_min = 1,
	hp_max = 1,
	armor = 200,
	knock_back = 0,
	lava_damage = 1,
	fall_damage = 0,
	recovery_time = 0.25,
	blood_amount = 1,
	replace_what = {
		"farming:beanpole_5",
		"farming:cucumber_4",
		"farming:melon_8",
		"farming:pumpkin_8"
	},
	replace_with = "air",
	replace_rate = 10,
	do_custom = function(self, dtime)
			if math.random() > 0.5 then
				if self.floats == 0 then
					self.floats = 1
				else
					self.floats = 0
				end
			end
		end,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 50, 80, 0, true, "mobs_bugslive:bug")
	end
})

local l_spawn_enabled_bug = minetest.settings:get_bool("mobs_bugslive.spawn_enabled_bug", true)
if l_spawn_enabled_bug then
    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local l_spawn_on_bug = CSVtoTable(minetest.settings:get("mobs_bugslive.spawn_on_bug")) or {
		"default:dirt",
		"default:dirt_with_grass",
		"default:dirt_with_coniferous_litter",
		"default:dirt_with_dry_grass",
		"default:dirt_with_rainforest_litter",
		"default:stone",
		"ethereal:green_dirt_top"
	}
local l_spawn_near_bug = CSVtoTable(minetest.settings:get("mobs_bugslive.spawn_near_bug")) or {"air", "default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local l_spawn_min_light_bug = minetest.settings:get("mobs_bugslive.spawn_min_light_bug") or 0
local l_spawn_max_light_bug = minetest.settings:get("mobs_bugslive.spawn_max_light_bug") or 15
local l_spawn_interval_bug = minetest.settings:get("mobs_bugslive.spawn_interval_bug") or 30
local l_spawn_chance_bug = minetest.settings:get("mobs_bugslive.spawn_chance_bug") or 300000
local l_spawn_active_object_count_bug = minetest.settings:get("mobs_bugslive.spawn_active_object_count_bug") or 2
local l_spawn_min_height_bug = minetest.settings:get("mobs_bugslive.spawn_min_height_bug") or -25000
local l_spawn_max_height_bug = minetest.settings:get("mobs_bugslive.spawn_max_height_bug") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_bugslive:bug", l_spawn_on_bug, l_spawn_near_bug, l_spawn_min_light_bug, l_spawn_max_light_bug, l_spawn_interval_bug, l_spawn_chance_bug, l_spawn_active_object_count_bug, l_spawn_min_height_bug, l_spawn_max_height_bug)
end
mobs:register_egg("mobs_bugslive:bug", "Bug", "inv_bug.png", 0)
