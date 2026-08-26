local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 19)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -200)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	if exhaustion.check(cid, 13102) == TRUE then
		doPlayerSendCancel(cid, "Podra usar nuevamente dentro de 5 segundos.")
		doSendMagicEffect(getCreaturePosition(cid), 2)
		return false
	end
	for k = 1, 100 do
		addEvent(function()
			if isCreature(cid) then
			
			end
		end, 1 + ((k-1) * 600))
	end
	exhaustion.set(cid, 13102, 5.0)
	return doCombat(cid, combat, var)
end