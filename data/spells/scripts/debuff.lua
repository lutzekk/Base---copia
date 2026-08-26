
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 804)


local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, -30)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, -30)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, -30)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, -50)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, -50)
setConditionParam(condition, CONDITION_PARAM_SKILL_FISHING, -30)


addCombatCondition(combat, condition)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end
