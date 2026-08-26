local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 45)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -105.0, 0, -106.0, 0)


function onCastSpell(cid, var)
  
return doCombat(cid, combat, var)

end