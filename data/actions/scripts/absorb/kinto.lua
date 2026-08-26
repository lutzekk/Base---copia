function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = 114

    -- Verificar si el jugador ya tiene el storage 114
    if player:getStorageValue(storageValue) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already obtained the benefits. You cannot use this item again.", MESSAGE_STATUS_CONSOLE_BLUE)
        return true
    end

    -- Eliminar el item del inventario del jugador
    item:remove(1)

    -- Establecer el storage 114 para indicar que ya se utilizó
    player:setStorageValue(storageValue, 1)

    -- Enseñar la spell "Kinto"


    player:getPosition():sendMagicEffect(649)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations! You have successfully used the item and learned the spell 'Kinto'.", MESSAGE_STATUS_CONSOLE_BLUE)

    return true
end
