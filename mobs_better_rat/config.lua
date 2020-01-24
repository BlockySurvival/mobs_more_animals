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

global_mobs_animal_pack_mobs_better_rat = config
