local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 2.0, -0, 2.2, 0)

function onGetFormulaValues(cid, level, maglevel)
	min = (level * 4 + maglevel * 15) * 56.0 - 26
	max = (level * 7 + maglevel * 19) * 57.2
	
	
	if min < 250 then
		min = 250
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	if isCreature(cid) then
				local pos1 = {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}
				doSendMagicEffect(pos1, 250)
				end
	return doCombat(cid, combat, var)
end
