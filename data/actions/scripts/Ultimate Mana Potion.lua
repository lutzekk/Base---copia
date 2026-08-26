local config = {

money = 1000000, -- Dinheiro que vai custar

item = 13884, -- ID do item que vai vender

count = 50, -- Quantidade

}


function onUse(cid, item, fromPosition, itemEx, toPosition)

pos = getCreaturePosition(cid)


if item.itemid == 1945 then

 if doPlayerRemoveMoney(cid, config.money) == TRUE then

doPlayerAddItem(cid, config.item, config.count)

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Voce acaba de comprar "..config.count.." "..getItemNameById(config.item)..".")

doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)

 else

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Desculpe, mais voce nao tem dinheiro suficiente (100 Golds).")

doSendMagicEffect(pos, CONST_ME_POFF)

end

end


end