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

global_mobs_animal_pack_mobs_jellyfish = config
