
mobs:register_mob("mobs_doomed:tortoise", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	hp_min = 6,
	hp_max = 12,
	armor = 130,
	collisionbox = {-0.2, 0, -0.2, 0.2, 0.3, 0.2},
	visual = "mesh",
	mesh = "tortoise.b3d",
	textures = {
		{"mobs_doomed_tortoise.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = false,
	jump_height = 0.5,
	floats = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 6},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 1,
	fall_speed = -10,
	fear_height = 4,
	view_range = 14,
	animation = {
		speed_normal = 6,
		speed_run = 10,
		walk_start = 23,
		walk_end = 43,
		stand_start = 1,
		stand_end = 20,
		run_start = 23,
		run_end = 43,

	},
	follow = {"farming:cucumber", "farming:pepper", "group:grass"},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 30, 80, 50, false, nil) then return end
	end,
})

mobs:register_egg("mobs_doomed:tortoise", "Tortoise", "default_grass.png", 1)

local l_spawn_enabled_tortoise = minetest.settings:get_bool("mobs_doomed.spawn_enabled_tortoise", true)
if l_spawn_enabled_tortoise then

local l_spawn_on_tortoise = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_on_tortoise")) or {"default:clay", "group:sand"}
local l_spawn_near_tortoise = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_near_tortoise")) or {"air"}
local l_spawn_min_light_tortoise = minetest.settings:get("mobs_doomed.spawn_min_light_tortoise") or 10
local l_spawn_max_light_tortoise = minetest.settings:get("mobs_doomed.spawn_max_light_tortoise") or 14
local l_spawn_interval_tortoise = minetest.settings:get("mobs_doomed.spawn_interval_tortoise") or 30
local l_spawn_chance_tortoise = minetest.settings:get("mobs_doomed.spawn_chance_tortoise") or 300000
local l_spawn_active_object_count_tortoise = minetest.settings:get("mobs_doomed.spawn_active_object_count_tortoise") or 2
local l_spawn_min_height_tortoise = minetest.settings:get("mobs_doomed.spawn_min_height_tortoise") or 0
local l_spawn_max_height_tortoise = minetest.settings:get("mobs_doomed.spawn_max_height_tortoise") or 5000

mobs:spawn_specific("mobs_doomed:tortoise", l_spawn_on_tortoise, l_spawn_near_tortoise, l_spawn_min_light_tortoise, l_spawn_max_light_tortoise, l_spawn_interval_tortoise, l_spawn_chance_tortoise, l_spawn_active_object_count_tortoise, l_spawn_min_height_tortoise, l_spawn_max_height_tortoise, true)
end
