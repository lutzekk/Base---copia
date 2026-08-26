local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 28)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20.0, 0, -20.0, 0)


function onCastSpell(creature, variant)
local target = creature:getTarget()
Position(target:getPosition() + Position(1, 1, 0)):sendMagicEffect(668)

return doCombat(creature, combat, variant)
end


