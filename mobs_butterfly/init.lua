if not mobs.mod == "redo" then return end

-- local variables
local l_skins = {
	{"bf1.png^bf2.png^bf3.png^bf4.png^bf5.png"},
	{"(bf1.png^[colorize:orange)^(bf2.png^[colorize:violet)^(bf3.png^[colorize:yellow)^(bf4.png^[colorize:cyan)^(bf5.png^[colorize:black)"},
	{"(bf1.png^[colorize:magenta)^(bf2.png^[colorize:green)^(bf3.png^[colorize:red)^(bf4.png^[colorize:blue)^(bf5.png^[colorize:white)"},
	{"(bf1.png^[colorize:yellow)^(bf2.png^[colorize:cyan)^(bf3.png^[colorize:green)^(bf4.png^[colorize:violet)^(bf5.png^[colorize:darkgray)"},
	{"(bf1.png^[colorize:pink)^(bf2.png^[colorize:white)^(bf3.png^[colorize:blue)^(bf4.png^[colorize:orange)^(bf5.png^[colorize:gray)"},
	{"(bf1.png^[colorize:darkgreen)^(bf2.png^[colorize:brown)^(bf3.png^[colorize:black)^(bf4.png^[colorize:darkgray)^(bf5.png^[colorize:red)"}
}

-- Butterfly
mobs:register_mob("mobs_butterfly:butterfly", {
	type = "animal",
	passive = true,
	hp_min = 1,
	hp_max = 2,
	armor = 100,
	collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
	visual = "mesh",
	mesh = "mobf_butterfly.x",
	textures = l_skins,
	walk_velocity = 2,
	fall_speed = 0,
	stepheight = 3,
	fly = true,
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	fall_damage = 0,
	view_range = 10,
	animation = {
		speed_normal = 15,	speed_run = 30,
		stand_start = 0,	stand_end = 90,
		walk_start = 0,		walk_end = 90,
	},
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 10, 80, 0, true, "mobs_butterfly:butterfly")
	end
})

local l_spawn_enabled_butterfly = minetest.settings:get_bool("mobs_butterfly.spawn_enabled_butterfly", true)
if l_spawn_enabled_butterfly then
    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local l_spawn_on_butterfly = CSVtoTable(minetest.settings:get("mobs_butterfly.spawn_on_butterfly")) or {"air"}
local l_spawn_near_butterfly = CSVtoTable(minetest.settings:get("mobs_butterfly.spawn_near_butterfly")) or {"group:flower"}
local l_spawn_min_light_butterfly = minetest.settings:get("mobs_butterfly.spawn_min_light_butterfly") or 5
local l_spawn_max_light_butterfly = minetest.settings:get("mobs_butterfly.spawn_max_light_butterfly") or 20
local l_spawn_interval_butterfly = minetest.settings:get("mobs_butterfly.spawn_interval_butterfly") or 30
local l_spawn_chance_butterfly = minetest.settings:get("mobs_butterfly.spawn_chance_butterfly") or 300000
local l_spawn_active_object_count_butterfly = minetest.settings:get("mobs_butterfly.spawn_active_object_count_butterfly") or 1
local l_spawn_min_height_butterfly = minetest.settings:get("mobs_butterfly.spawn_min_height_butterfly") or 0
local l_spawn_max_height_butterfly = minetest.settings:get("mobs_butterfly.spawn_max_height_butterfly") or 5000

--name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height
mobs:spawn_specific("mobs_butterfly:butterfly", l_spawn_on_butterfly, l_spawn_near_butterfly, l_spawn_min_light_butterfly, l_spawn_max_light_butterfly, l_spawn_interval_butterfly, l_spawn_chance_butterfly, l_spawn_active_object_count_butterfly, l_spawn_min_height_butterfly, l_spawn_max_height_butterfly)
end
mobs:register_egg("mobs_butterfly:butterfly", "Butterfly", "default_cloud.png", 1)
