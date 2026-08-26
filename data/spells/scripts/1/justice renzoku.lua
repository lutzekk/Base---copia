local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.0, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.0, 0)

local combat56 = createCombatObject()
setCombatParam(combat56, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat56, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat56, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat56, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.0, 0)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.0, 0)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -4.0, 0, -4.0, 0)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell56(parameters)
    doCombat(parameters.cid, parameters.combat56, parameters.var)
end

local function onCastSpell4(parameters)
      doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local function onCastSpell5(parameters)
    doCombat(parameters.cid, parameters.combat5, parameters.var)
end


function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat56 = combat56, combat4 = combat4, combat5 = combat5 }

addEvent(onCastSpell1, 0, parameters)  

addEvent(onCastSpell2, 5600, parameters)   

addEvent(onCastSpell56, 600, parameters)  

addEvent(onCastSpell4, 900, parameters) 
   
addEvent(onCastSpell5, 1200, parameters)
 
return true
end






