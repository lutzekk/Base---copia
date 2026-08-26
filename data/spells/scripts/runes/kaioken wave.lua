local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 19)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 60 * 1000)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 25)
setConditionParam(condition, CONDITION_PARAM_SKILL_FISHING, 25)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
