function onUse(cid, item, fromPosition, itemEx, toPosition)
    local target = itemEx.uid

    if not isPlayer(target) then
        doPlayerSendCancel(cid, "Solo puedes usar esto en jugadores.")
        return false
    end

    -- Crear la condición de buff
    local condition = createConditionObject(CONDITION_ATTRIBUTES)
    setConditionParam(condition, CONDITION_PARAM_TICKS, 10000) -- 10 segundos
    setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 5) -- +5 Distance
    setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 5) -- +5 Club
    setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 5) -- +5 Axe
    
    -- Aplicar condición
    doAddCondition(target, condition)
    doSendMagicEffect(getCreaturePosition(target), CONST_ME_MAGIC_BLUE)
    doCreatureSay(target, "¡Buff activado!", TALKTYPE_ORANGE_1)

    -- Consumir la runa
    doRemoveItem(item.uid, 1)

    return true
end
