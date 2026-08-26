local config = {
    [8577] = { monster = "Red Gyarados", requiredLevel = 0, summonAmount = 1, },
    
}

local summonsystem = Action()

function summonsystem.onUse(player, item, fromPosition, summonrget, toPosition, isHotkey)
   
    local exhaust = 9091
    if player:getStorageValue(exhaust) > os.time() then
        return player:sendTextMessage(MESSAGE_INFO_DESCR, "You can spawn your summon again in "..player:getStorageValue(exhaust) - os.time().." secs")
    end
   
    local summon = config[item.itemid]
    if not summon then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "It seems like this summon stone is not supposed to work, upsssss.")
        return true
    end
   
    if player:getLevel() < summon.requiredLevel then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You must be level "..summon.level.." or higher to use this summon.")
        return true
    end
       
    local tile = player:getTile()
    local ground = tile:hasFlag(TILESTE_PROTECTIONZONE) and tile:getGround()
    if ground then
        player:sendCancelMessage("You cannot spawn your summons in protection zone.")
        return true
    end
       
    local playerSummons = player:getSummons()
    local maxSummons = summon.summonAmount
    if #playerSummons >= maxSummons then
        for i = 1, #playerSummons do
            playerSummons[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
            playerSummons[i]:getPosition():sendDistanceEffect(player:getPosition(), 5)
            Game.sendAnimatedText('REMOVED', playerSummons[i]:getPosition(), TEXTCOLOR_RED)
            playerSummons[i]:remove()
            player:setStorageValue(exhaust, os.time() + 3)
        end
    else
    local monster = Game.createMonster(summon.monster, player:getPosition())
    player:getPosition():sendDistanceEffect(monster:getPosition(), 5)
    player:addSummon(monster)
    Game.sendAnimatedText('SPAWNED', monster:getPosition(), TEXTCOLOR_RED)
    player:getPosition():sendMagicEffect(541)
    player:setStorageValue(exhaust, os.time() + 3)
    end
    return true
end

for v in pairs(config) do
    summonsystem:id(v)
end
summonsystem:register()