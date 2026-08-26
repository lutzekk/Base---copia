local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 313)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -270.0, 0, -270.0, 0)


function onCastSpell(cid, var)

return doCombat(cid, combat, var)
end



