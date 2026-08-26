local REWARD = {7412, 2493, 7454, 7453, 2653, 2492, 2537, 2469, 2521, 3967, 7383}
local JEWEL = {7412, 2493, 7454, 7453, 2653, 2492, 2537, 2469, 2521, 3967, 7383}
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
