function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 40) / 5 + (maglevel * 40) / 5
	local max = (levelTotal * 42) / 5 + (maglevel * 42) / 5
	return -min, -max
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 242)
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+1, z=getThingPosition(getCreatureTarget(cid)).z}
local target = getCreatureTarget(cid)
local enemypos = getCreaturePosition(target)
if target == isMonster or isCreature then
doTeleportThing(cid, enemypos)
doSendMagicEffect(position1, 59)
end
return doCombat(cid, combat, var)
end