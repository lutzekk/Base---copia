local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 57)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20.0, 0, -20.0, 0)


function onCastSpell(cid, var)

return doCombat(cid, combat, var)

end
