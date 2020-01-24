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


local water_level = minetest.setting_get("water_level") or 0


local config = {}


config.spawn_enabled_bat = true
config.spawn_on_bat = {"air"}
config.spawn_near_bat = {"default:stone"}
config.spawn_min_light_bat = 0
config.spawn_max_light_bat = 6
config.spawn_interval_bat = 30
config.spawn_chance_bat = 300000
config.spawn_active_object_count_bat = 2
config.spawn_min_height_bat = -25000
config.spawn_max_height_bat = 1000

config.spawn_enabled_bear = true
config.spawn_on_bear = {"default:dirt_with_grass", "ethereal:green_dirt_top"}
config.spawn_near_bear = nil
config.spawn_min_light_bear = 10
config.spawn_max_light_bear = nil
config.spawn_chance_bear = 300000
config.spawn_interval_bear = nil
config.spawn_active_object_count_bear = nil
config.spawn_min_height_bear = water_level - 10
config.spawn_max_height_bear = 1000



config.spawn_enabled_better_rat = true
config.spawn_on_better_rat = {"default:stone"}
config.spawn_near_better_rat = {"air"}
config.spawn_min_light_better_rat = 0
config.spawn_max_light_better_rat = 14
config.spawn_interval_better_rat = 30
config.spawn_chance_better_rat = 300000
config.spawn_active_object_count_better_rat = 2
config.spawn_min_height_better_rat = -25000
config.spawn_max_height_better_rat = 1000



local spawn_on_bird = {"air"}

config.spawn_enabled_gull = true
config.spawn_on_gull = spawn_on_bird
config.spawn_near_gull = {"default:water_source", "default:water_flowing"}
config.spawn_min_light_gull = 5
config.spawn_max_light_gull = 20
config.spawn_interval_gull = 30
config.spawn_chance_gull = 240000
config.spawn_active_object_count_gull = 1
config.spawn_min_height_gull = 0
config.spawn_max_height_gull = 5000

local spawn_near_bird = {"default:leaves", "default:pine_needles", "default:jungleleaves", "default:cactus"}
local spawn_chance_bird	= 360000

config.spawn_enabled_bird_lg = true
config.spawn_on_bird_lg = spawn_on_bird
config.spawn_near_bird_lg = spawn_near_bird
config.spawn_min_light_bird_lg = 5
config.spawn_max_light_bird_lg = 20
config.spawn_interval_bird_lg = 30
config.spawn_chance_bird_lg = spawn_chance_bird
config.spawn_active_object_count_bird_lg = 1
config.spawn_min_height_bird_lg = 0
config.spawn_max_height_bird_lg = 5000

config.spawn_enabled_bird_sm = true
config.spawn_on_bird_sm = spawn_on_bird
config.spawn_near_bird_sm = spawn_near_bird
config.spawn_min_light_bird_sm = 5
config.spawn_max_light_bird_sm = 20
config.spawn_interval_bird_sm = 30
config.spawn_chance_bird_sm = spawn_chance_bird
config.spawn_active_object_count_bird_sm = 1
config.spawn_min_height_bird_sm = 0
config.spawn_max_height_bird_sm = 5000



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
config.spawn_max_height_bug = 1000

config.spawn_enabled_butterfly = true
config.spawn_on_butterfly = {"air"}
config.spawn_near_butterfly = {"group:flower"}
config.spawn_min_light_butterfly = 5
config.spawn_max_light_butterfly = 20
config.spawn_interval_butterfly = 30
config.spawn_chance_butterfly = 300000
config.spawn_active_object_count_butterfly = 1
config.spawn_min_height_butterfly = 0
config.spawn_max_height_butterfly = 5000


config.spawn_enabled_deer = true
config.spawn_on_deer = {
	"default:dirt_with_grass",
	"default:dirt_with_coniferous_litter",
	"ethereal:green_dirt_top"
}
config.spawn_near_deer = nil
config.spawn_min_light_deer = 10
config.spawn_max_light_deer = nil
config.spawn_chance_deer = 300000
config.spawn_interval_deer = nil
config.spawn_active_object_count_deer = nil
config.spawn_min_height_deer = water_level + 1
config.spawn_max_height_deer = 1000



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
config.spawn_max_height_badger = 1000


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
config.spawn_max_height_elephant = 1000



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
config.spawn_max_height_fox = 1000




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
config.spawn_max_height_hedgehog = 1000



config.spawn_enabled_owl = true
config.spawn_on_owl = {"group:leaves"}
config.spawn_near_owl = {"air"}
config.spawn_min_light_owl = 0
config.spawn_max_light_owl = 14
config.spawn_interval_owl = 30
config.spawn_chance_owl = 300000
config.spawn_active_object_count_owl = 2
config.spawn_min_height_owl = 0
config.spawn_max_height_owl = 1000



