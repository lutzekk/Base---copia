function onSay(cid, words, param, channel)
	local getP = getPoints(cid)
	doPlayerPopupFYI(cid, "You have ".. getP .." PC Bang.")
	return true
end