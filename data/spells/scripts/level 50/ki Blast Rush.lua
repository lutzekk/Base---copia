local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 57)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, 0, -30.0, 0)


function onCastSpell(creature, variant)
local target = creature:getTarget()
Position(target:getPosition() + Position(0, 0, 0)):sendMagicEffect(4)

return doCombat(creature, combat, variant)
end



