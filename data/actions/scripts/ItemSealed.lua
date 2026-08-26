local configItems = {
idItem = 14646, -- Id do item que sera responsavel em clickar em cima do set para transforma-lo
amountItem = 1, -- quantidade que sera removida apos ser usada no set para transformar
message = "Item transformado com sucesso!" -- mensagem quando o item for transformado
}

local knight = { -- Itens do knight
oldHelmet = 14122, -- Antigo helmet, antes de transformar
oldArmor = 14123, -- Antigo helmet, antes de transformar
oldlegs = 14124, -- Antigo helmet, antes de transformar
oldBoots = 14125, -- Antigo helmet, antes de transformar

newHelmet = 14557, -- Novo helmet, apos transformar
newArmor = 14558, -- Novo helmet, apos transformar
newLegs = 14559, -- Novo helmet, apos transformar
newBoots = 14560, -- Novo helmet, apos transformar

}



function onUse(cid, item, fromPosition, item2, toPosition)

pos = getCreaturePosition(cid)
efeito = CONST_ME_MAGIC_RED

if (item2.itemid == knight.oldHelmet) and doPlayerRemoveItem(cid,configItems.idItem,configItems.amountItem) then
	doSendMagicEffect(pos, efeito)
	doCreatureSay(cid, configItems.message, TALKTYPE_ORANGE_1)
	return doTransformItem(item2.uid,knight.newHelmet)
elseif (item2.itemid == knight.oldArmor) and doPlayerRemoveItem(cid,configItems.idItem,configItems.amountItem) then
	doSendMagicEffect(pos, efeito)
	doCreatureSay(cid, configItems.message, TALKTYPE_ORANGE_1)
	return doTransformItem(item2.uid,knight.newArmor)
elseif (item2.itemid == knight.oldlegs) and doPlayerRemoveItem(cid,configItems.idItem,configItems.amountItem) then
	doSendMagicEffect(pos, efeito)
	doCreatureSay(cid, configItems.message, TALKTYPE_ORANGE_1)
	return doTransformItem(item2.uid,knight.newLegs)
elseif (item2.itemid == knight.oldBoots) and doPlayerRemoveItem(cid,configItems.idItem,configItems.amountItem) then
	doSendMagicEffect(pos, efeito)
	doCreatureSay(cid, configItems.message, TALKTYPE_ORANGE_1)
	return doTransformItem(item2.uid,knight.newBoots)
else
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Nao eh possivel fazer a transformacao neste item!")
	doSendMagicEffect(pos, CONST_ME_POFF)
	return true
end
return true
end