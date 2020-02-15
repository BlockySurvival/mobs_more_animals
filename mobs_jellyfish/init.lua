if not mobs.mod == "redo" then return end

mobs:register_mob("mobs_jellyfish:jellyfish", {
	lifetimer = 0,  -- doesn't despawn
	type = "animal",
	attack_type = "dogfight",
	damage = 5,
	reach = 1,
	hp_min = 5,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
	visual = "mesh",
	mesh = "jellyfish.b3d",
	textures = {
		{"jellyfish.png"},
		{"jellyfish.png^[colorize:black:150"},
		{"jellyfish.png^[colorize:red:150"},
		{"jellyfish.png^[colorize:violet:150"},
	},
	makes_footstep_sound = false,
	walk_velocity = 0.1,
	run_velocity = 0.1,
	fly = true,
	fly_in = "default:water_source",
	fall_speed = 0,
	view_range = 10,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 80, 100, 0, true, "mobs_jellyfish:jellyfish")
	end
})

local l_spawn_enabled_jellyfish = minetest.settings:get_bool("mobs_jellyfish.spawn_enabled_jellyfish", true)
if l_spawn_enabled_jellyfish then

    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local l_spawn_on_jellyfish = CSVtoTable(minetest.settings:get("mobs_jellyfish.spawn_on_jellyfish")) or {"default:water_source"}
local l_spawn_near_jellyfish = CSVtoTable(minetest.settings:get("mobs_jellyfish.spawn_near_jellyfish")) or {"default:water_flowing","default:water_source"}
local l_spawn_min_light_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_min_light_jellyfish") or 1
local l_spawn_max_light_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_max_light_jellyfish") or 14
local l_spawn_interval_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_interval_jellyfish") or 30
local l_spawn_chance_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_chance_jellyfish") or 300000
local l_spawn_active_object_count_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_active_object_count_jellyfish") or 1
local l_spawn_min_height_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_min_height_jellyfish") or -50
local l_spawn_max_height_jellyfish = minetest.settings:get("mobs_jellyfish.spawn_max_height_jellyfish") or -1

--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_jellyfish:jellyfish", l_spawn_on_jellyfish, l_spawn_near_jellyfish, l_spawn_min_light_jellyfish, l_spawn_max_light_jellyfish, l_spawn_interval_jellyfish, l_spawn_chance_jellyfish, l_spawn_active_object_count_jellyfish, l_spawn_min_height_jellyfish, l_spawn_max_height_jellyfish)
end
mobs:register_egg("mobs_jellyfish:jellyfish", "Jellyfish", "jellyfish_inv.png", 0)
