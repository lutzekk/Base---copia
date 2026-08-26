local config = {
    monsterName = "Red Gyarados", -- Nombre del monstruo que quieres invocar
    storage = 1123000, -- Almacenamiento para guardar el estado del monstruo
}

function summonMonster(player)
    local monster = Game.createMonster(config.monsterName, player:getPosition(), true, true)
    if monster then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "¡" .. config.monsterName .. " invocado como tu mascota!")
        player:setStorageValue(config.storage, true) -- Guardar el estado del monstruo como invocado

        -- Establecer el monstruo como mascota del jugador
        monster:setMaster(player)

        -- Desvincular la mascota después de 10 segundos
        addEvent(function()
            if monster:isCreature() then
                monster:setMaster(nil)
                monster:remove()
                player:setStorageValue(config.storage, false) -- Actualizar el estado del monstruo a no invocado
            end
        end, 10000)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "No se pudo invocar al monstruo.")
    end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = player:getStorageValue(config.storage)

    if not storageValue then
        summonMonster(player)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Ya has invocado a " .. config.monsterName .. ".")
    end
    return true
end
