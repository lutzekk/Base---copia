local items =
{ 
	[1]={id=13886, count=20, c=8}, -- item 1
	[2]={id=13815, count=1, c=2}, -- item 2
	[3]={id=13878, count=300, c=2}, -- item 3
	[4]={id=5884, count=1, c=1}, -- item 4

	
}

function getRandomItem(t)
	local i = math.random(1, #t)
	i = t[i]
	if math.random(1, 100) <= i.c then
		return i
	end
	
	return getRandomItem(t)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local i = getRandomItem(items)
	doPlayerAddItem(cid, i.id, i.count)
	doSendAnimatedText(getPlayerPosition(cid), "Box!", TEXTCOLOR_GREEN)
	doPlayerSendTextMessage(cid, 27, "Você abriu uma Box e Ganhou "..i.count.."x "..getItemNameById(i.id)..(i.count > 1 and "s" or "")..".")
	doRemoveItem(item.uid, 1)
return true
end