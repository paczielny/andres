local config = {
    [1] = { npcName = "Top One Highscore", position = Position(32373, 32213, 7) },
    [2] = { npcName = "Top Two Highscore", position = Position(32375, 32213, 7) },
    [3] = { npcName = "Top Three Highscore", position = Position(32377, 32213, 7) },
}

local function getLevelHighscores()
    local highscores = {}
    local query = db.storeQuery("SELECT `name`, `level`, `looktype`, `lookhead`, `lookbody`, `looklegs`, `lookfeet`, `lookaddons`, `lookmount` FROM `players` WHERE `group_id` < 4 ORDER BY `experience` DESC LIMIT 3")
    if query then
        repeat
            highscores[#highscores + 1] = {
                name = Result.getString(query, "name"),
                level = Result.getNumber(query, "level"),
                lookType = Result.getNumber(query, "looktype"),
                lookHead = Result.getNumber(query, "lookhead"),
                lookBody = Result.getNumber(query, "lookbody"),
                lookLegs = Result.getNumber(query, "looklegs"),
                lookFeet = Result.getNumber(query, "lookfeet"),
                lookAddons = Result.getNumber(query, "lookaddons"),
                lookMount = Result.getNumber(query, "lookmount"),
            }
        until not Result.next(query)
        Result.free(query)
    end
    return highscores
end

local topLevelHighscores = GlobalEvent("top-level-highscores")

function topLevelHighscores.onStartup()

    local highscores = getLevelHighscores()
    local npc = nil
    local npcConfig = nil
    local newConfig = nil

    for i = 1, #config do
        npcConfig = config[i]
        newConfig = highscores[i]

        if npcConfig and newConfig then
            npc = Game.createNpc(npcConfig.npcName, npcConfig.position)
            if npc then
                npc:setMasterPos(npcConfig.position)
                npc:setName(newConfig.name .. " [" .. newConfig.level .. "]")
                npc:setSpeechBubble(0)
                npc:setOutfit({
                    lookType = newConfig.lookType,
                    lookHead = newConfig.lookHead,
                    lookBody = newConfig.lookBody,
                    lookLegs = newConfig.lookLegs,
                    lookFeet = newConfig.lookFeet,
                    lookAddons = newConfig.lookAddons,
                    lookMount = newConfig.lookMount,  -- Agregar la montura
                })
            end
        end
    end
    return true
end

topLevelHighscores:register()
