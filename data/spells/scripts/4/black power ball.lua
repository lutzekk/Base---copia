local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
 
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 17)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -175.0, 0, -176.0, 0)


function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+2, y=getThingPosition(getCreatureTarget(cid)).y+2, z=getThingPosition(getCreatureTarget(cid)).z}
doSendMagicEffect(position1, 433)
return doCombat(cid, combat, var)

end
