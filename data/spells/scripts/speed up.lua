local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, 20)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_HASTE)
condition:setParameter(CONDITION_PARAM_TICKS, 22000)
condition:setFormula(10.9, -200, 10.9, -200)
combat:addCondition(condition)

function onCastSpell(creature, variant)
    local player = Player(creature)
    
    if player:getStorageValue(111) == 1 then
        -- Si el jugador tiene el storage 111, otorgar un bonus de velocidad adicional del 20%
        condition:setFormula(10.9 + 2.18, -200, 10.9 + 2.18, -200)
    end

    if player:getStorageValue(55550) >= os.time() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are exhausted.")
        return true
    end

    player:setStorageValue(55550, os.time() + 1) -- último número "1" es el tiempo de reutilización en segundos
    return combat:execute(creature, variant)
end
