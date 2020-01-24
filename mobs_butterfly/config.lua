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

global_mobs_animal_pack_mobs_butterfly = config
