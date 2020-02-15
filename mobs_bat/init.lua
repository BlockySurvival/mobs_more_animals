if not mobs.mod == "redo" then return end

-- local variables
local l_skins = {
	{"animal_bat.png"},
	{"animal_bat.png^[colorize:black:150"}
}

mobs:register_mob("mobs_bat:bat", {
	type = "animal",
	damage = 1,
	reach = 1,
	attack_type = "dogfight",
	hp_min = 7,
	hp_max = 12,
	armor = 130,
	collisionbox = {-0.4,-0.4,-0.4, 0.4,0.4,0.4},
	visual = "mesh",
	mesh = "animal_bat.b3d",
	textures = l_skins,
	rotate = 270,
	walk_velocity = 10,
	run_velocity = 23,
	fall_speed = 0,
	stepheight = 3,
	sounds = {
		random = "animal_bat",
		war_cry = "animal_bat",
		damage = "animal_bat",
		attack = "animal_bat",
	},
	fly = true,
	water_damage = 2,
	lava_damage = 10,
	light_damage = 0,
	view_range = 10,
	animation = {
		speed_normal = 24,		speed_run = 24,
		stand_start = 30,		stand_end = 59,
		walk_start = 30,		walk_end = 59,
		run_start = 30,			run_end = 59,
		punch_start = 60,		punch_end = 89
	},
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 5, 60, 0, true, "mobs_bat:bat")
	end,
	drops = {
		{name="mobs:meat_raw", chance=1, min=0, max=1},
	},
})

local l_spawn_enabled_bat = minetest.settings:get_bool("mobs_bat.spawn_enabled_bat", true)

if l_spawn_enabled_bat then
    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local l_spawn_on_bat = CSVtoTable(minetest.settings:get("mobs_bat.spawn_on_bat")) or {"air"}
local l_spawn_near_bat = CSVtoTable(minetest.settings:get("mobs_bat.spawn_near_bat")) or {"default:stone"}
local l_spawn_min_light_bat = minetest.settings:get("mobs_bat.spawn_min_light_bat") or 0
local l_spawn_max_light_bat = minetest.settings:get("mobs_bat.spawn_max_light_bat") or 6
local l_spawn_interval_bat = minetest.settings:get("mobs_bat.spawn_interval_bat") or 30
local l_spawn_chance_bat = minetest.settings:get("mobs_bat.spawn_chance_bat") or 300000
local l_spawn_active_object_count_bat = minetest.settings:get("mobs_bat.spawn_active_object_count_bat") or 2
local l_spawn_min_height_bat = minetest.settings:get("mobs_bat.spawn_min_height_bat") or -25000
local l_spawn_max_height_bat = minetest.settings:get("mobs_bat.spawn_max_height_bat") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_bat:bat",  l_spawn_on_bat, l_spawn_near_bat, l_spawn_min_light_bat, l_spawn_max_light_bat, l_spawn_interval_bat, l_spawn_chance_bat, l_spawn_active_object_count_bat, l_spawn_min_height_bat, l_spawn_max_height_bat)
end
mobs:register_egg("mobs_bat:bat", "Bat", "animal_bat_inv.png", 0)
