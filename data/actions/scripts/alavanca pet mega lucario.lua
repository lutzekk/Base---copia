-- Script por Lordzetros para o forum Tibia King. 

local config = {
itemNec = 13959, -- ID do item que necessita para efetuar a troca
qtNec = 50, -- Quantidade do item que necessita para efetuar a troca
itemNovo = 13963, -- ID do item que sera adicionado ao efetuar a troca
qtNova = 1, -- Quantidade do item que sera adicionado ao efetuar a troca
stor = 25879, -- Storage, ou seja, a numeracao que identificara se o usuario fez ou nao fez a quest ainda
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
pos = getPlayerPosition(cid)
if getPlayerStorageValue(cid,config.stor) ~= -1 then
	doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"So eh permitido fazer a troca de itens apenas uma vez!")
	doSendMagicEffect(pos, CONST_ME_POFF)
elseif getPlayerStorageValue(cid,config.stor) == -1 then
	if item.itemid == 1945 then
		if getPlayerItemCount(cid,config.itemNec) >= config.qtNec then
				doPlayerAddItem(cid, config.itemNovo,config.qtNova)
				doPlayerRemoveItem(cid,config.itemNec,config.qtNec)
				doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Voce acabou de trocar "..config.qtNec.." "..getItemNameById(config.itemNec).." por "..config.qtNova.." "..getItemNameById(config.itemNovo)..".")
				doSendMagicEffect(pos, CONST_ME_HOLYAREA)
				setPlayerStorageValue(cid, config.stor, 1)				
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce nao tem "..config.qtNec.." "..getItemNameById(config.itemNec).." para trocar por "..config.qtNova.." "..getItemNameById(config.itemNovo)..".")
			doSendMagicEffect(pos, CONST_ME_POFF)
			
end
end
end	
end