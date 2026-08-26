function onUse(cid, item, fromPosition, itemEx, toPosition)
    local target = itemEx.uid

    if not isPlayer(target) then
        doPlayerSendCancel(cid, "Solo puedes usar esto en jugadores.")
        return false
    end

    -- Eliminar buff de distance si ya tiene uno
    doRemoveCondition(target, CONDITION_ATTRIBUTES)

    -- Crear condición de buff de distance
    local condition = createConditionObject(CONDITION_ATTRIBUTES)
    setConditionParam(condition, CONDITION_PARAM_TICKS, 30000) -- 30 segundos
    setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 50) 
    setConditionParam(condition, CONDITION_PARAM_SKILL_FISHING, 50) 


    -- Aplicar condición
    doAddCondition(target, condition)
    doSendMagicEffect(getCreaturePosition(target), CONST_ME_MAGIC_BLUE)
    --doCreatureSay(target, "¡Distance Buff +1!", TALKTYPE_ORANGE_1)

    -- Consumir la runa
    doRemoveItem(item.uid, 0)

    return true
end
