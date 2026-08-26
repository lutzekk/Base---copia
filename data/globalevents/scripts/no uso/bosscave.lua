local monsterTable = {
	[1] = {
		mName = "Cooler Event", wName="Earth", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=650, y=647, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[2] = {
		mName = "Cell Event", wName="Namek", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=651, y=752, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[3] = {
		mName = "Janemba Event", wName="Makyo", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=650, y=788, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[4] = {
		mName = "Buu Event", wName="Konats", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=650, y=616, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[5] = {
		mName = "Tsuful Event", wName="Plant", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=649,y=718,z=7}, tpPos = {x=76, y=96, z=7}
	},
	[6] = {
		mName = "C17 Event", wName="Lude", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=650, y=827, z=7}, tpPos = {x=76, y=96, z=7}
	},
	[7] = {
		mName = "Broly Event", wName="Vegeta", timer = 20 * 60 * 1000, -- 10minutes to kill monster
		mPos = {x=652, y=686, z=7}, tpPos = {x=76, y=96, z=7}
	}
}
 
local timeForTeleport = 2 * 60 * 1000 -- 1 minute
local teleportId = 1387
 
function deleteTeleport(position, tpId)
	local getTeleport = getTileItemById(position, tpId)
	if getTeleport then
		doRemoveItem(getTeleport.uid)
		doSendAnimatedText(position, "~TP Removed~", 74)
	end
end
 
function deleteMonster(thing)
	if thing then
		doRemoveCreature(thing)
	end
end
 
function onThink(interval, lastExecution)
local certo = 2
	if certo == 2 then
		local getEventMonster = monsterTable[math.random(1, #monsterTable)]
		if getEventMonster then
            local monsterName = getEventMonster.mName
            local thing = getCreatureByName(monsterName)
            if thing == nil then
                local monsterPosition  = getEventMonster.mPos
                local teleportPosition = getEventMonster.tpPos
                local worldName = getEventMonster.wName
				local killTimer = getEventMonster.timer
                doBroadcastMessage('Respawn Boss: '..monsterName.." 2 minutes and the teleport closes")
               thing = doSummonCreature(monsterName, monsterPosition)
                doCreateTeleport(teleportId, monsterPosition, teleportPosition)
                addEvent(deleteTeleport, timeForTeleport, teleportPosition, teleportId)
                addEvent(deleteMonster, killTimer, thing)
                doSetStorage(monsterEventStorage, 1)
            else
                print('Ja existe.. tentando outro')
            end
        end
    end
 
	return true
end