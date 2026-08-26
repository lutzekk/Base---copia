local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_LIGHTGREEN)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 314)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 77)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -5.0, 0, -5.0, 0)


local function onCastSpell1(parameters)
doCombat(parameters.creature, parameters.combat1, parameters.var)
end


function onCastSpell(creature, var)
local parameters = {creature = creature, var = var, combat1 = combat1}
local target = creature:getTarget()
for k = 1, 7 do
	addEvent(function()
		if isCreature(creature) then
			addEvent(onCastSpell1, 0, parameters)

		end
	end, 1 + ((k-1) * 275))
end
return true
end

