function onLook(cid, thing, position, lookDistance)
if isPlayer(thing.uid) then
local type = getPlayerStorageValue(thing.uid, 89745)
doPlayerSetSpecialDescription(thing.uid, "\n "..(getPlayerSex(cid) == 0 and "She" or "Voce Pertence").." Rank "..(type < 0 and "Bronze" or type == 1 and "Ouro" or type == 2 and "Platina" or type == 3 and "Diamante" or type == 4 and "Mestre" or type == 5 and "Deus"))
end
return true
end