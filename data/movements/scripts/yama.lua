function onStepIn(player, item, position, fromPosition)
    local teleportPosition = Position(99, 189, 7) -- Lugar al que será teleportado

    -- Verificamos si el jugador pisa cualquier posición entre (303,36,6) y (309,36,6)
    if position.y == 36 and position.z == 6 and position.x >= 303 and position.x <= 309 then
        player:teleportTo(teleportPosition)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Has sido teletransportado a un nuevo lugar.")
    end

    return true
end
