local positions = {
	{TpRottenBloodPos = {x = 34070, y = 31974, z = 14}, tpPos = { x = 32957, y = 32398, z = 9 }},	
}

local TpRottenBlood = MoveEvent()

function TpRottenBlood.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	local newPos
	for _, info in pairs(positions) do
		if Position(info.TpRottenBloodPos) == position then
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

TpRottenBlood:type("stepin")

TpRottenBlood:id(44027)

TpRottenBlood:register()