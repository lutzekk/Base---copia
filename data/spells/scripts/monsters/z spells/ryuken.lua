local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 21)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 29)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -4.5, 0, -4.5, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end



