function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
		local min = (levelTotal * 4) / 5 + (maglevel * 20) / 2
	local max = (levelTotal * 5) / 5 + (maglevel * 22) / 2
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 28)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 68)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 7 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 1, parameters)
		end
	end, 1 + ((k-1) * 300))
end
return true
end