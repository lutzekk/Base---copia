local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_TELEPORT)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_OUTFIT)
condition:setOutfit({lookType = 128, lookHead = 95, lookBody = 95, lookLegs = 95, lookFeet = 95})
combat:addCondition(condition)

function onCastSpell(creature, variant)
    local player = Player(creature)

    -- Verificar si el jugador tiene el storage 114
    if player:getStorageValue(114) ~= 1 then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not allowed to use this spell.")
        return false
    end

    -- Poner el cooldown del spell (30 minutos)
    local cooldownStorage = 55551
    if player:getStorageValue(cooldownStorage) >= os.time() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are exhausted.")
        return false
    end

    -- Setear el cooldown
    player:setStorageValue(cooldownStorage, os.time() + 30 * 60)

    return combat:execute(creature, variant)
end
