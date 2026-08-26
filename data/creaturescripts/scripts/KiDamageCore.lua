local bands = {
    [7934] = { -- item id
        damageBonusPercentage = 10, -- aumenta el daño mágico en un 10%
        xeffect = 0 -- efecto al atacar a la criatura
    }
}

function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    local ammo = attacker:getSlotItem(CONST_SLOT_AMMO)
    
    if ammo then
        local ammoId = ammo:getId()
        local band = bands[ammoId]

        -- Asegurarse de que el tipo de arma no sea SWORD
        if band then
            creature:getPosition():sendMagicEffect(band.xeffect)

            -- Calcular el aumento de daño mágico
            local damageIncrease = primaryDamage * (band.damageBonusPercentage / 100)
            primaryDamage = primaryDamage + damageIncrease
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
