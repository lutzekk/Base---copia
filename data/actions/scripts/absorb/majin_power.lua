local captureList = {
    ['Janemba MVP'] = {itemToGain = 8567, message = "has obtained Namekjin Ki"},
    ['Xicor MVP'] = {itemToGain = 8568, message = "has obtained Saiyan Ki"},
    ['Vegetto MVP'] = {itemToGain = 8569, message = "has obtained Human Ki"},
    ['Lost Saiyan MVP'] = {itemToGain = 8570, message = "has obtained Majin Ki"},
    ['Cell MVP'] = {itemToGain = 8571, message = "has obtained Shenron Ki"},
    ['Android MVP'] = {itemToGain = 8572, message = "has obtained Kaioshin Ki"},
    ['Brolly MVP'] = {itemToGain = 8573, message = "has obtained Dark Ki"},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    for monsterName, captureData in pairs(captureList) do
        if target:getName() == monsterName then
            local itemToGain = captureData.itemToGain

            item:remove(1)
            doRemoveCreature(target)

            -- Establece la probabilidad de captura (por ejemplo, 50%)
            local captureProbability = math.random(1, 100) <= 50

            if captureProbability then
                -- Dar el ítem al jugador
                player:addItem(itemToGain, 1)

                local message = "Congratulations! You have successfully captured " .. target:getName() .. " and " .. captureData.message
                player:getPosition():sendMagicEffect(649)
                player:sendTextMessage(MESSAGE_INFO_DESCR, message, MESSAGE_STATUS_CONSOLE_GREEN)
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, target:getName() .. " has escaped")
                player:getPosition():sendMagicEffect(627)
            end
        end
    end
    return true
end
