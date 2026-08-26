local FOODS =
{
	[8212] = {8, "Munch."}

}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local food = FOODS[item.itemid]
	if(not food) then
		return false
	end

	if((getPlayerFood(cid) + food[1]) >= 400) then
		doPlayerSendCancel(cid, "You are full.")
		return true
	end
	doPlayerFeed(cid, food[1] * 4)
	doCreatureSay(cid, food[2], TALKTYPE_ORANGE_1)
	doRemoveItem(item.uid, 0)
	return true
end
