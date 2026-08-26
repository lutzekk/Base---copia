function onUse(cid, item, frompos, item2, topos)
if item.itemid == 5785 and doPlayerRemoveMoney(cid,1000000) == 1 and getPlayerLevel (cid) >= 500 then
doSendMagicEffect(topos,14) 
doPlayerSay(cid,"Level Odblokowany",16) 
addLevel(cid,1)
doSendMagicEffect(topos,14) 
doPlayerSay(cid,"Level Odblokowany",16) 
else
doPlayerSay(cid,"Sorry Niemasz 100 Gold",16) 
doPlayerSendCancel(cid,"Sorry no have Lvl 500!")
end
return 1
end