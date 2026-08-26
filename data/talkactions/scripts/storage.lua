-- verificarStorage.lua

function onSay(player, words, param)
    local storageValue = player:getStorageValue(10003)
    
    if storageValue ~= -1 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "El valor de Storage (10003) es: " .. storageValue)
        
        -- Imprimir en la consola del servidor
        print("Player " .. player:getName() .. " tiene el valor de Storage (10003): " .. storageValue)
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "El valor de Storage (10003) aún no ha sido establecido.")
    end
end
