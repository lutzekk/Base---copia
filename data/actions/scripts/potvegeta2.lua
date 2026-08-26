function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2685 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerAddSoul(cid,5)
end
end