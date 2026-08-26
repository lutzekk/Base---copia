local function setItemName(uid,name)
	return doItemSetAttribute(uid,'name',name)
end
local function setItemDamage(uid,xd)
	return doItemSetAttribute(uid,'attackspeed',xd)
end
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isCreature(itemEx.uid) then
		return true
	end
	setItemName(itemEx.uid, 'super '.. getItemNameById(itemEx.itemid) ..'')
	setItemDamage(itemEx.uid,20)

	return true
end
