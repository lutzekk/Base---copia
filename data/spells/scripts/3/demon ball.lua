local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 15)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 16)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -105.0, 0, -106.0, 0)


function onCastSpell(cid, var)

return doCombat(cid, combat, var)
end



