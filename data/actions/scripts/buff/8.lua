local PARALYZE_DURATION = 2000 -- Duración de la parálisis en milisegundos (2 segundos)
local COOLDOWN_TIME = 10 -- Tiempo de cooldown en segundos
local MAX_RANGE = 7 -- Máxima distancia permitida (7 SQMs)

function onUse(cid, item, fromPosition, itemEx, toPosition)
    local target = itemEx.uid

    -- Verificar si el objetivo es un jugador válido
    if not isPlayer(target) or target == cid then
        doPlayerSendCancel(cid, "Debes seleccionar un enemigo válido.")
        return false
    end

    -- Verificar si el objetivo está dentro del rango permitido
    if getDistanceBetween(getCreaturePosition(cid), getCreaturePosition(target)) > MAX_RANGE then
        doPlayerSendCancel(cid, "El objetivo está demasiado lejos.")
        return false
    end

    -- Verificar si el usuario tiene cooldown
    if getPlayerStorageValue(cid, 50001) > os.time() then
        doPlayerSendCancel(cid, "Debes esperar antes de usar esta runa de nuevo.")
        return false
    end

    -- Verificar si el enemigo ya tiene parálisis para evitar abusos
    if getCreatureCondition(target, CONDITION_PARALYZE) then
        doPlayerSendCancel(cid, "Este jugador ya está paralizado.")
        return false
    end

    -- Crear condición de parálisis (reduce velocidad)
    local condition = createConditionObject(CONDITION_PARALYZE)
    setConditionParam(condition, CONDITION_PARAM_TICKS, PARALYZE_DURATION)
    setConditionParam(condition, CONDITION_PARAM_SPEED, -500) -- Reduce la velocidad en 500

    -- Aplicar la condición al enemigo
    doAddCondition(target, condition)
    doSendMagicEffect(getCreaturePosition(target), CONST_ME_MAGIC_RED)
    --doCreatureSay(target, "¡Has sido paralizado!", TALKTYPE_ORANGE_1)

    -- Aplicar cooldown al usuario
    setPlayerStorageValue(cid, 50001, os.time() + COOLDOWN_TIME)

    -- Consumir la runa
    doRemoveItem(item.uid, 0)

    return true
end
