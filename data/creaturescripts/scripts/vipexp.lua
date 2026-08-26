local dailyRewards = {
    {itemId = 2160, count = 1, name = "Crystal Coin"}, -- Día 1
    {itemId = 2152, count = 10, name = "Gold Coin"}, -- Día 2
    {itemId = 7590, count = 1, name = "Trophy"}, -- Día 3
    -- Agrega más recompensas según sea necesario
}

function onLogin(player)
    local lastLogin = player:getStorageValue(12345) -- ID de storage para el último login
    local currentDate = os.date("%Y-%m-%d")

    if lastLogin ~= currentDate then
        player:setStorageValue(12345, currentDate)
        player:setStorageValue(12346, 0) -- Reinicia el contador de días
    else
        local currentStreak = player:getStorageValue(12346)
        player:setStorageValue(12346, currentStreak + 1) -- Incrementa el contador
    end
end

function sendRewardData(player)
    local streak = player:getStorageValue(12346)
    local rewardData = {
        type = "update",
        rewardData = dailyRewards,
        consecutiveLoginsCount = streak
    }

    player:sendExtendedOpcode(10, json.encode(rewardData))
end

function collectReward(player, day)
    local streak = player:getStorageValue(12346)

    if day <= streak and day <= #dailyRewards then
        local reward = dailyRewards[day]
        player:addItem(reward.itemId, reward.count)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Has recibido " .. reward.count .. " " .. reward.name .. ".")
        return true
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "No puedes recolectar esta recompensa.")
        return false
    end
end

function onSay(player, words, param)
    if words:lower() == "!recompensas" then
        sendRewardData(player)
        return true
    end
    return false
end

function onExtendedOpcode(player, opcode, payload)
    if opcode == 33 then
        local data = json.decode(payload)
        if data.type == "collectRewardLogin" then
            collectReward(player, data.day)
        end
    end
end




-- Registra los eventos
function onThink()
    for _, player in ipairs(Game.getPlayers()) do
        onLogin(player)
    end
end

-- Agrega los eventos necesarios para manejar el opcode
Game.registerExtendedOpcode(33, onExtendedOpcode)
addEvent(onThink, 60000) -- Ejecutar cada 60 segundos
