local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
 
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 81)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -220.0, 0, -220.0, 0)


function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+1, z=getThingPosition(getCreatureTarget(cid)).z}
doSendMagicEffect(position1, 426)
return doCombat(cid, combat, var)
end



