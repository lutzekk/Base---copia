function onThink(cid, interval)
	if getPlayerGroupId(cid) <= 6 then  -- GM can "visit" a jail
		if getCreatureSkullType(cid) == SKULL_NONE then
			  if isInRange(getThingPos(cid), {x = 239, y = 100, z = 8}, {x = 253, y= 113, z = 8}) then  -- Jail
                 doTeleportThing(cid, {x = 105, y = 913, z = 7}, true) -- Pos to tel after RS remove
			  end
		end
	end
return TRUE
end