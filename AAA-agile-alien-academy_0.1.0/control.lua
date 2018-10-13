Config = {}
Config.bitersDropFlesh = settings.startup["flesh-unit-drops"].value--true
-- control 
local function fluid_projector(event)	
	if event.entity.name == 'fluid-projector-remnants-frost' then
		local position = event.entity.position;
		local area_start = {position.x - 1, position.y - 1}
		local area_end = {position.x + 1, position.y + 1}
	--    local tile = game.surfaces['nauvis'].get_tile(position.x, position.y)
	--    local tile_props = game.surfaces['nauvis'].get_tileproperties(position.x, position.y)
		for _, entity in pairs(event.entity.surface.find_entities{area_start, area_end}) do
			if entity.type == "unit" then
				 entity.active = false
				--entity.movement_speed = 0.01
				-- local h = entity.health
				-- entity.health = h / 2
				-- if h < 2 and entity.can_be_destroyed() then
				--  entity.destroy()
				-- end
			end
		end
	end	
	if event.entity.name == 'fluid-projector-remnants-defrost' then
		local position = event.entity.position;
		local area_start = {position.x - 1, position.y - 1}
		local area_end = {position.x + 1, position.y + 1}
	--    local tile = game.surfaces['nauvis'].get_tile(position.x, position.y)
	--    local tile_props = game.surfaces['nauvis'].get_tileproperties(position.x, position.y)
		for _, entity in pairs(event.entity.surface.find_entities{area_start, area_end}) do
			if entity.type == "unit" then
				 entity.active = true
				--entity.movement_speed = 0.01
				-- local h = entity.health
				-- entity.health = h / 2
				-- if h < 2 and entity.can_be_destroyed() then
				--  entity.destroy()
				-- end
			end
		end
	end
end

-- portal fluid 
script.on_event(defines.events.on_trigger_created_entity, fluid_projector)


function Print(Text)
	game.players[1].print(""..Text)
end

function PrintTab(Table)
	for i,d in pairs(Table) do
		local T = type(d)
		if T == "table" then
			Print("Table: "..i)
			PrintTab(d)
		else
			Print(i.." : "..tostring(d))
		end
	end
end

function PrintTable(Table)
	PrintTab(Table)
end

local function onEntityRemoved2(event)
	--game.print("in the event :) ")	
	local entity = event.entity
	local drops = 0
	local range = 0
	if entity.type == "unit-spawner" and (string.find(entity.name, "biter") or string.find(entity.name, "spitter")) then
		drops = math.random(5, 12)
		range = 4		
	end
	if entity.type == "worm-turret" and string.find(entity.name, "worm") then
		drops = math.random(2, 5)
		range = 2
	end
	if entity.type == "unit" and Config.bitersDropFlesh and (string.find(entity.name, "biter") or string.find(entity.name, "spitter")) then
		local size = 0
		if string.find(entity.name, "small") then
			size = 0.1
		end
		if string.find(entity.name, "medium") then
			size = 0.25
		end
		if string.find(entity.name, "big") then
			size = 0.5
		end
		if string.find(entity.name, "behemoth") then
			size = 1
		end
		drops = math.random() < size and (math.random() < 0.2 and math.random(1, 2) or math.random(0, 1)) or 0
		range = 0.75
	end
	--game.print("Attempting " .. drops .. " drops.")
	if drops > 0 then
		for i = 1,drops do
			local pos = {x = entity.position.x, y = entity.position.y}
			pos.x = pos.x-range+math.random()*2*range
			pos.y = pos.y-range+math.random()*2*range
			local r = 0.25--1
			local box = {{pos.x-r,pos.y-r},{pos.x+r,pos.y+r}}
			local belts = entity.surface.find_entities_filtered{area=box, type={"transport-belt", "underground-belt", "loader", "item-entity"}, limit = 1}
			if belts and #belts > 0 then --do not spill items on belts, or on top of each other
				drops = math.min(drops+1, 20) --add a retry, within a limit
				--game.print("Failed drop " .. i .. ", trying again...")
			else
				--game.print("Dropping drop @ " .. pos.x .. ", " .. pos.y)
				entity.surface.spill_item_stack(pos, {name="alienAAA"}, true) --does not return
			end
		end
	end
end

script.on_event(defines.events.on_entity_died, onEntityRemoved2)