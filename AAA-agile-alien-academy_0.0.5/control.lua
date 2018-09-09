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
