function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
		local min = (levelTotal * 5) / 5 + (maglevel * 89) / 2
	local max = (levelTotal * 7) / 5 + (maglevel * 91) / 2
	return -min, -max
end

function onGetFormulaValuess(cid, level, maglevel)
	local levelTotal = level
		local min = (levelTotal * 5) / 5 + (maglevel * 98) / 2
	local max = (levelTotal * 7) / 5 + (maglevel * 99) / 2
	return -min, -max
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_ORANGE)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 45)
setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
 
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_HITCOLOR, COLOR_DARKRED)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 64)
setCombatCallback(combat2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuess")
 
local function onCastSpell1(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat1, parameters.var)
end
 
local function onCastSpell2(parameters)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat2, parameters.var)
end
 
function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y+1, z=getThingPosition(getCreatureTarget(cid)).z}
local parameters = {cid = cid, var = var, combat1 = combat1, combat2 = combat2}

for k = 1, 1 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 1, parameters)
			doSendMagicEffect(position1, 256)
		end
	end, 1 + ((k-1) * 200))
end
for i = 1, 1 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell2, 200, parameters)
			doSendMagicEffect(position1, 256)
		end
	end, 1 + ((i-1) * 200))
end
return true
end