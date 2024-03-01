local internalNpcName = "Top Three Highscore"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1662,
	lookHead = 116,
	lookBody = 114,
	lookLegs = 95,
	lookFeet = 78,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- npcType registering the npcConfig table
npcType:register(npcConfig)
