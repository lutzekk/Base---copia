local t = {
	[1] = {itemid = 7387},
	[2] = {itemid = 7383},
	[3] = {itemid = 2640},
	[4] = {itemid = 2655},
	[5] = {itemid = 2652},
	[6] = {itemid = 2510},
	[7] = {itemid = 2521},
	[8] = {itemid = 7382},
	[9] = {itemid = 2445},
	[10] = {itemid = 2450}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
local getItem = t[math.random(1,10)]
	return getItem and doPlayerAddItem(cid, getItem.itemid, 1) and doSendAnimatedText(getPlayerPosition(cid), "DONATE!", 34) and doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Your donation item is: ".. getItemNameById(getItem.itemid) ..".") and doRemoveItem(item.uid, 1) and true or false
end


