function onThink(cid, interval)
local itemid = 14281

if isPlayer(cid) then
if getPlayerItemCount(cid, itemid) >= 1 then
if getPlayerStorageValue(cid, 24588) == -1 then
setPlayerStorageValue(cid, 24588, 1)
else

end
doPlayerRemoveItem(cid, itemid, 1)
addEvent(doRemoveCreature, 1, cid)
end
end
return true
end