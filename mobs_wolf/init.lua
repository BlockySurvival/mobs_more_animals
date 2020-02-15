if not mobs.mod == "redo" then return end

mobs:register_mob("mobs_wolf:wolf", {
	type = "animal",
	visual = "mesh",
	mesh = "mobs_wolf.x",
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	animation = {
		speed_normal = 20,	speed_run = 30,
		stand_start = 10,	stand_end = 20,
		walk_start = 75,	walk_end = 100,
		run_start = 100,	run_end = 130,
		punch_start = 135,	punch_end = 155,
	},
	textures = {
		{"mobs_wolf.png"},
	},
	fear_height = 2,
	runaway = false,
	jump = true,
	jump_height = 4,
	fly = false,
	walk_chance = 75,
	walk_velocity = 2,
	run_velocity = 3,
	view_range = 7,
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	reach = 2,
	attacks_monsters = false,
	pathfinding = true,
	group_attack = true,
	hp_min = 4,
	hp_max = 6,
	armor = 200,
	knock_back = 2,
	lava_damage = 5,
	fall_damage = 4,
	makes_footstep_sound = true,
	sounds = {
		war_cry = "mobs_wolf_attack"
	},
	follow = {"mobs:meat_raw"},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 6, false, true) then
			if self.food == 0 then
				local mob = minetest.add_entity(self.object:getpos(), "mobs_wolf:dog")
				local ent = mob:get_luaentity()
				ent.owner = clicker:get_player_name()
				ent.following = clicker
				ent.order = "follow"
				self.object:remove()
			end
			return
		end
	end
})

local l_spawn_enabled_wolf = minetest.settings:get_bool("mobs_wolf.spawn_enabled_wolf", true)
if l_spawn_enabled_wolf then

    
local function CSVtoTable(str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

local water_level = minetest.setting_get("water_level") or 0
local l_spawn_on_wolf = CSVtoTable(minetest.settings:get("mobs_wolf.spawn_on_wolf")) or {
	"default:dirt_with_grass",
	"default:dirt_with_snow",
	"default:dirt_with_coniferous_litter",
	"ethereal:green_dirt_top",
}
local l_spawn_near_wolf = CSVtoTable(minetest.settings:get("mobs_wolf.spawn_near_wolf")) or nil
local l_spawn_min_light_wolf = minetest.settings:get("mobs_wolf.spawn_min_light_wolf") or 10
local l_spawn_max_light_wolf = minetest.settings:get("mobs_wolf.spawn_max_light_wolf") or nil
local l_spawn_interval_wolf = minetest.settings:get("mobs_wolf.spawn_interval_wolf") or nil
local l_spawn_chance_wolf = minetest.settings:get("mobs_wolf.spawn_chance_wolf") or 300000
local l_spawn_active_object_count_wolf = minetest.settings:get("mobs_wolf.spawn_active_object_count_wolf") or nil
local l_spawn_min_height_wolf = minetest.settings:get("mobs_wolf.spawn_min_height_wolf") or water_level - 5
local l_spawn_max_height_wolf = minetest.settings:get("mobs_wolf.spawn_max_height_wolf") or 5000

mobs:spawn({
	name = "mobs_wolf:wolf",
	nodes = l_spawn_on_wolf,
	neighbors = l_spawn_near_wolf,
	min_light = l_spawn_min_light_wolf,
	max_light = l_spawn_max_light_wolf,
	chance = l_spawn_chance_wolf,
	interval = l_spawn_interval_wolf,
	active_object_count = l_spawn_active_object_count_wolf,
	min_height = l_spawn_min_height_wolf,
	max_height = l_spawn_max_height_wolf,
	day_toggle = true,
})
end
mobs:register_egg("mobs_wolf:wolf", "Wolf", "wool_grey.png", 1)

-- Dog
mobs:register_mob("mobs_wolf:dog", {
	type = "animal",
	visual = "mesh",
	mesh = "mobs_wolf.x",
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	animation = {
		speed_normal = 20,	speed_run = 30,
		stand_start = 10,	stand_end = 20,
		walk_start = 75,	walk_end = 100,
		run_start = 100,	run_end = 130,
		punch_start = 135,	punch_end = 155,
	},
	textures = {
		{"mobs_dog.png"},
		{"mobs_medved.png"}
	},
	fear_height = 2,
	runaway = false,
	jump = true,
	jump_height = 4,
	fly = false,
	walk_chance = 75,
	walk_velocity = 2,
	run_velocity = 4,
	view_range = 15,
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	reach = 2,
	attacks_monsters = true,
	pathfinding = true,
	group_attack = true,
	hp_min = 5,
	hp_max = 7,
	armor = 200,
	knock_back = 2,
	lava_damage = 5,
	fall_damage = 5,
	water_damage = 1,
	makes_footstep_sound = true,
	sounds = {
		war_cry = "mobs_wolf_attack"
	},
	follow = {"mobs:meat_raw"},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 6, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 0, 80, false, nil) then return end

		if clicker:get_wielded_item():is_empty() and clicker:get_player_name() == self.owner then
			if clicker:get_player_control().sneak then
				self.order = ""
				self.state = "walk"
				self.walk_velocity = 2
				self.stepheight = 0.6
			else
				if self.order == "follow" then
					self.order = "stand"
					self.state = "stand"
					self.walk_velocity = 2
					self.stepheight = 0.6
				else
					self.order = "follow"
					self.state = "walk"
					self.walk_velocity = 3
					self.stepheight = 1.1
				end
			end
			return
		end
	end
})

mobs:register_egg("mobs_wolf:dog", "Dog", "wool_brown.png", 1)
