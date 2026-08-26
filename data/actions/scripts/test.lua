local mvp = {
    ['Janemba MVP'] = {powerCoreId = 5914}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = 876567 -- Reemplaza con el valor específico del storage

    for bossName, bossData in pairs(mvp) do
        if target:getName() == bossName then
            item:remove(1)
            doRemoveCreature(target)

            -- Aquí se establece la probabilidad de captura (por ejemplo, 50%)
            local captureProbability = math.random(1, 100) <= 50

            if captureProbability then
                player:setStorageValue(storageValue, player:getStorageValue(storageValue) + 1)
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
