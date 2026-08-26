local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 9)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 3)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -19.8, 0, -19.9, 0)



function onCastSpell(cid, var)

return doCombat(cid, combat, var)

end
