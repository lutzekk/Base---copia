local config = {
	daily = "no", -- allow only one enter per day? (like in global Tibia)
	level = 175,
	storage = 7201,
	spawnName = "Death Area Keaper",
	entry =
	{
		{x = 246, y = 223, z = 7},
		{x = 247, y = 223, z = 7},
		{x = 248, y = 223, z = 7},
		{x = 249, y = 223, z = 7},
		{x = 250, y = 223, z = 7},
		{x = 246, y = 225, z = 7},
		{x = 247, y = 225, z = 7},
		{x = 248, y = 225, z = 7},
		{x = 249, y = 225, z = 7},
		{x = 250, y = 225, z = 7}
	},
	destination =
	{
		{x = 256, y = 213, z = 8},
		{x = 256, y = 214, z = 8},
		{x = 257, y = 211, z = 8},
		{x = 257, y = 212, z = 8},
		{x = 257, y = 213, z = 8},
		{x = 257, y = 214, z = 8},
		{x = 257, y = 215, z = 8},
		{x = 258, y = 211, z = 8},
		{x = 258, y = 212, z = 8},
		{x = 258, y = 213, z = 8}
	},
	spawn = 
	{
		{x = 243, y = 215, z = 8},
		{x = 243, y = 216, z = 8},
		{x = 235, y = 221, z = 8},
		{x = 236, y = 221, z = 8},
		{x = 242, y = 226, z = 8},
		{x = 242, y = 225, z = 8},
		{x = 249, y = 219, z = 8},
		{x = 249, y = 220, z = 8},
		{x = 239, y = 221, z = 8},
		{x = 238, y = 221, z = 8}
	},
	items = {pos = {x = 254, y = 224, z = 7, stackpos = STACKPOS_TOP_MOVEABLE_ITEM_OR_CREATURE}, itemid = 2349},

}

config.daily = getBooleanFromString(config.daily)
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1946) then
		if(config.daily) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		else
			doTransformItem(item.uid, item.itemid - 1)
		end

		return true
	end


	if(item.itemid ~= 1945) then
		return true
	end

	
	local players = {}
	for _, position in ipairs(config.entry) do
		local pid = getTopCreature(position).uid
		if(pid == 0 or not isPlayer(pid) or getCreatureStorage(pid, config.storage) > 0 or getPlayerLevel(pid) < config.level) then
			doPlayerSendCancel(cid, "You need 10 players of 200 level.")
			return true
		end

		table.insert(players, pid)
	end

	for i, pid in ipairs(players) do
		if(getPlayerItemCount(pid, 2348) >= 1) then
			doSendMagicEffect(config.entry[i], CONST_ME_POFF)
			doTeleportThing(pid, config.destination[i], false)
			doSendMagicEffect(config.destination[i], CONST_ME_ENERGYAREA)
			doPlayerRemoveItem(pid, 2348, 1)
		else
			doPlayerSendCancel(cid, "Players need to have ancient rune.")
			return true
		end
	end
	

	local thing = getThingFromPos(config.items.pos)
	if(thing.uid == 0 and thing.itemid ~= config.items.itemid) then
		doPlayerSendCancel(cid, "You need this item: blue note.")
		return true
	elseif(thing and thing.itemid == config.items.itemid) then
		doRemoveItem(thing.uid, 1)
	end

	
	for i = 1, #config.spawn do
		local mid = getTopCreature(config.spawn[i]).uid
		if(isMonster(mid)) then
			doSendMagicEffect(config.spawn[i], CONST_ME_ENERGYAREA)
			else
			doCreateMonster(config.spawnName, config.spawn[i])
			doSendMagicEffect(config.spawn[i], CONST_ME_ENERGYAREA)
		end
	end

	doTransformItem(item.uid, item.itemid + 1)
	return true
end
