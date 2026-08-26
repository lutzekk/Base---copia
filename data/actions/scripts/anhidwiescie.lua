-- annihilator chests

function onUse(cid, item, frompos, item2, topos)
   if item.uid == 7005 then
   queststatus = getPlayerStorageValue(cid,5401)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Power Janemba Sword")
   doPlayerAddItem(cid,2421,1)
   setPlayerStorageValue(cid,5401,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7006 then
   queststatus = getPlayerStorageValue(cid,5401)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Dabura Robe")
   doPlayerAddItem(cid,6101,1)
   setPlayerStorageValue(cid,5401,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7007 then
   queststatus = getPlayerStorageValue(cid,5401)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Goku GT Legs")
   doPlayerAddItem(cid,2537,1)
   setPlayerStorageValue(cid,5401,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 7008 then
   queststatus = getPlayerStorageValue(cid,5401)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Goku ssj5 boots")
   doPlayerAddItem(cid,7383,1)
   setPlayerStorageValue(cid,5401,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
else
return 0
   end

   return 1
end
