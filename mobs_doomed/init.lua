mobs_doomed = {}

-- Table cloning to reduce code repetition
mobs_doomed.deepclone = function(t) -- deep-copy a table -- from https://gist.github.com/MihailJP/3931841
	if type(t) ~= "table" then return t end

	local target = {}

	for k, v in pairs(t) do
		if k ~= "__index" and type(v) == "table" then -- omit circular reference
			target[k] = mobs_doomed.deepclone(v)
		else
			target[k] = v
		end
	end
	return target
end

mobs_doomed.CSVtoTable = function (str) --[[
    parses comma separated string into an ordered table of strings
    whitespace will be trimmed from strings ]]
    if str == nil then return nil end
    local ret = {}
    for item in string.gmatch( str, "([^,%s]+)" ) do table.insert(ret, item) end
    if table.getn(ret) == 0 then return nil end
    return ret
end

-- Start loading ----------------------------------------------------------------------------------

local function loadmob(mobname,dir)
	dir = dir or "/mobs/"
	dofile(minetest.get_modpath("mobs_doomed")..dir..mobname..".lua")
end

-- regular mobs

local mobslist = {
	-- friendlies
	"badger",
	"elephant",
	"fox",
	"golem_friendly",
	"hedgehog",
	"owl",
	"tortoise",
	"whale",
}

for _,mobname in pairs(mobslist) do
	loadmob(mobname)
end
