local captureList = {
    ['Red Gyarados'] = {itemToGain = 8577, message = "Red Gyarados"},
    -- Agrega más criaturas y sus datos de captura aquí si es necesario
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

                player:sendTextMessage(MESSAGE_INFO_DESCR, target:getName() .. " Capturado")
                target:getPosition():sendMagicEffect(539) -- Enviar efecto mágico al objetivo
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message) -- Mostrar mensaje en la pantalla en verde
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, target:getName() .. " ha escapado")
                target:getPosition():sendMagicEffect(540) -- Enviar efecto mágico al objetivo
            end
            return true -- Devolver true después de procesar un objetivo válido para evitar iterar sobre otros objetivos
        end
    end
    return false -- Devolver false si no se procesó ningún objetivo válido
end
