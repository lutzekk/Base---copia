local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 34)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)


function onGetFormulaValues(cid, level, maglevel)
	min = (level * 21 + maglevel * 21)
	max = (level * 24 + maglevel * 24)
	
	if min < 250 then
		min = 250
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local condition = createConditionObject(CONDITION_ATTRIBUTES)
addCombatCondition(combat, condition)

local function onCastSpell1(parameters, cid)
if not isPlayer(parameters.cid) then return true end
doCombat(parameters.cid, parameters.combat, parameters.var)
end

function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat = combat}
	if exhaustion.check(cid, 13101) == TRUE then
		doPlayerSendCancel(cid, "Podera usar novamente dentro de 60 segundos.")
		doSendMagicEffect(getCreaturePosition(cid), 2)
		return false
	end
	for k = 1, 30 do
		addEvent(function()
		addEvent(onCastSpell1, 1, parameters, cid)
				if isCreature(cid) then
			end
		end, 1 + ((k-1) * 2000))
	end
	exhaustion.set(cid, 13101, 60.0)
	return doCombat(cid, combat, var)
end
