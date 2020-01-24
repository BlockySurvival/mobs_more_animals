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

config.spawn_enabled_turtle = true
config.spawn_on_turtle = {"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand"}
config.spawn_near_turtle = {"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand","default:papyrus","default:cactus","dryplants:juncus","dryplants:reedmace"}
config.spawn_min_light_turtle = 5
config.spawn_max_light_turtle = 20
config.spawn_interval_turtle = 30
config.spawn_chance_turtle = 300000
config.spawn_active_object_count_turtle = 1
config.spawn_min_height_turtle = 1
config.spawn_max_height_turtle = 5000

config.spawn_enabled_seaturtle = true
config.spawn_on_seaturtle = {"default:water_flowing","default:water_source"}
config.spawn_near_seaturtle = {"default:water_flowing","default:water_source","group:seaplants","seawrecks:woodship","seawrecks:uboot"}
config.spawn_min_light_seaturtle = 5
config.spawn_max_light_seaturtle = 20
config.spawn_interval_seaturtle = 30
config.spawn_chance_seaturtle = 300000
config.spawn_active_object_count_seaturtle = 1
config.spawn_min_height_seaturtle = -50
config.spawn_max_height_seaturtle = 0

global_mobs_animal_pack_mobs_turtles = config
