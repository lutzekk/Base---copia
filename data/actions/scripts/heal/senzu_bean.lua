local POTIONS = {
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [2686] = {health = 2000, mana = 500, msg = "ohh yeah!"},                                     
  [2689] = {health = 500, mana = 2000, msg = "ohh yeah!"},                                     
  [6558] = {health = 10000, mana = 10000, msg = "ohh yeah!"},                                     
  [9156] = {health = 1000, mana = 5000, msg = "ohh yeah!"},                                     
  [9155] = {health = 5000, mana = 1000, msg = "ohh yeah!"},                                     
  [2673] = {health = 20000, mana = 20000, msg = "I feel the best!"},                   
  [2795] = {health = 5000, mana = 5000, msg = "I feel good!"},              
  [2796] = {health = 10000, mana = 10000, msg = "I feel better!"},              
  [3956] = {health = 40000, mana = 40000, msg = "My enchanted power!"},            
  [8616] = {health = 50000, mana = 50000, msg = "I am recovered!"}           
}

local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 200))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
local potion = POTIONS[item.itemid]
local itemId = item:getId()
    if player:getCondition(CONDITION_EXHAUST_HEAL) then
     player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
     return true
    end
    player:addCondition(exhaust)
    if potion.msg then
    player:say(potion.msg, TALKTYPE_MONSTER_SAY)
    end
    if (potion) then
     item:remove(1)
     player:addMana(potion.mana) 
     player:addHealth(potion.health)      
     return true
    end


end