local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 19)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -220.0, 0, -220.0, 0)


function onCastSpell(cid, var)

return doCombat(cid, combat, var)
end



