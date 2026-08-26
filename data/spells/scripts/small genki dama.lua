function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 5) / 5 + (maglevel * 88) / 2
	local max = (levelTotal * 7) / 5 + (maglevel * 89) / 2
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_ORANGE)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 33)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 39)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 2 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 1, parameters)
		end
	end, 1 + ((k-1) * 200))
end
return true
end