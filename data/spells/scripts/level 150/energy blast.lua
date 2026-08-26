local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -35.0, 0, -35.0, 0)




local arr = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 2, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0},
}

 
local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)  	
local pos =  {x = getPlayerPosition(cid).x + 2, y = getPlayerPosition(cid).y + 2, z = getPlayerPosition(cid).z}	
doSendMagicEffect(pos, 507)
return doCombat(cid, combat, var)
end
