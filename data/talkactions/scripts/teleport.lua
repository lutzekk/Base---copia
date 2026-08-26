local COOLDOWN_STORAGE = 11114
local COOLDOWN_TIME = 30 * 60  -- 30 minutes in seconds

function onSay(cid, words, param)
    local player = Player(cid)
    if not player then
        doPlayerSendCancel(cid, "No puedes usar este comando.")
        return true
    end

    local playerStorage = getPlayerStorageValue(player, COOLDOWN_STORAGE)
    if playerStorage == -1 or os.time() - playerStorage >= COOLDOWN_TIME then
        if getCreatureCondition(player, CONDITION_INFIGHT) then
            doPlayerSendCancel(player, "No puedes teletransportarte en plena batalla.")
            doSendMagicEffect(getPlayerPosition(player), 2)
        else
            doTeleportThing(player, getTownTemplePosition(getPlayerTown(player)))
            doPlayerSendTextMessage(player, 4, "¡Bienvenido al Templo Enigma!")
            doSendMagicEffect(getPlayerPosition(player), 31)
            
            -- Establecer el tiempo actual como el último momento en que se usó
            setPlayerStorageValue(player, COOLDOWN_STORAGE, os.time())
        end
    else
        local remainingCooldown = COOLDOWN_TIME - (os.time() - playerStorage)
        doPlayerSendCancel(player, string.format("Debes esperar %d minutos y %d segundos antes de teletransportarte nuevamente.", remainingCooldown / 60, remainingCooldown % 60))
    end
    
    return false -- Prevent the command from being visible in the chat
end
