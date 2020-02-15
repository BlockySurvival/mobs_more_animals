if not mobs.mod == "redo" then return end

mobs:register_mob("mobs_walrus:walrus", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	specific_attack = {
		"mobs_animal:penguin",
		"mobs_fish:clownfish",
		"mobs_fish:tropical",
	},
    reach = 1,
	damage = 5,
	hp_min = 15,
	hp_max = 45,
	armor = 200,
	collisionbox = {-0.35, -0.5, -0.35, 0.35, 0.4, 0.35},
	visual = "mesh",
	mesh = "mobs_walrus_walrus.b3d",
	drawtype = "front",
	textures = {
		{"mobs_walrus_walrus1.png"},
		{"mobs_walrus_walrus2.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=20,y=20},
	makes_footstep_sound = false,
	sounds = {
		random = "walrus_random.ogg",
      war_cry = 'walrus_war_cry.ogg',
      attack = 'walrus_attack.ogg'
	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	jump_height = 1,
	stepheight = 1.1,
	floats = 1,
	-- drops raw meat when dead
	drops = {
		{name = "mobs:meat_raw",
		chance = 1, min = 2, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,	speed_run = 15,
		stand_start = 0,		stand_end = 50, -- head down/up
		walk_start = 55,		walk_end = 95, -- walk
		run_start = 55,		run_end = 95, -- walk
		punch_start = 100,		punch_end = 145, -- attack
	},
	follow = {
		"mobs_fish:clownfish",
		"mobs_fish:tropical",
		"mobs_animal:penguin",
		"mobs_animal:penguin_set",
	},
	view_range = 7,
	replace_rate = 50,
	replace_what = {"group:flora"},
	replace_with = "air",
	fly = false,
	fly_in = "default:water_source",
})

local l_spawn_enabled_walrus = minetest.settings:get_bool("mobs_walrus.spawn_enabled_walrus", true)
if l_spawn_enabled_walrus then


local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end
    
local l_spawn_on_walrus = CSVtoTable(minetest.settings:get("mobs_walrus.spawn_on_walrus")) or {"default:dirt_with_snow", "default:snowblock", "default:ice"}
local l_spawn_min_light_walrus = minetest.settings:get("mobs_walrus.spawn_min_light_walrus") or 0
local l_spawn_max_light_walrus = minetest.settings:get("mobs_walrus.spawn_max_light_walrus") or 20
local l_spawn_chance_walrus = minetest.settings:get("mobs_walrus.spawn_chance_walrus") or 300000
local l_spawn_active_object_count_walrus = minetest.settings:get("mobs_walrus.spawn_active_object_count_walrus") or 1
local l_spawn_max_height_walrus = minetest.settings:get("mobs_walrus.spawn_max_height_walrus") or 5000
    
mobs:register_spawn("mobs_walrus:walrus", l_spawn_on_walrus, l_spawn_max_light_walrus, l_spawn_min_light_walrus, l_spawn_chance_walrus, l_spawn_active_object_count_walrus, l_spawn_max_height_walrus)
end
mobs:register_egg("mobs_walrus:walrus", "Walrus", "default_grass.png", 1)

minetest.register_alias_force("arctic_life:walrus", "mobs_walrus:walrus")
