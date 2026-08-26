local sto = 9087
local effect = CONST_ME_MAGIC_BLUE
local effect1 = CONST_ME_MAGIC_RED

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 291) --derecha
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -90.0, 0, -90.0, 0) 

local arr1 = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 2, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -90.0, 0, -90.0, 0)
 
local arr5 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 1, 0, 0, 0},
{1, 1, 1, 1, 1, 1, 2, 0, 0},
{1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
}
 
local area5 = createCombatArea(arr5)
setCombatArea(combat5, area5)


-- Define los otros combates (combat2, combat3, etc.) y sus áreas correspondientes aquí

function onCastSpell(creature, variant)
    local player = Player(creature)
    local target = player:getTarget() -- Obtener el objetivo del jugador

    if not target then
        return false
    end

    if getTileInfo(target:getPosition()).protection then
        return doPlayerSendCancel(creature, "El objetivo está en una zona de protección.")
    end

    local targetPos = target:getPosition()
    
    -- Ajustar la posición de destino al lado izquierdo del objetivo
    targetPos.x = targetPos.x - 1

    -- Teletransportar al jugador al lado izquierdo del objetivo
    doTeleportThing(creature, targetPos)
    doSendMagicEffect(targetPos, effect)

    -- Lanzar los ataques después de la teletransportación
    doCombat(creature, combat1, variant)
	doCombat(creature, combat1, numberToVariant(creature))
	doCombat(creature, combat5, numberToVariant(creature))
    -- Agregar más ataques aquí si es necesario

    setPlayerStorageValue(creature, sto, -1)
    return true
end
