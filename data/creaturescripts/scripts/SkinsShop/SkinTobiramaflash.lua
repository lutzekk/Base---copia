function onThink(cid, interval)
local itemid = 14255

if isPlayer(cid) then
if getPlayerItemCount(cid, itemid) >= 1 then
if getPlayerStorageValue(cid, 24572) == -1 then
setPlayerStorageValue(cid, 24572, 1)
else

end
doPlayerRemoveItem(cid, itemid, 1)
addEvent(doRemoveCreature, 1, cid)
end
end
return true
end