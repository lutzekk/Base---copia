function onUse(cid, item, frompos, item2, topos)

doorpos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}	
doorplayer = getThingfromPos(doorpos)

if doorplayer.itemid > 0 then
	doPlayerSendCancel(cid,"Someone is blocking the door.")
	return 1
end

if item.itemid == 6891 then
if item.actionid == 0 then
doTransformItem(item.uid,6893)
else
doPlayerSendTextMessage(cid,22,"It is locked.")
end
elseif item.itemid == 6892 then
doTransformItem(item.uid,6893)
elseif item.itemid == 6893 then
if item.actionid == 0 then
doTransformItem(item.uid,6892)
else
doPlayerSendTextMessage(cid,22,"It is locked.")
end
elseif item.itemid == 6900 then
doTransformItem(item.uid,6902)
elseif item.itemid == 6901 then
if item.actionid == 0 then
doTransformItem(item.uid,6902)
else
doPlayerSendTextMessage(cid,22,"It is locked.")
end
elseif item.itemid == 8213 then
doTransformItem(item.uid,8214)
elseif item.itemid == 8214 then
if item.actionid == 0 then
doTransformItem(item.uid,8213)
else
doPlayerSendTextMessage(cid,22,"It is locked.")
end

elseif item.itemid == 8215 then
doTransformItem(item.uid,8216)
elseif item.itemid == 8216 then
if item.actionid == 0 then
doTransformItem(item.uid,8215)
else
doPlayerSendTextMessage(cid,22,"It is locked.")
end
elseif item.itemid == 6902 then
doTransformItem(item.uid,6900)
 
else
return 0
end
return 1
end
