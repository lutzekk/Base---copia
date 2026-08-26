function onGetFormulaValues(cid, level, maglevel)
	local levelTotal = level
	local min = (levelTotal * 62) / 5 + (maglevel * 65) / 5
	local max = (levelTotal * 70) / 5 + (maglevel * 72) / 5
	return -min, -max
end


local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 53)
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")




local arr = {
{1, 1, 1, 1, 1, 1 ,1},
{1, 1, 1, 1, 1, 1 ,1},
{1, 1, 1, 1, 1, 1 ,1},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 3, 0, 0, 0},
}
 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end