local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 4)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 44)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -6.0, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end



