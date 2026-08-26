function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 100) / 15 + (maglevel * 100) / 5
	local max = (levelTotal * 102) / 15 + (maglevel * 102) / 5
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_TEAL)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 233)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 130)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end


function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 1 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 0, parameters)
		end
	end, 1 + ((k-1) * 300))
end
return true
end

