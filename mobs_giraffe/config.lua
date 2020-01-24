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

config.spawn_enabled_giraffe = true
config.spawn_on_giraffe = {"default:sand", "default:desert_sand", "default:dirt_with_dry_grass"}
config.spawn_near_giraffe = nil
config.spawn_min_light_giraffe = 10
config.spawn_max_light_giraffe = nil
config.spawn_chance_giraffe = 300000
config.spawn_interval_giraffe = nil
config.spawn_active_object_count_giraffe = nil
config.spawn_min_height_giraffe = water_level + 1
config.spawn_max_height_giraffe = 5000

global_mobs_animal_pack_mobs_giraffe = config
