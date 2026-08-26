function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 5888 then
doPlayerAddExp(cid, 1000000)
doRemoveItem(item.uid, 1)
end
   end  	