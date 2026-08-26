function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 100) / 15 + (maglevel * 100) / 5
	local max = (levelTotal * 102) / 15 + (maglevel * 102) / 5
	return -min, -max
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 84)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 70)
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(cid, var)
return doCombat(cid, combat, var)

end