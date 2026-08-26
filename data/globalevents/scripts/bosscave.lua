local monsterTable = {
	[1] = {
		mName = "Vegetto MVP", wName="Earth", timer = 20 * 60 * 1000, 
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[2] = {
		mName = "Vegetto MVP", wName="Namek", timer = 20 * 60 * 1000,
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[3] = {
		mName = "Vegetto MVP", wName="Makyo", timer = 20 * 60 * 1000, 
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[4] = {
		mName = "Vegetto MVP", wName="Konats", timer = 20 * 60 * 1000, 
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[5] = {
		mName = "Vegetto MVP", wName="Plant", timer = 20 * 60 * 1000, 
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[6] = {
		mName = "Vegetto MVP", wName="Lude", timer = 20 * 60 * 1000,
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[7] = {
		mName = "Vegetto MVP", wName="Vegeta", timer = 20 * 60 * 1000, 
		mPos = {x=89, y=188, z=7}, tpPos = {x=76, y=96, z=7}
	}
}
 
local timeForTeleport = 5 * 60 * 1000 -- 2 minute
local teleportId = 1387
 
function deleteTeleport(position, tpId)
	local getTeleport = getTileItemById(position, tpId)
	if getTeleport then
		doRemoveItem(getTeleport.uid)
	end
end
 
function deleteMonster(thing)
	if thing then
		doRemoveCreature(thing)
	end
end
 

function onThink(interval, lastExecution)
local getEventMonster = monsterTable[math.random(1, #monsterTable)]
	if getEventMonster then
		local monsterName = getEventMonster.mName
		local monsterPosition  = getEventMonster.mPos
        local teleportPosition = getEventMonster.tpPos
        local worldName = getEventMonster.wName
		local killTimer = getEventMonster.timer
		Game.broadcastMessage('Respawn Boss: '..monsterName.." 2 minutes and the teleport closes", MESSAGE_STATUS_WARNING)
		Game.createMonster(monsterName, monsterPosition)
		doCreateTeleport(teleportId, monsterPosition, teleportPosition)
		addEvent(deleteTeleport, timeForTeleport, teleportPosition, teleportId)
        addEvent(deleteMonster, killTimer, monsterName)
	end
return true
end

