function onThink(cid, interval)
				rand = math.random(1,4)
		if getCreatureSkullType(cid) == SKULL_BLACK then
			  if not isInRange(getThingPos(cid), {x = 239, y = 100, z = 8}, {x = 253, y= 113, z = 8}) then -- Jail
				if rand == 1 then
                 doTeleportThing(cid, {x = 243, y = 103, z = 8}, true)  -- First cell
				elseif rand == 2 then
                 doTeleportThing(cid, {x = 249, y = 103, z = 8}, true) -- Second cell
				elseif rand == 3 then
                 doTeleportThing(cid, {x = 243, y = 110, z = 8}, true) -- Third cell
				elseif rand == 4 then
                 doTeleportThing(cid, {x = 249, y = 110, z = 8}, true) -- Fourth cell
				end
			  end
		end
return TRUE
end