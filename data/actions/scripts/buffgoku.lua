function onUse(cid, item)


local magia = "Big Regeneration"



if getPlayerLearnedInstantSpell(cid, magia) then
doPlayerSendTextMessage(cid,25,"Você já aprendeu tudo com esse pergaminho.")
elseif doPlayerLearnInstantSpell(cid, magia) then
doRemoveItem(item.uid,1)
local pos = getCreaturePosition(cid)
doSendMagicEffect(pos, 26)
doPlayerSendTextMessage(cid,19,"Ao ler este pergaminho antigo, você aprendeu os segredos de "..magia..".")
end
end