local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)


setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -75.0, 0, -75.0, 0)


function onCastSpell(creature, variant)
local target = creature:getTarget()
Position(target:getPosition() + Position(3, 3, 0)):sendMagicEffect(121)

return doCombat(creature, combat, variant)
end



