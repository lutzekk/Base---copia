local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 90000)
setConditionFormula(condition, 1.2, -56, 1.2, -56)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
