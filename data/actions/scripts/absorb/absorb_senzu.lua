function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = 108

    -- Verificar si el jugador ya tiene el storage 106
    if player:getStorageValue(storageValue) == 1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already obtained the benefits. You cannot use this item again.")
        return true
    end

    item:remove(1)

    player:getPosition():sendMagicEffect(649)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations! You have successfully used the item.", MESSAGE_STATUS_CONSOLE_BLUE)

    -- Establecer el storage 106 para indicar que ya se utilizó
    player:setStorageValue(storageValue, 1)

    return true
end
