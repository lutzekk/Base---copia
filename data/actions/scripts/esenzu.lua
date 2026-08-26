function onUse(cid, item, frompos, item2, topos)
if item.itemid == 3956 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,16)
doPlayerAddSoul(cid,100)
doPlayerAddMana(cid, 40000)
doPlayerAddHealth(cid, 40000)
doPlayerSay(cid,"AGAGAGAGA !",1)
end
end