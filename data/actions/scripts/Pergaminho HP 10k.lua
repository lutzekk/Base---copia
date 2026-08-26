 function onUse(cid, item, fromPosition, itemEx, toPosition)

local health = 10000

local mana = 10000

if getPlayerStorageValue(cid,1800) == 700 then

doCreatureSay(cid, "Você já recebeu sua life.", TALKTYPE_ORANGE_1)

else if getPlayerLevel(cid) >= 700 then

doCreatureSay(cid, "Life e manda recebido com sucesso.", TALKTYPE_ORANGE_1)

setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+10000)

setCreatureMaxMana(cid, getCreatureMaxMana(cid)+10000)

doSendMagicEffect(fromPosition, 37)

doRemoveItem(item.uid)

setPlayerStorageValue(cid,1800,20)

return TRUE

else

doCreatureSay(cid, "Só apenas players level 10 pode usar este comando", TALKTYPE_ORANGE_1)

end

end

end
