local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 19)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 40 * 1000)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 50)



addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
