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

global_mobs_animal_pack_mobs_bat = config
