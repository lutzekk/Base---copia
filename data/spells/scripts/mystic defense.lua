local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_MANASHIELD)
setConditionParam(condition, CONDITION_PARAM_TICKS, 180000)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
	 doSendMagicEffect({x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y + 1, z=getCreaturePosition(cid).z, stackpos=255}, 260)
	 return true
end
