local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, 20)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onTargetCreature(creature, target)
    local player = creature:getPlayer()
    if not player then
        return
    end

    local level, magicLevel = player:getLevel(), player:getMagicLevel()

    local healthMin = (level * 70) + (magicLevel * 7) + 100
    local healthMax = (level * 90) + (magicLevel * 7) + 100
    local healthGain = math.floor(math.random(healthMin, healthMax))

    -- Verificar si el jugador tiene el storage 106
    local storageValue = player:getStorageValue(106)

    -- Aplicar un 10% más de curación si tiene el storage 106
    if storageValue == 1 then
        local extraHealing = healthGain * 0.1
        healthGain = healthGain + extraHealing

        print("Curación con storage (extra 10%): " .. healthGain .. " HP")
    else
        print("Curación sin storage: " .. healthGain .. " HP")
    end

    target:addHealth(healthGain)
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, variant, isHotkey)
    return combat:execute(creature, variant)
end
