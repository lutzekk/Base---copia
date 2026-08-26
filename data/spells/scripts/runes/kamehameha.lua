local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 19)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 29)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.0, 0, -2.0, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
