local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 177)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.5, -1020000, -2.6, -2320000)



local arr = {
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 3, 0},
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
