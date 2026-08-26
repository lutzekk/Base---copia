


if not setItemName then
	function setItemName(uid,name)
	 return doItemSetAttribute(uid,'name',name)
	end
	function setItemArmor(uid,name)
	 return doItemSetAttribute(uid,'armor',name)
	end
	function setItemDefense(uid,name)
	 return doItemSetAttribute(uid,'defense',name)
	end
	function setItemAttack(uid,name)
	 return doItemSetAttribute(uid,'attack',name)
	end
	function getItemAttack(uid)
	   return getItemAttribute(uid,'attack')
	end
	function getItemDefense(uid)
	   return getItemAttribute(uid,'defense')
	end
	function getItemArmor(x)
		return getItemAttribute(x.uid,'armor') or getItemInfo(x.itemid).armor
	end
end
function isArmor(uid) -- Function by Mock the bear.
         if (getItemArmor(uid) and getItemArmor(uid) ~= 0 and not getItemInfo(uid.itemid,'attack') and not getItemInfo(uid.itemid,'defense') and getItemWeaponType(uid.uid) == 0) then
            return true
         end
         return false
end
function isWeapon(uid) -- Function by Mock the bear.
         uid = uid or 0
         local f = getItemWeaponType(uid)
         if f == 1 or f == 2 or f == 3 then
             return TRUE
         end
         return FALSE
end
function isShield(uid) -- Function by Mock the bear.
         uid = uid or 0
         if getItemWeaponType(uid) == 4 then
             return TRUE
         end
         return FALSE
end

function getWeaponLevel(uid) -- Function by Mock the bear.
   uid = uid or 0
   local name = getItemName(uid)
   local lvl = string.match(name,'+(%d)')
   return tonumber(lvl) or 0
end
local levels = {
	[0] = {c = 100, bonus = 1},
	[1] = {c = 100, bonus = 2},
	[2] = {c = 100, bonus = 3},
	[3] = {c = 100, bonus = 4},
	[4] = {c = 100, bonus = 5},
	[5] = {c = 100, bonus = 6},
	[6] = {c = 100, bonus = 7},
	items = {
		maxLevel = 6,
		blockIds = {2488,8881}
	}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	toPosition.stackpos = 255
	if isInArray(levels.items.blockIds, itemEx.itemid) or getItemWeaponType(itemEx.uid) > 4 or (getItemWeaponType(itemEx.uid) == 0 and isArmor(itemEx) == FALSE) or itemEx.itemid == 0 then
		doPlayerSendTextMessage(cid, 24,"You cant upgrade this item.")
		return true
	end
	if isCreature(itemEx.uid) then
		return true
	end
		
	local level = getWeaponLevel(itemEx.uid)
	local chance = levels[level].c
	if level+1 > levels.items.maxLevel then
		return doSendMagicEffect(toPosition, 2) and doPlayerSendTextMessage(cid, 24,"Your item is on max level, you can't upgrade it.")
	end
	if chance >= math.random(0,100) or item.actionid >= 1000 or (item.actionid == 500 and math.random(0,100) <= 25) then
			setItemName(itemEx.uid, getItemNameById(itemEx.itemid)..' +'..(level+1))
			doPlayerSendTextMessage(cid, 24,"Your item has been upgrated to +"..(level+1)..".")
			doSendMagicEffect(toPosition, 12)
			if isArmor(itemEx) then
				setItemArmor(itemEx.uid, getItemInfo(itemEx.itemid).armor + levels[level].bonus)
			elseif isWeapon(itemEx.uid) then
				setItemAttack(itemEx.uid, getItemInfo(itemEx.itemid).attack + levels[level].bonus)
				setItemDefense(itemEx.uid, getItemInfo(itemEx.itemid).defense + levels[level].bonus)
			elseif isShield(itemEx.uid) then
				setItemDefense(itemEx.uid, getItemInfo(itemEx.itemid).defense + levels[level].bonus)
			end
		
	else
		return doPlayerSendTextMessage(cid, 24,"Item is destroy.") and doRemoveItem(itemEx.uid,1)
	end


	doRemoveItem(item.uid,1)
	return true
end
