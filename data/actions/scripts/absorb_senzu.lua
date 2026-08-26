local captureList = {
    ['Janemba MVP'] = {itemToLose = 2303, storageToGain = 8765}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    for monsterName, captureData in pairs(captureList) do
        if target:getName() == monsterName then
            item:remove(1)
            doRemoveCreature(target)

            -- Establece la probabilidad de captura (por ejemplo, 50%)
            local captureProbability = math.random(1, 100) <= 50

            if captureProbability then
                -- Pierde el ítem especificado
                player:removeItem(captureData.itemToLose, 1)

                -- Verifica y establece el storage si no se ha establecido
                local storageValue = captureData.storageToGain
                if player:getStorageValue(storageValue) ~= 1 then
                    player:setStorageValue(storageValue, 1)
                end

                player:getPosition():sendMagicEffect(649)
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations! You have successfully captured " .. target:getName())
            else
                player:sendTextMessage(MESSAGE_STATUS_SMALL, target:getName() .. " has escaped")
                player:getPosition():sendMagicEffect(627)
            end
        end
    end
    return true
end
