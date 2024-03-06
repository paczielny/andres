local itemsToSell = {
    {itemid = 28552, price = 1, charges = 500}, -- Ejemplo de 10 cargas
    {itemid = 28553, price = 1, charges = 500},
    {itemid = 28554, price = 1, charges = 500},	
    {itemid = 28555, price = 1, charges = 500},
    {itemid = 28556, price = 1, charges = 500},
    {itemid = 28557, price = 1, charges = 500},	
    {itemid = 44065, price = 1, charges = 500}	
}

local exchangeTokenID = 22722  -- El ID del token de intercambio

local shopItem = Action()

function purchaseItem(player, choice)
    local selectedData = itemsToSell[choice]
    if selectedData then
        local requiredTokens = selectedData.price  -- Cantidad requerida de tokens
        local itemDoll = player:getItemCount(exchangeTokenID) -- Verifica la cantidad de tokens que el jugador tiene
        if itemDoll >= requiredTokens then
            if player:removeItem(exchangeTokenID, requiredTokens) then  -- Elimina la cantidad correcta de tokens
                local effect = tonumber(6)
                if effect ~= nil and effect > 0 then
                    player:getPosition():sendMagicEffect(effect)
                end

                player:addItem(selectedData.itemid, selectedData.charges)  -- Agrega el ítem con el número de cargas específicas
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Has comprado " .. selectedData.charges .. " " .. ItemType(selectedData.itemid):getName() .. " con cargas.")
            else
                player:sendCancelMessage("No tienes suficientes tokens de intercambio.")
            end
        else
            player:sendCancelMessage("No tienes suficientes tokens de intercambio.")
        end
    else
        player:sendCancelMessage("Opción invalida.")
    end
end

function shopItem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:registerEvent("modalShop")
    if item:getId() == exchangeTokenID then
        local title = "Tienda de Intercambio"
        local message = "Selecciona el item que deseas comprar:"
        local window = ModalWindow(0, title, message)

        for i, data in ipairs(itemsToSell) do
            window:addChoice(i, ItemType(data.itemid):getName() .. " (" .. data.price .. " tokens)")
        end

        window:addButton(0, "Comprar")
        window:addButton(1, "Cancelar")
        window:setDefaultEnterButton(100)
        window:setDefaultEscapeButton(101)
        window:sendToPlayer(player)

        return true
    end

    return false
end

shopItem:id(exchangeTokenID)
shopItem:register()

local modalShop = CreatureEvent("modalShop")

function modalShop.onModalWindow(player, modalWindowId, buttonId, choiceId)
    player:unregisterEvent("modalShop")
    if modalWindowId == 0 and buttonId == 0 then
        purchaseItem(player, choiceId)
    end
    return true
end

modalShop:type("modalwindow")
modalShop:register()
