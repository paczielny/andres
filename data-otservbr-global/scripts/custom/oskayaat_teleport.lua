local positions = {
	{TpOskayaatPos = {x = 33028, y = 32953, z = 8}, tpPos = { x = 33042, y = 32950, z = 9 }},
	{TpOskayaatPos = {x = 33043, y = 32950, z = 9}, tpPos = { x = 33029, y = 32953, z = 8 }},
}

local TpOskayaat = MoveEvent()

function TpOskayaat.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	local newPos
	for _, info in pairs(positions) do
		if Position(info.TpOskayaatPos) == position then
			newPos = Position(info.tpPos)
			break
		end
	end
	if newPos then
		player:teleportTo(newPos)
		position:sendMagicEffect(CONST_ME_TELEPORT)
		newPos:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

TpOskayaat:type("stepin")

TpOskayaat:id(43960)

TpOskayaat:register()