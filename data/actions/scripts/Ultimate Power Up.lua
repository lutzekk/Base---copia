function onUse(cid, item)


local magia = "Ultimate Power Up"



if getPlayerLearnedInstantSpell(cid, magia) then
doPlayerSendTextMessage(cid,25,"You already learned everything from this scroll.")
elseif doPlayerLearnInstantSpell(cid, magia) then
doRemoveItem(item.uid,1)
local pos = getCreaturePosition(cid)
doSendMagicEffect(pos, 34)
doPlayerSendTextMessage(cid,19,"By reading this ancient scroll you learned the secrets of "..magia..".")
end
end