local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 53)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 71)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1, 0, 1, 0)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end