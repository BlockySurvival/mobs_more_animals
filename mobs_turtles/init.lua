if not mobs.mod == "redo" then return end

local mod_config = config.settings_model('mobs_turtles', {
	turtle = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand"}),
			near = config.types.list({"default:dirt_with_grass","default:jungle_grass","default:sand","default:desert_sand","default:papyrus","default:cactus","dryplants:juncus","dryplants:reedmace"}),
			interval = config.types.int(30, { min=1 }),
			chance = config.types.int(300000, { min=1 }),
			min_light = config.types.int(5, { min=0 }),
			max_light = config.types.int(20, { min=0 }),
			min_height = config.types.int(1, { min=-31000, max=31000 }),
			max_height = config.types.int(5000, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	},
	seaturtle = {
		spawn = {
			enabled = config.types.boolean(true),
			on = config.types.list({"default:water_flowing","default:water_source"}),
			near = config.types.list({"default:water_flowing","default:water_source","group:seaplants","seawrecks:woodship","seawrecks:uboot"}),
			interval = config.types.int(30, { min=1 }),
			chance = config.types.int(300000, { min=1 }),
			min_light = config.types.int(5, { min=0 }),
			max_light = config.types.int(20, { min=0 }),
			min_height = config.types.int(-50, { min=-31000, max=31000 }),
			max_height = config.types.int(0, { min=-31000, max=31000 }),
			active_object_count = config.types.int(1, { min=1 }),
		}
	}
})

local l_colors = {
	"#604000:175",	--brown
	"#604000:100",	--brown2
	"#ffffff:150",	--white
	"#404040:150",	--dark_grey
	"#a0a0a0:150",	--grey
	"#808000:150",	--olive
	"#ff0000:150"	--red
}
local l_skins = {
	{"turtle1.png^turtle2.png^turtle3.png^turtle4.png^turtle5.png^turtle6.png^turtle7.png"},
	{"turtle1.png^(turtle2.png^[colorize:"..l_colors[5]..")^(turtle3.png^[colorize:"..l_colors[4]..")^(turtle4.png^[colorize:"..l_colors[1]..")^(turtle5.png^[colorize:"..l_colors[2]..")^(turtle6.png^[colorize:"..l_colors[6]..")^turtle7.png"}
}
local l_anims = {
	speed_normal = 24,	speed_run = 24,
	stand_start = 1,	stand_end = 50,
	walk_start = 60,	walk_end = 90,
	run_start = 60,		run_end = 90,
	hide_start = 95,	hide_end = 100
}
local l_model			= "mobf_turtle.x"

-- land turtle
mobs:register_mob("mobs_turtles:turtle", {
	type = "animal",
	passive = true,
	hp_min = 15,
	hp_max = 20,
	armor = 200,
	collisionbox = {-0.4, 0.0, -0.4, 0.4, 0.35, 0.4},
	visual = "mesh",
	mesh = l_model,
	textures = l_skins,
	makes_footstep_sound = false,
	view_range = 8,
	rotate = 270,
	walk_velocity = 0.1,
	run_velocity = 0.3,
	jump = false,
	fly = false,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
	},
	floats = 1,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 1,
	animation = l_anims,
	follow = {
		"bakedclay:mannagrass",
		"default:cactus",
		"cucina_vegana:asparagus",
		"cucina_vegana:flax_raw",
		"cucina_vegana:lettuce",
		"cucina_vegana:parsley",
		"cucina_vegana:soy",
		"farming:beans",
		"farming:blueberries",
		"farming:carrot",
		"farming:chili_pepper",
		"farming:cucumber",
		"farming:grapes",
		"farming:hemp_leaf",
		"farming:melon",
		"farming:melon_8",
		"farming:melon_slice",
		"farming:pea_pod",
		"farming:peas",
		"farming:pepper",
		"farming:pepper_yellow",
		"farming:pepper_red",
		"farming:pumpkin",
		"farming:pumpkin_8",
		"farming:pumpkin_slice",
		"farming:raspberries",
		"farming:rhubarb",
		"farming:tomato",
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 60, 80, 100, false, nil) then return end

		self.state = ""
		self.object:setvelocity({
			x = 0, --sin(yaw) * -v
			y = self.object:getvelocity().y,
			z = 0 --cos(yaw) * v
		})
		self.object:set_animation({x=self.animation.hide_start, y=self.animation.hide_end}, self.animation.speed_normal, 0)
		minetest.after(5, function() self.state = "stand" end)
	end
})
if mod_config.turtle.spawn.enabled then
	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific(
		"mobs_turtles:turtle",
		mod_config.turtle.spawn.on,
		mod_config.turtle.spawn.near,
		mod_config.turtle.spawn.min_light,
		mod_config.turtle.spawn.max_light,
		mod_config.turtle.spawn.interval,
		mod_config.turtle.spawn.chance,
		mod_config.turtle.spawn.active_object_count,
		mod_config.turtle.spawn.min_height,
		mod_config.turtle.spawn.max_height
	)
end
mobs:register_egg("mobs_turtles:turtle", "Turtle", "default_grass.png", 1)

-- sea turtle
mobs:register_mob("mobs_turtles:seaturtle", {
	type = "animal",
	passive = true,
	hp_min = 20,
	hp_max = 30,
	armor = 250,
	collisionbox = {-0.8, 0.0, -0.8, 0.8, 0.7, 0.8},
	visual = "mesh",
	visual_size = {x=2,y=2},
	mesh = l_model,
	textures = l_skins,
	makes_footstep_sound = false,
	view_range = 10,
	rotate = 270,
	walk_velocity = 1,
	run_velocity = 1.5,
	stepheight = 1,
	jump = false,
	fly = true,
	fly_in = "default:water_source",
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
	},
	fall_speed = 0,
	floats = 1,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 0,
	animation = l_anims,
	follow = {"default:sand_with_kelp"},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 60, 80, 100, false, nil) then return end
	end
})
if mod_config.seaturtle.spawn.enabled then
	--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
	mobs:spawn_specific(
		"mobs_turtles:seaturtle",
		mod_config.seaturtle.spawn.on,
		mod_config.seaturtle.spawn.near,
		mod_config.seaturtle.spawn.min_light,
		mod_config.seaturtle.spawn.max_light,
		mod_config.seaturtle.spawn.interval,
		mod_config.seaturtle.spawn.chance,
		mod_config.seaturtle.spawn.active_object_count,
		mod_config.seaturtle.spawn.min_height,
		mod_config.seaturtle.spawn.max_height
	)
end
mobs:register_egg("mobs_turtles:seaturtle", "Sea Turtle", "default_water.png", 1)

dofile(minetest.get_modpath(minetest.get_current_modname())..'/test.lua')
