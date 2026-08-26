local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 7200 * 1000)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICPOINTS, 4)
 
local text = "Aaahhh! Me sinto mais poderoso!"
 
function onUse(cid, item, frompos, item2, topos)
	if(isInArray({1,2,3,4}, getPlayerVocation(cid)) == false) and (getPlayerLevel(cid)>=400) then
var = numberToVariant(cid)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_GREEN)
doCreatureSay(cid, text, 19)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Você precisa ser da vocação Turles Reborn LvL 400+ para usar este item.")
doSendMagicEffect(getPlayerPosition(cid),2)
return true
end
 
end