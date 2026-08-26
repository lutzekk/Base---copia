local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 160)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 974)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1, 0, 1, 0)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end