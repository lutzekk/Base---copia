local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, 0, -30.0, 0)


function onCastSpell(creature, variant)
local target = creature:getTarget()
Position(target:getPosition() + Position(1, 1, 0)):sendMagicEffect(453)

return doCombat(creature, combat, variant)
end
