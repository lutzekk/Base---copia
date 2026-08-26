local config = {
    storageValue = 10000, -- Valor de almacenamiento necesario para activar el evento de pesca.
    eventId = 1, -- Reemplaza esto con el ID del Global Event que usarás para la pesca.
    duration = 60 * 1000 -- Duración del evento en milisegundos (1 minuto).
}

function onAction(cid, item, fromPosition, target, toPosition, isHotkey)
    if item.actionid == 100 then -- Reemplaza "100" con el actionid que desees usar para el NPC.
        if getPlayerStorageValue(cid, config.storageValue) ~= config.eventId then
            setPlayerStorageValue(cid, config.storageValue, config.eventId)
            doSendMagicEffect(getPlayerPosition(cid), 769, cid) -- Opcional: Puedes agregar un efecto visual al activar el NPC.
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "¡Comienza el evento de pesca!")
            addEvent(function()
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "¡Termina el evento de pesca!")
                setPlayerStorageValue(cid, config.storageValue, 0)
            end, config.duration, cid)
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "¡El evento de pesca ya está activo!")
        end
    end
end
