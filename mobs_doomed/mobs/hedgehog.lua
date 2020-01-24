mobs:register_mob("mobs_doomed:hedgehog", {
	type = "animal",
	passive = true,
	hp_min = 12,
	hp_max = 22,
	armor = 130,
	collisionbox = {-0.1, -0.1, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "hedgehog.b3d",
	textures = {
		{"mobs_doomed_hedgehog.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=2, y=2},
	makes_footstep_sound = true,
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = true,
	jump_height = 0.6,
	water_damage = 2,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 1,
	fall_speed = -6,
	fear_height = 4,
	view_range = 14,
	animation = {
		speed_normal = 5,
		speed_run = 10,
		walk_start = 1,
		walk_end = 10,
		stand_start = 1,
		stand_end = 10,
		run_start = 1,
		run_end = 10,

	},
	follow = {
		"mobs_bugslive:bug",
		"mobs_butterfly:butterfly",
		"butterflies:butterfly_red",
		"butterflies:butterfly_violet",
		"butterflies:butterfly_white",
		"fireflies:firefly",
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 50, 100, 0, false, nil) then return end
	end,
})

mobs:register_egg("mobs_doomed:hedgehog", "Hedgehog", "wool_brown.png", 1)

if global_mobs_animal_pack_mobs_doomed.spawn_enabled_hedgehog then
mobs:spawn_specific("mobs_doomed:hedgehog", global_mobs_animal_pack_mobs_doomed.spawn_on_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_near_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_min_light_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_max_light_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_interval_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_chance_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_active_object_count_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_min_height_hedgehog, global_mobs_animal_pack_mobs_doomed.spawn_max_height_hedgehog, nil)
end
