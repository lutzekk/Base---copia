local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 86)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 25)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1, 0, 1, 0)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end