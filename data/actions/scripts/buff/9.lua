function onUse(cid, item, fromPosition, itemEx, toPosition)
    local target = itemEx.uid

    if not isPlayer(target) then
        doPlayerSendCancel(cid, "Solo puedes usar esto en jugadores.")
        return false
    end

    -- Eliminar buffs anteriores para evitar acumulación
    doRemoveCondition(target, CONDITION_ATTRIBUTES)

    -- Crear la condición de buff
    local condition = createConditionObject(CONDITION_ATTRIBUTES)
    setConditionParam(condition, CONDITION_PARAM_TICKS, 40000) -- 40 segundos
   -- setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 50) -- +50 en Club
    setConditionParam(condition, CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, 110) -- +10% en Magic Level

    -- Aplicar condición
    doAddCondition(target, condition)
    doSendMagicEffect(getCreaturePosition(target), CONST_ME_MAGIC_BLUE)
    --doCreatureSay(target, "¡Buff de Magic Level +10% y Club +50!", TALKTYPE_ORANGE_1)

    -- Consumir la runa
    doRemoveItem(item.uid, 1)

    return true
end
