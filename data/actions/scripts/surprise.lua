local items = {
  {itemId = 7736, count = 1, chance = 20}, -- ITEM, QUANTIDADE, CHANCE
  {itemId = 7737, count = 1, chance = 20},
  {itemId = 7738, count = 1, chance = 20},
  {itemId = 7739, count = 1, chance = 20},
   {itemId = 7740, count = 1, chance = 20},
  {itemId = 7741, count = 1, chance = 20},
  {itemId = 7742, count = 1, chance = 20},


  
}
local broadcastitems = {7736, 7737, 7738, 7739, 7740, 7741, 7742}

function onUse(cid, item, frompos, item2, topos)

  local totalChance, randomTable, randomNumber = 0, {}, 0

  for _, itemInfo in pairs (items) do
    randomTable[itemInfo.itemId] = {min = totalChance + 1, max = itemInfo.chance, count = itemInfo.count or 1}
    totalChance = totalChance + itemInfo.chance
  end

  randomNumber = math.random(1, totalChance)
  for itemId, itemInfo in pairs (randomTable) do
    local min, max = itemInfo.min, itemInfo.min + itemInfo.max
    if randomNumber >= min and randomNumber <= max then
      local newItem = doPlayerAddItem(cid, itemId, itemInfo.count, false)
      if not newItem then return doPlayerSendCancel(cid, "You have no space to receive the item!") end
      doRemoveItem(item.uid, 1)
	 
      local iInfo = getItemInfo(itemId)
      doPlayerSendTextMessage(cid, 25, "You Won "..itemInfo.count.." "..iInfo.name.."")
      for i, broaditem in ipairs(broadcastitems) do
        if itemId==broaditem then doBroadcastMessage(getCreatureName(cid).." just won: "..itemInfo.count.." "..iInfo.name.." (Rare) in this box.", 19) end
      end
      break
    end
  end
  return true
end