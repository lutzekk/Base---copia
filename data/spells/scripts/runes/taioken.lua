local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1498)
 
 
function onCastSpell(cid, var)
if exhaustion.check(cid, 13103) == TRUE then
	doPlayerSendCancel(cid, "Will be able to use again within 2 seconds.")	
	doSendMagicEffect(getCreaturePosition(cid), 2)
	return false
	end
    doCreatureSay(cid, "Mwall", TALKTYPE_ORANGE_1)
   	exhaustion.set(cid, 13103, 1.0)
return doCombat(cid, combat, var)
end