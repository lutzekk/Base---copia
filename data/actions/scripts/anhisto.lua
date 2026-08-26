-- annihilator chests

function onUse(cid, item, frompos, item2, topos)
   if item.uid == 7001 then
   queststatus = getPlayerStorageValue(cid,5400)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Majin Gloves")
   doPlayerAddItem(cid,2431,1)
   setPlayerStorageValue(cid,5400,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7002 then
   queststatus = getPlayerStorageValue(cid,5400)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Frozen Sword")
   doPlayerAddItem(cid,2446,1)
   setPlayerStorageValue(cid,5400,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7003 then
   queststatus = getPlayerStorageValue(cid,5400)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Panties")
   doPlayerAddItem(cid,2507,1)
   setPlayerStorageValue(cid,5400,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7004 then
   queststatus = getPlayerStorageValue(cid,5400)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Red Ribbon Army Helmet!")
   doPlayerAddItem(cid,7411,1)
   setPlayerStorageValue(cid,5400,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
else
return 0
   end

   return 1
end
