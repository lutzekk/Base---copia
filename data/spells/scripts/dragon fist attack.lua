function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 65) / 5 + (maglevel * 65) / 5
	local max = (levelTotal * 72) / 5 + (maglevel * 72) / 5
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_YELLOW)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
 
arr1 = {
{0, 3, 0}
}
 
local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)
 
local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end
 
function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+0, z=getThingPosition(getCreatureTarget(cid)).z}
local parameters = { cid = cid, var = var, combat1 = combat1 }
addEvent(onCastSpell1, 0, parameters)
doSendMagicEffect(position1, 254)
return true
end
