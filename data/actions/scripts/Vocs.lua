local vocs = {
[13875] = 350,
}
local level = 25
local remove_on_use = true

function onUse(cid, item)
local newVoc = vocs[item.itemid]

if getPlayerLevel(cid) > level then
doPlayerSendCancel(cid, "Seu level e maior que 25 portanto não poderá usa-lo.")
return true
end
 
if getPlayerVocation(cid) == newVoc then
 
doPlayerSendCancel(cid, "Você ja é desta vocação.")
return true
end
 
doPlayerSetVocation(cid, newVoc)
doPlayerSendCancel(cid, "Parabéns, voce mudou sua vocação. Ndbo Hunter AGRADECE!")
doSendMagicEffect(getThingPos(cid), 11)
 
if remove_on_use then
 
doRemoveItem(item.uid)
end
return true
end