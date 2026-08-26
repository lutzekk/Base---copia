local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -50, 0, -75)

local area = createCombatArea( { {0, 0, 0}, {0, 3, 0}, {0, 0, 0} } )
setCombatArea(combat, area)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
