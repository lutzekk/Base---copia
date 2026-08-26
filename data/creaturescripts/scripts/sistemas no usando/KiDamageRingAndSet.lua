local bands = {
    [7731] = { -- item id
        damageBonusPercentage = 10, -- aumenta el daño mágico en un 10%
        xeffect = 0 -- efecto al atacar a la criatura
    },
    [7729] = { -- item id
        damageBonusPercentage = 10, -- aumenta el daño mágico en un 10%
        xeffect = 0 -- efecto al atacar a la criatura
    }
}

function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    for slot = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
        local item = attacker:getSlotItem(slot)
        
        if item and slot ~= CONST_SLOT_LEFT and slot ~= CONST_SLOT_RIGHT and slot ~= CONST_SLOT_AMMO then
            local itemId = item:getId()
            local band = bands[itemId]

            -- Asegurarse de que el tipo de arma no sea SWORD
            if band and item:getType():getWeaponType() ~= WEAPON_SWORD then
                creature:getPosition():sendMagicEffect(band.xeffect)

                -- Calcular el aumento de daño mágico
                local damageIncrease = primaryDamage * (band.damageBonusPercentage / 100)
                primaryDamage = primaryDamage + damageIncrease
            end
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
