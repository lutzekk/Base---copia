local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISONARROW)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -200, 0, -300)

local area = createCombatArea( { {0, 0, 0}, {0, 3, 0}, {0, 0, 0} } )
setCombatArea(combat, area)

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
