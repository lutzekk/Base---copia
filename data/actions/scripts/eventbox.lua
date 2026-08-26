local REWARD = {7732, 7733, 7734, 7735, 2549, 2646, 2543, 2643, 2642, 7390, 7411, 7412, 7421, 7423, 7431, 7438, 7745, 2444, 2445, 8533, 8534, 8535, 8536, 2537, 2536, 2539, 2540, 2652}
local JEWEL = {7732, 7733, 7734, 7735, 2549, 2646, 2543, 2643, 2642, 7390, 7411, 7412, 7421, 7423, 7431, 7438, 7745, 2444, 2445, 8533, 8534, 8535, 8536, 2537, 2536, 2539, 2540, 2652}
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
  
doSendMagicEffect(getPlayerPosition(cid), 73)
   doRemoveItem(item.uid, 1)
   return true
end
