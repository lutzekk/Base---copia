local battlePassRewards = {
    [1] = {itemid = 2160, count = 5},  -- Ejemplo: Nivel 1 recompensa 5 Crystal Coins
    [2] = {itemid = 2152, count = 100}, -- Ejemplo: Nivel 2 recompensa 100 Platinum Coins
    -- Agrega más niveles y recompensas según sea necesario
}

function sendBattlePassData(player)
    local playerId = player:getId()
    local passData = {
        type = "openPass",
        passEnd = os.time() + 30 * 24 * 60 * 60, -- Ejemplo de fecha de fin en 30 días
        levels = {}
    }

    for level, reward in pairs(battlePassRewards) do
        table.insert(passData.levels, {
            level = level,
            collected = player:getStorageValue(1000 + level) > 0,
            itemId = reward.itemid,
            count = reward.count
        })
    end

    local jsonData = json.encode(passData)
    player:sendExtendedOpcode(38, jsonData)
end

function collectAllBattlePassRewards(player)
    for level, reward in pairs(battlePassRewards) do
        if player:getStorageValue(1000 + level) <= 0 then
            player:addItem(reward.itemid, reward.count)
            player:setStorageValue(1000 + level, 1)
        end
    end

    sendBattlePassData(player) -- Actualiza los datos del pase de batalla al cliente
end

function buyBattlePass(player)
    local cost = 100  -- Define el costo del pase de batalla
    if player:removeMoney(cost) then
        player:setStorageValue(999, 1) -- Almacena que el jugador ha comprado el pase
        player:sendTextMessage(MESSAGE_INFO_DESCR, "¡Has comprado el Pase de Batalla!")
        sendBattlePassData(player)
    else
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "No tienes suficiente dinero para comprar el Pase de Batalla.")
    end
end
