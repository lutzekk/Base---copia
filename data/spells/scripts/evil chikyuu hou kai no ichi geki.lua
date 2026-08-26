local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -2.7, 0, -2.3, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -2.5, 0, -2.4, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -2.2, 0, -2.3, 0)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -2.5, 0, -2.7, 0)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -2.0, 0, -1.9, 0)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat6, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -2.1, 0, -2.4, 0)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat7, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -2.2, 0, -2.4, 0)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat8, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, -2.2, 0, -2.4, 0)



local function onCastSpell1(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end
end
local function onCastSpell2(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end
end
local function onCastSpell3(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end
end
local function onCastSpell4(parameters)
if isPlayer(parameters.cid) then
      doCombat(parameters.cid, parameters.combat4, parameters.var)
end
end
local function onCastSpell5(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat5, parameters.var)
end
end

local function onCastSpell6(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat6, parameters.var)
end
end

local function onCastSpell7(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat7, parameters.var)
end
end

local function onCastSpell8(parameters)
if isPlayer(parameters.cid) then
    doCombat(parameters.cid, parameters.combat8, parameters.var)
end
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat6, combat7 = combat7, combat8 = combat8 }
addEvent(onCastSpell1, 0, parameters)
addEvent(onCastSpell2, 300, parameters)
addEvent(onCastSpell3, 600, parameters)
addEvent(onCastSpell4, 900, parameters)
addEvent(onCastSpell5, 1200, parameters)
addEvent(onCastSpell6, 1500, parameters)
addEvent(onCastSpell7, 1800, parameters)
addEvent(onCastSpell8, 2100, parameters)

return true
end











