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

global_mobs_animal_pack_mobs_mr_goat = config
