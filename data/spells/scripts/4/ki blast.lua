local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 9)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 82)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -175.0, 0, -176.0, 0)


function onCastSpell(cid, var)


return doCombat(cid, combat, var)
end