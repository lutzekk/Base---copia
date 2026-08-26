function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
		local min = (levelTotal * 3) / 5 + (maglevel * 16) / 2
	local max = (levelTotal * 4) / 5 + (maglevel * 18) / 2
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_TEAL)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 8)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 121)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
	doSendMagicEffect(getCreaturePosition(cid), 123)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 7 do
	addEvent(function()
		if isCreature(cid) then
			

		end
	end, 1 + ((k-1) * 300))
end
return true
end