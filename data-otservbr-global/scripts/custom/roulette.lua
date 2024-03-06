local config = {
    actionId = 18562, -- on lever
    lever = {
        left = 2772,
        right = 2773
    },
    playItem = {
        itemId = 44601, -- item required to pull lever
        count = 1
    },
    rouletteOptions = {
        rareItemChance_broadcastThreshold = 900,
        ignoredItems = {1617}, -- if you have tables/counters/other items on the roulette tiles, add them here
        winEffects = {CONST_ANI_FIRE, CONST_ME_SOUND_YELLOW, CONST_ME_SOUND_PURPLE, CONST_ME_SOUND_BLUE, CONST_ME_SOUND_WHITE}, -- first effect needs to be distance effect
        effectDelay = 450,
        spinTime = {min = 8, max = 12}, -- seconds
        spinSlowdownRamping = 8,
        rouletteStorage = 48550 -- required storage to avoid player abuse (if they logout/die before roulette finishes.. they can spin again for free)
    },
    prizePool = {
        {itemId = 44622, count = {1, 1}, chance = 6000 }, --prismatic bag
        {itemId = 44623, count = {1, 1}, chance = 3000 }, --ornate bag
        {itemId = 44624, count = {1, 1}, chance = 3000 }, --ornate bag
        {itemId = 44626, count = {1, 1}, chance = 4000 }, -- concotion box
        {itemId = 44615, count = {1, 1}, chance = 5000 }, -- food
        {itemId = 44616, count = {1, 1}, chance = 6000 }, -- lottery
        {itemId = 44627, count = {1, 1}, chance = 4000 }, -- concotion res
        {itemId = 44625, count = {1, 1}, chance = 4000 }, -- concotion amp
        {itemId = 44601, count = {5, 5}, chance = 8000 }, -- roulette token
        {itemId = 22516, count = {5, 5}, chance = 8000 }, -- silver token
        {itemId = 22721, count = {5, 5}, chance = 8000 }, -- gold token
        {itemId = 44620, count = {1, 1}, chance = 2000 }, -- mountdoll
        {itemId = 44621, count = {1, 1}, chance = 2000 }, -- addondoll
        {itemId = 34109, count = {1, 1}, chance = 300 }, -- bag you desire
        {itemId = 43895, count = {1, 1}, chance = 100 }, -- bag you cover
        {itemId = 39546, count = {1, 1}, chance = 200 }  -- primal bag
    },
    roulettePositions = { -- hard-coded to 7 positions.
        Position(33469, 32533, 10),
        Position(33470, 32533, 10),
        Position(33471, 32533, 10),
        Position(33472, 32533, 10), -- position 4 in this list is hard-coded to be the reward location, which is the item given to the player
        Position(33473, 32533, 10),
        Position(33474, 32533, 10),
        Position(33475, 32533, 10)
    }
}

local chancedItems = {} -- used for broadcast. don't edit

local function resetLever(position)
    local lever = Tile(position):getItemById(config.lever.right)
    lever:transform(config.lever.left)
end

local function updateRoulette(newItemInfo)
    local positions = config.roulettePositions
    for i = #positions, 1, -1 do
        local item = Tile(positions[i]):getTopVisibleThing()
        if item and item:getId() ~= Tile(positions[i]):getGround():getId() and not table.contains(config.rouletteOptions.ignoredItems, item:getId()) then
            if i ~= 7 then
                item:moveTo(positions[i + 1])
            else
                item:remove()
            end
        end
    end

    Game.createItem(newItemInfo.itemId, newItemInfo.count, positions[1])
end

local function clearRoulette(newItemInfo)
    local positions = config.roulettePositions
    for i = #positions, 1, -1 do
        local item = Tile(positions[i]):getTopVisibleThing()
        if item and item:getId() ~= Tile(positions[i]):getGround():getId() and not table.contains(config.rouletteOptions.ignoredItems, item:getId()) then
            item:remove()
        end
        if newItemInfo == nil then
            positions[i]:sendMagicEffect(CONST_ME_POFF)
        else
            Game.createItem(newItemInfo.itemId, newItemInfo.count, positions[i])
        end
    end
end

