local config = {
    monster = "ferumbras",
    spawn = {
 { x = 622, y = 493, z = 4, stackpos = 1 }    --------> donde los moustro seran creados
    },
	timer = 20 * 60 * 1000, -- 20minutes to kill monster
 storage = 1011
 
}
 
 
local tpt = {x=633, y=494, z=4}  ------> donde el player sera teleportado

 
 
 local topLeft = {x = 621, y = 488, z = 4} -- posicion esquina superior izquierda del room
local bottomRight = {x = 636, y = 500, z = 4} -- esquina inferior derecha del room
 
local count = 0 -- no cambiar
local maxPlayers = 1 --cantidad de player para entrar
 
 
 
 
function onStepIn(cid, item, frompos, item2, topos)
 
 
 
local remaining = getPlayerStorageValue(cid, config.storage) - os.time()
 
 
for z = topLeft.z, bottomRight.z do
    for x = topLeft.x, bottomRight.x do
        for y = topLeft.y, bottomRight.x do
            for f = 1, maxPlayers do
                local whatisit = getTopCreature({x=x,y=y,z=z, stackpos = f+1}).uid
                if isPlayer(whatisit) == TRUE then
                    count=count+1
                end
            end
        end
    end
end
 
if count >= 1 then
    doPlayerSendCancel(cid, "esta ocupado!")
return false
end
 
 
if getPlayerStorageValue(cid, config.storage) - os.time() <= 0 then
 
 
 
 
     for i = 1, table.maxn(config.spawn) do
    doSummonCreature(config.monster, config.spawn[i])
     end
 
 
     doTeleportThing(cid, tpt, false)
 
     setPlayerStorageValue(cid, config.storage, os.time() + (24 * 60 * 60))  ----> aqui son 24 horas
 
 
 
   else
 
    doPlayerSendCancel(cid,"You must wait another " .. remaining .. " seconds to summon a monster.")
 
   end
 
    return TRUE
	end
	
function deleteMonster(thing)
	if thing then
		doRemoveCreature(thing)
	end
end

	function onThink(interval, lastExecution)
	local getEventMonster = config
	if getEventMonster then
    local monsterName = getEventMonster.config.monster 
	 local thing = getCreatureByName(monsterName)
	if thing == nil then
	local killTimer = getEventMonster.timer
		addEvent(deleteMonster, killTimer, thing)
		end  
	return false
end
end