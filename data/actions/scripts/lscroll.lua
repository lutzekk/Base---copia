function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid,6666) == 2 then
doPlayerSendTextMessage(cid,22,"Brales juz scrolla !")	


elseif getPlayerStorageValue(cid,6666) == 1 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"3.000.000 Expa Wiecej ! Yeah",1)
doPlayerAddExp(cid, 3000000)
setPlayerStorageValue(cid,6666,2)


else
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"3.000.000 Expa Wiecej ! Yeah",1)
doPlayerAddExp(cid, 3000000)
setPlayerStorageValue(cid,6666,1)
end
end
                    
                	