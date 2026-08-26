local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 19)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 30 * 1000)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 35)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 35)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 35)
setConditionParam(condition, CONDITION_PARAM_SKILL_FISHING, 35)


addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
