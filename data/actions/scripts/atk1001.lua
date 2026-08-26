function onUse(cid, item, frompos, item2, topos)

if isCreature(item2.uid) == TRUE then
doPlayerSendCancel(cid, "You cannot use it on creature.")
return TRUE
end


local ile = 1
local arm = getItemAttack(item2.uid)
if item2.uid ~=0 then
descr = "Values: "

if(getItemActionId(item2.uid) < 100 or getItemActionId(item2.uid) > 110) and (arm ~= 0) then
setItemAttack(item2.uid, arm + ile)
setItemDefense(item2.uid, arm + ile)
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)

	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Upgrade successful.")
	doSetItemActionId(item2.uid,getItemActionId(item2.uid)+1)
return TRUE
end


if(getItemActionId(item2.uid) >= 109) and (arm ~= 0) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Your item is upgraded to max level.")
return TRUE
end

local random = math.random(0, 10)
if(arm ~= 0) then
if random > getItemActionId(item2.uid)-99 then
setItemAttack(item2.uid, arm + ile)
setItemDefense(item2.uid, arm + ile)
doSendMagicEffect(topos,CONST_ME_MAGIC_BLUE)

	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Upgrade successful.")
	doSetItemActionId(item2.uid,getItemActionId(item2.uid)+1)
else


doSendMagicEffect(topos,2)	
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Sorry your item is broken.")
end
else
doPlayerSendCancel(cid,"You can't upgrade this.")
end
return TRUE
end
return FALSE
end