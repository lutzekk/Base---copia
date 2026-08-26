function onUse(cid, item, frompos, item2, topos)

getgate = getPlayerItemCount(cid,2674)
pos = getPlayerPosition(cid)



if getPlayerItemCount(cid,7520) <= 0 or getPlayerItemCount(cid,7521) <= 0 or getPlayerItemCount(cid,7522) <= 0 or getPlayerItemCount(cid,7523) <= 0 or getPlayerItemCount(cid,7524) <= 0 or getPlayerItemCount(cid,7525) <= 0 or getPlayerItemCount(cid,7526) <= 0 then
doPlayerSendTextMessage(cid,22,"You need 7 dragon balls to summon shennron." )


elseif getPlayerItemCount(cid,7520) >= 1 and getPlayerItemCount(cid,7521) >= 1 and getPlayerItemCount(cid,7522) >= 1 and getPlayerItemCount(cid,7523) >= 1 and getPlayerItemCount(cid,7524) >= 1 and getPlayerItemCount(cid,7525) >= 1 and getPlayerItemCount(cid,7526) >= 1 and getGlobalStorageValue(2000) ~= 1 then

doPlayerRemoveItem(cid,7520,1) 
doPlayerRemoveItem(cid,7521,1) 
doPlayerRemoveItem(cid,7522,1)
doPlayerRemoveItem(cid,7523,1) 
doPlayerRemoveItem(cid,7524,1) 
doPlayerRemoveItem(cid,7525,1) 
doPlayerRemoveItem(cid,7526,1) 

setGlobalStorageValue(2000, 1)

setPlayerStorageValue(cid, 6011, 1)

doBroadcastMessage('Shenron has been summoned.', 22)
doCreateNpc("Shenron", pos)

elseif getPlayerItemCount(cid,7520) >= 1 and getPlayerItemCount(cid,7521) >= 1 and getPlayerItemCount(cid,7522) >= 1 and getPlayerItemCount(cid,7523) >= 1 and getPlayerItemCount(cid,7524) >= 1 and getPlayerItemCount(cid,7525) >= 1 and getPlayerItemCount(cid,7526) >= 1 and getGlobalStorageValue(2000) == 1 then
doPlayerSendCancel(cid,"Shenron is already on Earth.")
doPlayerSendTextMessage(cid,20,"Shenron is already on Earth." )

end
end