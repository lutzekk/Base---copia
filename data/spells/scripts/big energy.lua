function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 56) / 15 + (maglevel * 56) / 5
	local max = (levelTotal * 58) / 15 + (maglevel * 58) / 5
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_ORANGE)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 75)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
local parameters = {cid = cid, var = var, combat1 = combat1}
 

for k = 1, 2 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 0, parameters)
			doSendMagicEffect(position1, 300)
		end
	end, 1 + ((k-1) * 200))
end
return true
end