local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -300.0, 0, -300.0, 0)




local arr = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 2, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0},
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)  	local pos =  {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 3, z = getPlayerPosition(cid).z}	doSendMagicEffect(pos, 69)
return doCombat(cid, combat, var)
end


