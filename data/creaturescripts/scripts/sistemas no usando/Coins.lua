-- Auto Change Gold

function onThink(cid, interval)

if(not isCreature(cid)) then

return

end


local plat = math.floor(getPlayerItemCount(cid, 2160)/100)

if(plat > 0) then

doPlayerRemoveItem(cid, 2160, plat*100)

doPlayerAddItem(cid, 13886, plat)

end


local crys = math.floor(getPlayerItemCount(cid, 13886)/100)

if(crys > 0) then

doPlayerRemoveItem(cid, 13886, crys*100)

doPlayerAddItem(cid, 2160, crys)

end


end