function onThink(cid, interval)
local itemid = 14275

if isPlayer(cid) then
if getPlayerItemCount(cid, itemid) >= 1 then
if getPlayerStorageValue(cid, 24583) == -1 then
setPlayerStorageValue(cid, 24583, 1)
else

end
doPlayerRemoveItem(cid, itemid, 1)
addEvent(doRemoveCreature, 1, cid)
end
end
return true
end