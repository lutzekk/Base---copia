local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 820000)
setConditionFormula(condition, 120.7, -1206, 120.7, -1256)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
