
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 804)


local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUBPERCENT, 130)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCEPERCENT, 150)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELDPERCENT, 130)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXECEPERCENT, 150)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORDPERCENT, 150)
setConditionParam(condition, CONDITION_PARAM_SKILL_FISHINGPERCENT, 130)


setConditionParam(condition, CONDITION_PARAM_BUFF, true)
addCombatCondition(combat, condition)

function onCastSpell(cid, var)
	if exhaustion.check(cid, 13101) == TRUE then
		doPlayerSendCancel(cid, "Can be used again within 60 seconds.")
		doSendMagicEffect(getCreaturePosition(cid), 2)
		return false
	end
	for k = 1, 100 do
		addEvent(function()
			if isCreature(cid) then
			
			end
		end, 1 + ((k-1) * 600))
	end
	exhaustion.set(cid, 13101, 60.0)
	return doCombat(cid, combat, var)
end