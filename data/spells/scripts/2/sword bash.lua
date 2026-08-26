local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 244)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -55.0, 0, -56.0, 0)


function onCastSpell(cid, var)
 
return doCombat(cid, combat, var)

end
