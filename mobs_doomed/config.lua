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

config.spawn_enabled_badger = true
config.spawn_on_badger = {
						"default:dirt_with_grass",
						"default:dirt",
						"default:dirt_with_coniferous_litter"
					}
config.spawn_near_badger = {"air"}
config.spawn_min_light_badger = 0
config.spawn_max_light_badger = 14
config.spawn_interval_badger = 30
config.spawn_chance_badger = 300000
config.spawn_active_object_count_badger = 2
config.spawn_min_height_badger = 0
config.spawn_max_height_badger = 5000


config.spawn_enabled_elephant = true
config.spawn_on_elephant = {
						"default:dirt_with_dry_grass",
						"default:desert_sand"
					}
config.spawn_near_elephant = {"air"}
config.spawn_min_light_elephant = 10
config.spawn_max_light_elephant = 14
config.spawn_interval_elephant = 30
config.spawn_chance_elephant = 300000
config.spawn_active_object_count_elephant = 2
config.spawn_min_height_elephant = 0
config.spawn_max_height_elephant = 5000



config.spawn_enabled_fox = true
config.spawn_on_fox = {
						"default:dirt_with_grass",
						"default:dirt",
						"default:dirt_with_coniferous_litter",
						"default:dirt_with_snow"
					}
config.spawn_near_fox = {"air"}
config.spawn_min_light_fox = 0
config.spawn_max_light_fox = 14
config.spawn_interval_fox = 30
config.spawn_chance_fox = 300000
config.spawn_active_object_count_fox = 2
config.spawn_min_height_fox = 0
config.spawn_max_height_fox = 5000




config.spawn_enabled_hedgehog = true
config.spawn_on_hedgehog = {
						"default:dirt_with_grass",
						"default:dirt_with_coniferous_litter"
					}
config.spawn_near_hedgehog = {"air"}
config.spawn_min_light_hedgehog = 0
config.spawn_max_light_hedgehog = 14
config.spawn_interval_hedgehog = 30
config.spawn_chance_hedgehog = 300000
config.spawn_active_object_count_hedgehog = 2
config.spawn_min_height_hedgehog = 0
config.spawn_max_height_hedgehog = 5000



config.spawn_enabled_owl = true
config.spawn_on_owl = {"group:leaves"}
config.spawn_near_owl = {"air"}
config.spawn_min_light_owl = 0
config.spawn_max_light_owl = 14
config.spawn_interval_owl = 30
config.spawn_chance_owl = 300000
config.spawn_active_object_count_owl = 2
config.spawn_min_height_owl = 0
config.spawn_max_height_owl = 5000



config.spawn_enabled_tortoise = true
config.spawn_on_tortoise = {"default:clay", "group:sand"}
config.spawn_near_tortoise = {"air"}
config.spawn_min_light_tortoise = 10
config.spawn_max_light_tortoise = 14
config.spawn_interval_tortoise = 30
config.spawn_chance_tortoise = 300000
config.spawn_active_object_count_tortoise = 2
config.spawn_min_height_tortoise = 0
config.spawn_max_height_tortoise = 5000



config.spawn_enabled_whale = true
config.spawn_on_whale = {"default:water_source"}
config.spawn_near_whale = {"default:water_source"}
config.spawn_min_light_whale = 0
config.spawn_max_light_whale = 14
config.spawn_interval_whale = 30
config.spawn_chance_whale = 3000000
config.spawn_active_object_count_whale = 1
config.spawn_min_height_whale = -40
config.spawn_max_height_whale = 0

global_mobs_animal_pack_mobs_doomed = config
