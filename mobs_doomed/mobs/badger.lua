mobs:register_mob("mobs_doomed:badger", {
	type = "animal",
	passive = false,
	reach = 1,
	damage = 2,
	attack_type = "dogfight",
	specific_attack = {
		"mobs_doomed:hedgehog",
		"mobs_bugslive:bug",
		"mobs_better_rat:rat",
		"mobs_animal:rat",
	},

	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.3, -0.15, -0.3, 0.3, 0.4, 0.3},
	visual = "mesh",
	mesh = "badger.b3d",
	textures = {
		{"mobs_doomed_badger.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 0.7,
	run_velocity = 1,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 1,
	fall_speed = -8,
	fear_height = 4,
	view_range = 14,
	animation = {
		speed_normal = 12,
		speed_run = 18,
		walk_start = 34,
		walk_end = 58,
		stand_start = 1,
		stand_end = 30,
		run_start = 34,
		run_end = 58,
		punch_start = 60,
		punch_end = 80,
	},
	follow = {
		"mobs_doomed:hedgehog",
		"mobs_bugslive:bug",
		"mobs_better_rat:rat",
		"mobs_animal:rat",
		"mobs:egg",
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})

mobs:register_egg("mobs_doomed:badger", "Badger", "default_obsidian.png", 1)

local l_spawn_enabled_badger = minetest.settings:get_bool("mobs_doomed.spawn_enabled_badger", true)
if l_spawn_enabled_badger then

local l_spawn_on_badger = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_on_badger")) or {
						"default:dirt_with_grass",
						"default:dirt",
						"default:dirt_with_coniferous_litter"
					}
local l_spawn_near_badger = mobs_doomed.CSVtoTable(minetest.settings:get("mobs_doomed.spawn_near_badger")) or {"air"}
local l_spawn_min_light_badger = minetest.settings:get("mobs_doomed.spawn_min_light_badger") or 0
local l_spawn_max_light_badger = minetest.settings:get("mobs_doomed.spawn_max_light_badger") or 14
local l_spawn_interval_badger = minetest.settings:get("mobs_doomed.spawn_interval_badger") or 30
local l_spawn_chance_badger = minetest.settings:get("mobs_doomed.spawn_chance_badger") or 300000
local l_spawn_active_object_count_badger = minetest.settings:get("mobs_doomed.spawn_active_object_count_badger") or 2
local l_spawn_min_height_badger = minetest.settings:get("mobs_doomed.spawn_min_height_badger") or 0
local l_spawn_max_height_badger = minetest.settings:get("mobs_doomed.spawn_max_height_badger") or 5000

mobs:spawn_specific("mobs_doomed:badger", l_spawn_nodes_badger, l_spawn_near_badger, l_spawn_min_light_badger, l_spawn_max_light_badger, l_spawn_interval_badger, l_spawn_chance_badger, l_spawn_active_object_count_badger, l_spawn_min_height_badger, l_spawn_max_height_badger, nil)
end
