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
config.spawn_min_height_clownfish = -50
config.spawn_max_height_clownfish = water_level - 1

config.spawn_enabled_tropical = true
config.spawn_on_tropical = spawn_on_fish
config.spawn_near_tropical = spawn_near_fish
config.spawn_min_light_tropical = 5
config.spawn_max_light_tropical = 20
config.spawn_interval_tropical = 30
config.spawn_chance_tropical = spawn_chance_fish
config.spawn_active_object_count_tropical = 1
config.spawn_min_height_tropical = -50
config.spawn_max_height_tropical = water_level - 1

global_mobs_animal_pack_mobs_fish = config
