local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6.1, 0, -6.2, 0)


function onCastSpell(cid, var)
doPlayerSay(cid, 'God Attack', TALKTYPE_ORANGE_1) 
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+1, z=getThingPosition(getCreatureTarget(cid)).z}
doSendMagicEffect(position1, 237)
return doCombat(cid, combat, var)
end



