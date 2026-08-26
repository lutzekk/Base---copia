function onLogin(cid)
local voc = {
}
if (not voc[getPlayerVocation(cid)]) then
return true
end
doSetCreatureOutfit(cid, {lookType = voc[getPlayerVocation(cid)]}, -1)
return TRUE
end