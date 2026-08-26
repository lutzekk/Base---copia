function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = 104

    -- Verificar si el jugador ya tiene el storage 104
    if player:getStorageValue(storageValue) == -1 then
        -- Establece el storage 104 para indicar que ya se utilizó
        player:setStorageValue(storageValue, 1)

        -- Elimina el ítem del inventario del jugador
        item:remove(1)

        player:getPosition():sendMagicEffect(649)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations! You have successfully captured " .. target:getName() .. ". You gained 15% extra chance.")
    else
        -- Si ya tiene el storage 104, mostrar mensaje indicando que no puede usarlo nuevamente
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have already captured " .. target:getName() .. " and cannot use this item again.")
    end

    return true
end
