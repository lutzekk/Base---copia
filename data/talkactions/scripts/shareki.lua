local function shareKi(cid, pid, addMana)
if(isPlayer(cid) and isPlayer(pid)) then
	doCreatureAddMana(cid, -addMana)
	doCreatureAddMana(pid, addMana)
	end
	return true
end

function onSay(cid, words, param, channel)
	if(param == '') then
		doPlayerSendCancel(cid, "You have to put name.")
		return true
	end

	local pid = getPlayerByNameWildcard(param)
	if(not pid) then
		doPlayerSendCancel(cid, "Wrong name.")
		return true
	end
	if(cid == pid) then
		doPlayerSendCancel(cid, "You cannot share ki with yourself.")
		return true
	end
	if(getPlayerAccess(pid) >= 5) then
		doPlayerSendCancel(cid, "Wrong name.")
		return true
	end
	local addMana = (getPlayerMana(cid) / 10)
	local storage = 3341
	if(getPlayerStorageValue(cid, storage) < 1) then
		doPlayerSendCancel(cid, "You start share ki.")
		doPlayerSendCancel(pid, "Somebody give you his power.")
		doPlayerSetStorageValue(cid, storage, 1)
		addEvent(shareKi, 500, cid, pid, addMana)
		addEvent(shareKi, 1500, cid, pid, addMana)
		addEvent(shareKi, 2500, cid, pid, addMana)
		addEvent(shareKi, 3500, cid, pid, addMana)
		addEvent(shareKi, 4500, cid, pid, addMana)
		addEvent(shareKi, 5500, cid, pid, addMana)
		addEvent(shareKi, 6500, cid, pid, addMana)
		addEvent(shareKi, 7500, cid, pid, addMana)
		addEvent(shareKi, 8500, cid, pid, addMana)
		addEvent(shareKi, 9500, cid, pid, addMana)
		addEvent(doPlayerSetStorageValue, 9600, cid, storage, 0)
	else
		doPlayerSendCancel(pid, "You have started share ki.")
	end
	return true
end
