local REWARD = {2472, 2504, 7457, 2537,2484}
local JEWEL = {2472, 2504, 7457, 2537,2484}
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
  
doSendMagicEffect(getPlayerPosition(cid), 649)
   doRemoveItem(item.uid, 1)
   return true
end
