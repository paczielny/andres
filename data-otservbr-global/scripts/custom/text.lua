local effects = {
    {position = Position(32365, 32235, 7), text = '', effect = 56},
    {position = Position(32365, 32236, 7), text = 'TRAINERS', effect = 57},	
    {position = Position(32373, 32235, 7), text = '', effect = 56},
	{position = Position(32373, 32236, 7), text = 'ROULETTE', effect = 57},
    {position = Position(32210, 32301, 5), text = 'ROULETTE', effect = CONST_ME_TELEPORT},
    {position = Position(32209, 32301, 5), text = 'ROULETTE', effect = CONST_ME_TELEPORT},
    {position = Position(32209, 32292, 5), text = 'TEMPLE', effect = CONST_ME_TELEPORT},
    {position = Position(32210, 32292, 5), text = 'TEMPLE', effect = CONST_ME_TELEPORT},	
}

local animatedText = GlobalEvent("AnimatedText") 
function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

animatedText:interval(7 * 1000)
animatedText:register()