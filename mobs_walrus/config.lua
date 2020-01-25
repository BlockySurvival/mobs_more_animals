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

config.spawn_enabled_walrus = true
config.spawn_on_walrus = {"default:dirt_with_snow", "default:snowblock", "default:ice"}
config.spawn_max_light_walrus = 20
config.spawn_min_light_walrus = 0
config.spawn_chance_walrus = 300000
config.spawn_active_object_count_walrus = 1
config.spawn_max_height_walrus = 5000

global_mobs_animal_pack_mobs_walrus = config
