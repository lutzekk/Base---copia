local dragonBalls = {
    {itemId = 2627, number = 1}, 
    {itemId = 2628, number = 2},
    {itemId = 2629, number = 3},
    {itemId = 2630, number = 4},
    {itemId = 2631, number = 5},
    {itemId = 2632, number = 6},
    {itemId = 2626, number = 7},
  }
  
  function onUse(player, item, fromPosition, target, toPosition, isHotkey)
  local chance = math.random(1,7)
      for x,y in pairs(dragonBalls) do 
          if chance == y.number then
              item:remove(1)
              player:addItem(y.itemId, 1)
              Game.broadcastMessage(player:getName().." Picked up a "..getItemName(y.itemId), MESSAGE_STATUS_WARNING)
              player:getPosition():sendMagicEffect(799)
          end
      end
  end