local function chanceNewReward()
    local newItemInfo = {itemId = 0, count = 0}
    
    local rewardTable = {}
    
    while #rewardTable < 1 do
        for i = 1, #config.prizePool do
            if config.prizePool[i].chance >= math.random(10000) then
                rewardTable[#rewardTable + 1] = i
            end
        end
    end
    
    local rand = math.random(#rewardTable)
    local selectedPrize = config.prizePool[rewardTable[rand]]
    
    newItemInfo.itemId = selectedPrize.itemId
    newItemInfo.count = math.random(selectedPrize.count[1], selectedPrize.count[2])
    
    chancedItems[#chancedItems + 1] = selectedPrize.chance
    
    return newItemInfo
end

local function initiateReward(leverPosition, effectCounter)
    if effectCounter < #config.rouletteOptions.winEffects then
        effectCounter = effectCounter + 1
        if effectCounter == 1 then
            config.roulettePositions[1]:sendDistanceEffect(config.roulettePositions[4], config.rouletteOptions.winEffects[1])
            config.roulettePositions[7]:sendDistanceEffect(config.roulettePositions[4], config.rouletteOptions.winEffects[1])
        else
            for i = 1, #config.roulettePositions do
                config.roulettePositions[i]:sendMagicEffect(config.rouletteOptions.winEffects[effectCounter])
            end
        end
        if effectCounter == 2 then
            local item = Tile(config.roulettePositions[4]):getTopVisibleThing()
            local newItemInfo = {itemId = item:getId(), count = item:getCount()}
            clearRoulette(newItemInfo)
        end
        addEvent(initiateReward, config.rouletteOptions.effectDelay, leverPosition, effectCounter)
        return
    end
    resetLever(leverPosition)
end

local function rewardPlayer(playerId, leverPosition)
    local player = Player(playerId)
    if not player then
        return
    end
    
    local item = Tile(config.roulettePositions[4]):getTopVisibleThing()
    local newItemInfo = {itemId = item:getId(), count = item:getCount()}  -- Obtén el ID y la cantidad del premio
    
    player:addItem(newItemInfo.itemId, newItemInfo.count)  -- Entrega el premio con la cantidad adecuada
    
    player:setStorageValue(config.rouletteOptions.rouletteStorage, -1)
    if chancedItems[#chancedItems - 3] <= config.rouletteOptions.rareItemChance_broadcastThreshold then
        local itemName = ItemType(newItemInfo.itemId):getName()  -- Obtén el nombre del premio
        Game.broadcastMessage("The player " .. player:getName() .. " has won " .. newItemInfo.count .. " " .. itemName .. " from the roulette!", MESSAGE_EVENT_ADVANCE)
    end
end

local function roulette(playerId, leverPosition, spinTimeRemaining, spinDelay)
    local player = Player(playerId)
    if not player then
        resetLever(leverPosition)
        return
    end
    
    local newItemInfo = chanceNewReward()
    updateRoulette(newItemInfo)
    
    if spinTimeRemaining > 0 then
        spinDelay = spinDelay + config.rouletteOptions.spinSlowdownRamping
        addEvent(roulette, spinDelay, playerId, leverPosition, spinTimeRemaining - (spinDelay - config.rouletteOptions.spinSlowdownRamping), spinDelay)
        return
    end
    
    initiateReward(leverPosition, 0)
    rewardPlayer(playerId, leverPosition)
end

local casinoRoulette = Action()

function casinoRoulette.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == config.lever.right then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Casino Roulette is currently in progress. Please wait.")
        return true
    end
    
    if player:getItemCount(config.playItem.itemId) < config.playItem.count then
        if player:getStorageValue(config.rouletteOptions.rouletteStorage) < 1 then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Casino Roulette requires " .. config.playItem.count .. " " .. ItemType(config.playItem.itemId):getName() .. " to use.")
            return true
        end
        -- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Free Spin being used due to a previous unforeseen error.")
    end
    
    item:transform(config.lever.right)
    clearRoulette()
    chancedItems = {}
    
    player:removeItem(config.playItem.itemId, config.playItem.count)
    player:setStorageValue(config.rouletteOptions.rouletteStorage, 1)
    
    local spinTimeRemaining = math.random((config.rouletteOptions.spinTime.min * 1000), (config.rouletteOptions.spinTime.max * 1000))
    roulette(player:getId(), toPosition, spinTimeRemaining, 100)
    return true
end

casinoRoulette:aid(config.actionId)
casinoRoulette:register()

local disableMovingItemsToRoulettePositions = MoveEvent()

disableMovingItemsToRoulettePositions.onAddItem = function(moveitem, tileitem, position, item, count, fromPosition, toPosition)
    for _, k in pairs(config.roulettePositions) do
        if toPosition == k then
            return false
        end
    end
    return true
end

disableMovingItemsToRoulettePositions:position(config.roulettePositions)
disableMovingItemsToRoulettePositions:register()
