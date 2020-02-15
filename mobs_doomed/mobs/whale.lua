mobs:register_mob("mobs_doomed:whale", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 52,
	hp_max = 82,
	armor = 230,
	collisionbox = {-0.9, -1.2, -0.9, 0.9, 0.9, 0.9},
	visual = "mesh",
	mesh = "whale.b3d",
	textures = {
		{"mobs_doomed_whale.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2.5, y=2.5},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = false,
	stepheight = 1.5,
	fall_damage = 0,
	fall_speed = -6,
	fly = true,
	fly_in = "default:water_source",
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"fishing:fish_cooked"},
	view_range = 14,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 15, max = 30},
		{name = "basic_materials:oil_extract", chance = 1, min = 15, max = 30},
		{name = "bonemeal:bone", chance = 1, min = 10, max = 20},
	},
	sounds = {
      random = "whale_1",
      death = "whale_1",
      distance = 128,
	},
	animation = {
		speed_normal = 5,
		speed_run = 10,
		walk_start = 2,
		walk_end = 39,
		stand_start = 2,
		stand_end = 39,
		run_start = 2,
		run_end = 39,
	},
})

mobs:register_egg("mobs_doomed:whale", "Whale", "wool_blue.png", 1)

local l_spawn_enabled_whale = minetest.settings:get_bool("mobs_doomed.spawn_enabled_whale", true)
if l_spawn_enabled_whale then

local l_spawn_on_whale = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_on_whale")) or {"default:water_source"}
local l_spawn_near_whale = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_near_whale")) or {"default:water_source"}
local l_spawn_min_light_whale = minetest.settings:get("mobs_doomed.spawn_min_light_whale") or 0
local l_spawn_max_light_whale = minetest.settings:get("mobs_doomed.spawn_max_light_whale") or 14
local l_spawn_interval_whale = minetest.settings:get("mobs_doomed.spawn_interval_whale") or 30
local l_spawn_chance_whale = minetest.settings:get("mobs_doomed.spawn_chance_whale") or 3000000
local l_spawn_active_object_count_whale = minetest.settings:get("mobs_doomed.spawn_active_object_count_whale") or 1
local l_spawn_min_height_whale = minetest.settings:get("mobs_doomed.spawn_min_height_whale") or -40
local l_spawn_max_height_whale = minetest.settings:get("mobs_doomed.spawn_max_height_whale") or 0

mobs:spawn_specific("mobs_doomed:whale", l_spawn_on_whale, l_spawn_near_whale, l_spawn_min_light_whale, l_spawn_max_light_whale, l_spawn_interval_whale, l_spawn_chance_whale, l_spawn_active_object_count_whale, l_spawn_min_height_whale, l_spawn_max_height_whale, true)
end
