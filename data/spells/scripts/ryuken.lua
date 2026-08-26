function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 92) / 15 + (maglevel * 92) / 5
	local max = (levelTotal * 93) / 15 + (maglevel * 93) / 5
	return -min, -max
end

local combat = createCombatObject()
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 17)



function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end