function onSay(player, words, param, channel)

    local pid = player:getId()
	local pos_player = Position(player:getPosition().x + 1, player:getPosition().y, player:getPosition().z)
	local pos_player2 = Position(player:getPosition().x + 3, player:getPosition().y + 1, player:getPosition().z)
    if exhaust_transform[pid] ~= nil then
        return false
    end

    local TRANS = transform[player:getVocation():getId()]
    if not TRANS then return player:sendCancelMessage("You cannot transform.") end
	if TRANS.key1 then
    if player:getStorageValue(9000) ~= TRANS.key1 then return player:sendCancelMessage("You need reset one to transform.") end
	end
	if TRANS.key2 then
    if player:getStorageValue(10000) ~= TRANS.key2 then return player:sendCancelMessage("You need reset two to transform.") end
	end
	if TRANS.key3 then
    if player:getStorageValue(11000) ~= TRANS.key3 then return player:sendCancelMessage("You need reset three to transform.") end
	end
    if player:getLevel() < TRANS.level then return player:sendCancelMessage("You must reach level "..TRANS.level.." to transform.") end
    if player:getSoul() < TRANS.rage then return player:sendCancelMessage("You need "..TRANS.rage.." to transform.") end
    if player:getMana() < TRANS.mana then return player:sendCancelMessage("You need "..TRANS.mana.." to transform.") end
    local outfit = player:getOutfit()
    outfit.lookType = TRANS.looktype

    if TRANS.constant then
        player:setOutfit(outfit)
    else
        player:setOutfit(outfit, false)
    end
 
    exhaust_transform[pid] = 1
    player:addSoul(-TRANS.rage)
    player:setMaxHealth(player:getBaseMaxHealth() + TRANS.addHealth)
    player:setMaxMana(player:getBaseMaxMana() + TRANS.addMana)
    player:addHealth(TRANS.addHealth)
    player:addMana(TRANS.addMana)
if TRANS.effect then
    player:getPosition():sendMagicEffect(TRANS.effect)
end
    pos_player:sendMagicEffect(TRANS.effect2)
print(TRANS.effect2)
	if TRANS.effect3 then
print(TRANS.effect3)
    pos_player2:sendMagicEffect(TRANS.effect3)
	end
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You have transformed!")
    player:setVocation(TRANS.newVoc)
    player:save()
    addEvent(removeExhaust, 1 * 1000, pid)
return true
end
function removeExhaust(pid)
    exhaust_transform[pid] = nil
end