--------- Special UE By WilkU --------------
local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -30.0, 0, -30.0, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 10)

arr1 = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)

setCombatArea(combat1, area1)
setCombatArea(combat2, area1)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onCastSpell(cid, var)
    local parameters1 = { cid = cid, var = var, combat1 = combat1 }
    local parameters2 = { cid = cid, var = var, combat2 = combat2 }

    -- Programar el segundo combate (combat2) primero
    addEvent(onCastSpell2, 0, parameters2)

    -- Programar el primer combate (combat1) después de 2 segundos
    addEvent(onCastSpell1, 0, parameters1)

    return true
end
