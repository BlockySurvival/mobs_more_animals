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

config.spawn_enabled_deer = true
config.spawn_on_deer = {
	"default:dirt_with_grass",
	"default:dirt_with_coniferous_litter",
	"ethereal:green_dirt_top"
}
config.spawn_near_deer = nil
config.spawn_min_light_deer = 10
config.spawn_max_light_deer = nil
config.spawn_chance_deer = 300000
config.spawn_interval_deer = nil
config.spawn_active_object_count_deer = nil
config.spawn_min_height_deer = water_level + 1
config.spawn_max_height_deer = 1000

global_mobs_animal_pack_mobs_deer = config
