--[[ DEFAULTS: --
spawn_on                   = {"group:soil", "group:stone"},
spawn_near                 = {"air"},
spawn_min_light            = 0,
spawn_max_light            = 15,
spawn_interval             = 30,
spawn_chance               = 5000,
spawn_active_object_count  = 1,
spawn_min_height           = -31000,
spawn_max_height           = 31000,
]]

local config = {}

config.spawn_enabled_bug = true
config.spawn_on_bug = {
		"default:dirt",
		"default:dirt_with_grass",
		"default:dirt_with_coniferous_litter",
		"default:dirt_with_dry_grass",
		"default:dirt_with_rainforest_litter",
		"default:stone",
		"ethereal:green_dirt_top"
	}
config.spawn_near_bug = {"air", "default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
config.spawn_min_light_bug = 0
config.spawn_max_light_bug = 15
config.spawn_interval_bug = 30
config.spawn_chance_bug = 300000
config.spawn_active_object_count_bug = 2
config.spawn_min_height_bug = -25000
config.spawn_max_height_bug = 5000

global_mobs_animal_pack_mobs_bugslive = config
