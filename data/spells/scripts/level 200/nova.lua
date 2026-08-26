local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 1)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, 0, -30.0, 0)


function onCastSpell(cid, var)

return doCombat(cid, combat, var)
end



