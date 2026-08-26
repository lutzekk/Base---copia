function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 4) / 5 + (maglevel * 3) / 2
	local max = (levelTotal * 5) / 5 + (maglevel * 4) / 2
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 65)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+1, z=getThingPosition(getCreatureTarget(cid)).z}
local parameters = {cid = cid, var = var, combat1 = combat1}
 

for k = 1, 7 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 0, parameters)
			doSendMagicEffect(position1, 231)
		end
	end, 1 + ((k-1) * 300))
end
return true
end