config.spawn_enabled_tortoise = true
config.spawn_on_tortoise = {"default:clay", "group:sand"}
config.spawn_near_tortoise = {"air"}
config.spawn_min_light_tortoise = 10
config.spawn_max_light_tortoise = 14
config.spawn_interval_tortoise = 30
config.spawn_chance_tortoise = 300000
config.spawn_active_object_count_tortoise = 2
config.spawn_min_height_tortoise = 0
config.spawn_max_height_tortoise = 1000



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






local spawn_on_fish          = {"default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local spawn_near_fish       = {"default:sand","default:dirt","group:seaplants","group:seacoral"}
local spawn_chance_fish      = 100000


config.spawn_enabled_clownfish = true
config.spawn_on_clownfish = spawn_on_fish
config.spawn_near_clownfish = spawn_near_fish
config.spawn_min_light_clownfish = 5
config.spawn_max_light_clownfish = 20
config.spawn_interval_clownfish = 30
config.spawn_chance_clownfish = spawn_chance_fish
config.spawn_active_object_count_clownfish = 1
config.spawn_min_height_clownfish = -31000
config.spawn_max_height_clownfish = water_level - 1

config.spawn_enabled_tropical = true
config.spawn_on_tropical = spawn_on_fish
config.spawn_near_tropical = spawn_near_fish
config.spawn_min_light_tropical = 5
config.spawn_max_light_tropical = 20
config.spawn_interval_tropical = 30
config.spawn_chance_tropical = spawn_chance_fish
config.spawn_active_object_count_tropical = 1
config.spawn_min_height_tropical = -31000
config.spawn_max_height_tropical = water_level - 1


config.spawn_enabled_giraffe = true
config.spawn_on_giraffe = {"default:sand", "default:desert_sand", "default:dirt_with_dry_grass"}
config.spawn_near_giraffe = nil
config.spawn_min_light_giraffe = 10
config.spawn_max_light_giraffe = nil
config.spawn_chance_giraffe = 300000
config.spawn_interval_giraffe = nil
config.spawn_active_object_count_giraffe = nil
config.spawn_min_height_giraffe = water_level + 1
config.spawn_max_height_giraffe = 1000



config.spawn_enabled_jelyfish = true
config.spawn_on_jellyfish = {"default:water_source"}
config.spawn_near_jellyfish = {"default:water_flowing","default:water_source"}
config.spawn_min_light_jellyfish = 1
config.spawn_max_light_jellyfish = 14
config.spawn_interval_jellyfish = 30
config.spawn_chance_jellyfish = 300000
config.spawn_active_object_count_jellyfish = 1
config.spawn_min_height_jellyfish = -50
config.spawn_max_height_jellyfish = 0


config.spawn_enabled_goat = true
config.spawn_on_goat = {"default:dirt_with_grass", "ethereal:green_dirt_top"}
config.spawn_near_goat = nil
config.spawn_min_light_goat = 10
config.spawn_max_light_goat = nil
config.spawn_chance_goat = 300000
config.spawn_interval_goat = nil
config.spawn_active_object_count_goat = nil
config.spawn_min_height_goat = water_level + 1
config.spawn_max_height_goat = 1000



config.spawn_enabled_turtle = true
config.spawn_on_turtle = {"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand"}
config.spawn_near_turtle = {"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand","default:papyrus","default:cactus","dryplants:juncus","dryplants:reedmace"}
config.spawn_min_light_turtle = 5
config.spawn_max_light_turtle = 20
config.spawn_interval_turtle = 30
config.spawn_chance_turtle = 300000
config.spawn_active_object_count_turtle = 1
config.spawn_min_height_turtle = 1
config.spawn_max_height_turtle = 31000

config.spawn_enabled_seaturtle = true
config.spawn_on_seaturtle = {"default:water_flowing","default:water_source"}
config.spawn_near_seaturtle = {"default:water_flowing","default:water_source","group:seaplants","seawrecks:woodship","seawrecks:uboot"}
config.spawn_min_light_seaturtle = 5
config.spawn_max_light_seaturtle = 20
config.spawn_interval_seaturtle = 30
config.spawn_chance_seaturtle = 300000
config.spawn_active_object_count_seaturtle = 1
config.spawn_min_height_seaturtle = -31000
config.spawn_max_height_seaturtle = 0


config.spawn_enabled_wolf = true
config.spawn_on_wolf = {
	"default:dirt_with_grass",
	"default:dirt_with_snow",
	"default:dirt_with_coniferous_litter",
	"ethereal:green_dirt_top",
}
config.spawn_near_wolf = nil
config.spawn_min_light_wolf = 10
config.spawn_max_light_wolf = nil
config.spawn_chance_wolf = 300000
config.spawn_interval_wolf = nil
config.spawn_active_object_count_wolf = nil
config.spawn_min_height_wolf = water_level - 5
config.spawn_max_height_wolf = 1000

global_mobs_animal_pack_mobs_bear = config
