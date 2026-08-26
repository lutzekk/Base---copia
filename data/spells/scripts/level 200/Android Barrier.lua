local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -35.0, 0, -35.0, 0)




arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}



local area1 = createCombatArea(arr1)


setCombatArea(combat1, area1)



local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end




function onCastSpell(cid, var)
local pos =  {x = getPlayerPosition(cid).x + 3, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}	doSendMagicEffect(pos, 536)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2 }
addEvent(onCastSpell1, 0, parameters)         
return true
end