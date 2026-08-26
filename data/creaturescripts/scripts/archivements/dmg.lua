function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    -- Verificar si el atacante es un jugador
    if attacker:isPlayer() then
        -- Verificar si el jugador ha alcanzado 6 crafteos (storage 5002)
        local craftingBonusStorage = 5002  -- El storage que indica el aumento de daño mágico
        if attacker:getStorageValue(craftingBonusStorage) == 1 then
            -- Calcular el aumento de daño mágico del 5%
            local damageIncrease = primaryDamage * 0.05
            primaryDamage = primaryDamage + damageIncrease
        end

        -- Verificar si el jugador tiene el storage 5005
        local energyPhysicalBonusStorage = 5005 -- El storage que indica el aumento de daño de energía y físico
        if attacker:getStorageValue(energyPhysicalBonusStorage) == 1 then
            -- Si el tipo de daño primario es energía o físico, aplicar el aumento del 3%
            if primaryType == COMBAT_ENERGYDAMAGE or primaryType == COMBAT_PHYSICALDAMAGE then
                local bonusDamage = primaryDamage * 0.03
                primaryDamage = primaryDamage + bonusDamage
            end
            
            -- Si el tipo de daño secundario es energía o físico, aplicar el aumento del 3%
            if secondaryType == COMBAT_ENERGYDAMAGE or secondaryType == COMBAT_PHYSICALDAMAGE then
                local bonusSecondaryDamage = secondaryDamage * 0.03
                secondaryDamage = secondaryDamage + bonusSecondaryDamage
            end
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
