local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition, CONDITION_PARAM_LIGHT_LEVEL, 10)
setConditionParam(condition, CONDITION_PARAM_LIGHT_COLOR, 212)
setConditionParam(condition, CONDITION_PARAM_TICKS, (11 * 30 + 35) * 1000)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
	 doSendMagicEffect({x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z, stackpos=255}, 267)
	 return true
end