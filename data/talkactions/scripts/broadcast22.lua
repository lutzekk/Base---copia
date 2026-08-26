local cash = 500 -- Dinero que se nesecita para hacer el broadcast (en gps)
local levelneeded = 8 -- Level necesario para hacer el broadcast
local lenght = 100 -- Maximo de caracteres del mensaje
local messagesort = MESSAGE_STATUS_WARNING -- can be "MESSAGE_STATUS_WARNING" or "TALKTYPE_ORANGE_1" check your global.lua for more...
local exhaustTime = 0 * 60 * 1000 -- tiempo de exausted entre cada mensaje (para cambiar mas minutos cambia el 4 por x cantidad de minutos)
local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, exhaustTime)

function onSay(cid, words, param)
    if getCreatureCondition(cid, CONDITION_EXHAUST) then
        doPlayerSendCancel(cid, "Lo siento, nesecitas esperas 2 minutos para mansar otro mensaje")
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
        return true
    end
    local name = getPlayerName(cid)
    local level = getPlayerLevel(cid)
    if not isCreature(cid) then
        doPlayerSendCancel(cid, 'You haven\'t a target!')
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
        return true
    end
    if param == nil then
        doPlayerSendCancel(cid, 'Nesecitas escribir algo!')
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
        return true
    end
    if string.len(param) > lenght then
        doPlayerSendCancel(cid, 'No mas de ' .. lenght .. ' caracteres. ')
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
        return true
    end
    if level < levelneeded then
        doPlayerSendCancel(cid, 'Tu nesecitas ser level '..levelneeded..' para hacer un broadcast!')
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
        return true
    end        
    if doPlayerRemoveMoney(cid, cash) then
        broadcastMessage( ''..name..' ['..level..'] dice: ' .. param .. '', messagesort)
        exhaustion.set(cid, storageValue,exhaustTime)
        doAddCondition(cid, exhaust)
    else
        doPlayerSendCancel(cid, 'Tu nesecitas '..cash..' gps para hacer un broadcast!')
        doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
    end
    return true
end