local REWARD = {2352, 8537, 2450,2385,2390,2397, 2420, 2413,2442,2377,2446}
local JEWEL = {2352, 8537, 2450,2385,2390,2397, 2420, 2413,2442,2377,2446}
function onUse(cid, item, fromPosition, itemEx, toPosition)
      local randomChance = math.random(2, #REWARD)
      doPlayerAddItem(cid, REWARD[randomChance], 1)

local randomLoot = math.random(1,20)
    if randomLoot == 1 then
    doPlayerSendTextMessage(cid, 19, "You found an extra item!")
             local randomChance = math.random(2, #REWARD)
              doPlayerAddItem(cid, REWARD[randomChance], 1)
    end

local randomJewel = math.random(1,10)
    if randomJewel == 1 then
    doPlayerSendTextMessage(cid, 19, "You found an extra item!")
      local randomChance = math.random(2, #JEWEL)
      doPlayerAddItem(cid, JEWEL[randomChance], 1)
    end
  
doSendMagicEffect(getPlayerPosition(cid), 537)
   doRemoveItem(item.uid, 1)
   return true
end
