function onSay(player, words, param, channel)
    local pid = player:getId()

    if exhaust_transform[pid] ~= nil then
        return false
    end

    local TRANS = transform[player:getVocation():getId() - 1]

    if not TRANS then return player:sendCancelMessage("You cannot revert.") end

    local outfit = player:getOutfit()
    outfit.lookType = TRANS.from_looktype

    if TRANS.constant then
        player:setOutfit(outfit)
    else
        player:setOutfit(outfit, false)
    end

    exhaust_transform[pid] = 1
    player:setMaxHealth(player:getBaseMaxHealth() - TRANS.addHealth) -- Resta 7000 de HP
    player:setMaxMana(player:getBaseMaxMana() - TRANS.addMana)-- Resta 7000 de mana
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You have reverted!")
    player:setVocation(TRANS.voc)
    player:getPosition():sendMagicEffect(9)
    player:save()
    addEvent(removeExhaust, 1 * 1000, pid)
    return true
end

function removeExhaust(pid)
    exhaust_transform[pid] = nil
end
