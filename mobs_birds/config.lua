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

global_mobs_animal_pack_mobs_birds = config
