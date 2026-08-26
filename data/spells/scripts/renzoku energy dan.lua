function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 9) / 2 + (maglevel * 8) / 1
	local max = (levelTotal * 9) / 2 + (maglevel * 8) / 1
	return -min, -max
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end




