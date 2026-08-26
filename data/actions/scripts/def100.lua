function onUse(cid, item, frompos, item2, topos)

if isCreature(item2.uid) == TRUE then
doPlayerSendCancel(cid, "You cannot use it on creature.")
return TRUE
end

local ile = 1
local arm = getItemDefense(item2.uid)
if item2.uid ~=0 then
descr = "Values: "
if(arm ~= 0) then
setItemDefense(item2.uid, arm + ile)
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)
doRemoveItem(item.uid,1)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Upgrade successful.")
else
doPlayerSendCancel(cid,"You can't upgrade this.")
end
return TRUE
end
return FALSE
end