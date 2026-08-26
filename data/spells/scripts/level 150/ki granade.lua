local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -25.0, 0, -25.0, 0)


function onCastSpell(creature, variant)
local target = creature:getTarget()
Position(target:getPosition() + Position(2, 2, 0)):sendMagicEffect(117)

return doCombat(creature, combat, variant)
end
