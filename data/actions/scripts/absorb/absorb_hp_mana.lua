function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = 100

    -- Verifica si el jugador ya tiene el storage 100
    if player:getStorageValue(storageValue) == -1 then
        -- Establece el storage 100 para indicar que ya se utilizó
        player:setStorageValue(storageValue, 1)

        -- Elimina el ítem del inventario del jugador
        item:remove(1)
        player:setMaxHealth(player:getBaseMaxHealth() + 5000)
        player:setMaxMana(player:getBaseMaxMana() + 5000)

        player:getPosition():sendMagicEffect(649)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations! You gained 5000 health and mana.")
    else
        -- Si ya tiene el storage 100, mostrar mensaje indicando que no puede usarlo nuevamente
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have the reward and cannot use this item again.")
    end

    return true
end
