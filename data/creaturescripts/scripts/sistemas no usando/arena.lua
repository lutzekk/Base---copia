local cfg = {
	left = {x = 91, y = 151, z = 8}, -- lewa strona
	right = {x = 111, y = 161, z = 8}, -- prawa strona
	exit = {x = 101, y = 163, z = 8} -- exit position
}

function onPrepareDeath(cid)
local p = getPlayerPosition(cid)
	if isInRange(p, cfg.left, cfg.right)  then
		doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
		doTeleportThing(cid, cfg.exit)
		return false
	end
	return true
end


	<event type="preparedeath" name="BH_Arena" event="script" value="arena.lua"/>