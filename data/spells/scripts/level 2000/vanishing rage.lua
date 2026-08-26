local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_LIGHTGREEN)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
--setCombatParam(combat1, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 105)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.5, 0)


local function onCastSpell1(parameters)
doCombat(parameters.creature, parameters.combat1, parameters.var)
end


function onCastSpell(creature, var)
local parameters = {creature = creature, var = var, combat1 = combat1}
local target = creature:getTarget()
for k = 1, 2 do
	addEvent(function()
		if isCreature(creature) then
			addEvent(onCastSpell1, 0, parameters)
			Position(target:getPosition() + Position(1, 1, 0)):sendMagicEffect(670)
		end
	end, 1 + ((k-1) * 300))
end
return true
end

