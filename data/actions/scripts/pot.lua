local config = {
    rate = 1.5,
    time = 2, -- Duración en minutos
    storage = 20011,
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
    -- Verificar si el jugador ya tiene experiencia adicional
    local endTime = getPlayerStorageValue(cid, config.storage)
    
    if endTime < 0 or os.time() >= endTime then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Tu tasa de experiencia adicional es ahora: " .. config.rate .. ". Durará " .. config.time .. " minuto(s).")
        
        setPlayerStorageValue(cid, config.storage, os.time() + config.time * 60)
        doRemoveItem(item.uid, 1)
    else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Aún tienes tiempo de experiencia adicional activo.")
    end

    return true
end

function onThink()
    local players = getPlayersOnline()
    for _, cid in ipairs(players) do
        local endTime = getPlayerStorageValue(cid, config.storage)
        
        if endTime >= 0 then
            local timeLeft = endTime - os.time()
            
            if timeLeft <= 0 then
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Tu tiempo de experiencia adicional ha terminado.")
                setPlayerStorageValue(cid, config.storage, -1) -- Reiniciar el almacenamiento
            elseif timeLeft <= 60 then
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Te queda 1 minuto de experiencia adicional.")
            elseif timeLeft % 60 == 0 then
                local minutesLeft = math.floor(timeLeft / 60)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Te quedan " .. minutesLeft .. " minuto(s) de experiencia adicional.")
            end
        end
    end
end
