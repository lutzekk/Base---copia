function onThink(cid, interval)
local itemid = 14256

if isPlayer(cid) then
if getPlayerItemCount(cid, itemid) >= 1 then
if getPlayerStorageValue(cid, 24579) == -1 then
setPlayerStorageValue(cid, 24579, 1)
else

end
doPlayerRemoveItem(cid, itemid, 1)
addEvent(doRemoveCreature, 1, cid)
end
end
return true
end