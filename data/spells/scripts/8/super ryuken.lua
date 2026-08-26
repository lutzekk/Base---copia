local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_LIGHTGREEN)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -38.0, 0, -38.0, 0)


local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end


function onCastSpell(cid, var)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 8 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 0, parameters)
			doSendMagicEffect(position1, 115)
		end
	end, 1 + ((k-1) * 275))
end
return true
end