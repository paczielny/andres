local config = {
	{ position = { x = 34092, y = 31978, z = 14 }, destination = { x = 33842, y = 31653, z = 13 }},
	{ position = { x = 33905, y = 31693, z = 15 }, destination = { x = 32972, y = 32367, z = 15 }},
	{ position = { x = 33842, y = 31650, z = 13 }, destination = { x = 34092, y = 31980, z = 14 }},
	
	{ position = { x = 34093, y = 32009, z = 14 }, destination = { x = 33809, y = 31817, z = 13 }},
	{ position = { x = 33809, y = 31814, z = 13 }, destination = { x = 34091, y = 32009, z = 14 }},
	{ position = { x = 33902, y = 31881, z = 15 }, destination = { x = 33073, y = 32370, z = 15 }},
	
	{ position = { x = 34117, y = 32010, z = 15 }, destination = { x = 34119, y = 31877, z = 14 }},
	{ position = { x = 34119, y = 31875, z = 14 }, destination = { x = 34119, y = 32010, z = 15 }},
	{ position = { x = 34002, y = 31820, z = 15 }, destination = { x = 33074, y = 32336, z = 15 }},

	{ position = { x = 34120, y = 31978, z = 14 }, destination = { x = 34101, y = 31679, z = 13 }},
	{ position = { x = 34101, y = 31677, z = 13 }, destination = { x = 34117, y = 31978, z = 14 }},
	{ position = { x = 34065, y = 31716, z = 15 }, destination = { x = 32972, y = 32336, z = 15 }},

	{ position = { x = 32953, y = 32398, z = 9 }, destination = { x = 34058, y = 31995, z = 13 }}	
}

local entrance = Action()
function entrance.onUse(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getLevel() < 150 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Necesitas al menos nivel 150 para entrar.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end
	for _, entry in pairs(config) do
		if Position(entry.position) == item:getPosition() then
			player:teleportTo(Position(entry.destination))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			return true
		end
	end
end

for _, entry in pairs(config) do
	entrance:position(entry.position)
end
entrance:register()
