local tpId = 1387
local tps = {
	["Fire Guardian1"] = {pos = {x = 1177, y = 674, z = 12}, toPos = {x = 1177, y = 677, z = 11}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Unknown Boss"] = {pos = {x = 1009, y = 1395, z = 9}, toPos = {x = 1006, y = 1427, z = 9}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Madara Boss"] = {pos = {x = 1561, y = 1486, z = 7}, toPos = {x = 1554, y = 1539, z = 7}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Black Janemba Boss"] = {pos = {x = 1305, y = 1821, z = 15}, toPos = {x = 1303, y = 1881, z = 15}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Omega Dragon Boss"] = {pos = {x = 901, y = 914, z = 9}, toPos = {x = 883, y = 956, z = 8}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Jiren Boss"] = {pos = {x = 1860, y = 1329, z = 15}, toPos = {x = 1891, y = 1352, z = 13}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	["Demonic Zaiko Boss"] = {pos = {x = 1762, y = 926, z = 12}, toPos = {x = 1756, y = 897, z = 12}, time = 30}, -- Onde o Teleport irá aparecer e onde ele levará o Player. Em 'Time', configurar tempo em segundos para o TP desapecer.
	
}
 
 
function removeTp(tp)
    local t = getTileItemById(tp.pos, tpId)
    if t then
        doRemoveItem(t.uid, 1)
        doSendMagicEffect(tp.pos, CONST_ME_POFF)
    end
end

function onDeath(cid)
    local tp = tps[getCreatureName(cid)]
    if tp then
        doCreateTeleport(tpId, tp.toPos, tp.pos)
        doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
        addEvent(removeTp, tp.time*1000, tp)
        addEvent(doCreateMonster, tp.time*1001, getCreatureName(cid), tp.pos)
    end
    return TRUE
end