local PASS_VIP = 93930 -- ID del storage para el pase VIP
local VIP_ITEM_ID = 8568 -- ID del ítem que se usará para obtener el pase VIP

function onUse(cid, item, fromPosition, itemEx, toPosition)
    -- Verifica si el jugador ya tiene el pase VIP
    if getPlayerStorageValue(cid, PASS_VIP) > 0 then
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCRAMBLED, "Você já possui o passe VIP.")
        return true
    end

    -- Verifica si el jugador tiene el ítem necesario para obtener el pase VIP
    if getPlayerItemCount(cid, VIP_ITEM_ID) > 0 then
        -- Remueve un ítem del jugador
        doPlayerRemoveItem(cid, VIP_ITEM_ID, 1)

        -- Asigna el storage del pase VIP al jugador
        setPlayerStorageValue(cid, PASS_VIP, 1)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCRAMBLED, "Você agora possui o passe VIP!")

        -- Aquí puedes agregar más acciones si es necesario (por ejemplo, otorgar un ítem o bonus)
    else
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCRAMBLED, "Você não possui o ítem necessário para obter o passe VIP.")
    end

    return true
end
