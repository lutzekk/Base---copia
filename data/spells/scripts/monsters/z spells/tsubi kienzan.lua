local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 24)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -3.2, 0, -3.2, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 24)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -3.2, 0, -3.2, 0)



local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end



function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
   
return true
end






