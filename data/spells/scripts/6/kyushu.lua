local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 12) 
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_MANASHIELD)
setConditionParam(condition, CONDITION_PARAM_TICKS, 30000)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
