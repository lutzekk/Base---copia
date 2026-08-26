local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 58)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 70000)
setConditionFormula(condition, 4.0, -76, 4.0, -99)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
 
	return doCombat(cid, combat, var)
end
