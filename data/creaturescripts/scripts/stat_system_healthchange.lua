-- Función para el daño físico
function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker or not attacker:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    
    if origin == ORIGIN_MELEE or origin == ORIGIN_RANGED then
        primaryDamage, secondaryDamage = StatSystem.addAttackBonus(attacker, primaryDamage, secondaryDamage) -- daño dmg aumento
        if creature:isPlayer() then
            primaryDamage, secondaryDamage = StatSystem.addDefenseBonus(creature, primaryDamage, secondaryDamage)
            end

    elseif origin == ORIGIN_SPELL or origin == ORIGIN_ICEDAMAGE or origin == ORIGIN_EARTHDAMAGE or origin == ORIGIN_ENERGYDAMAGE or origin == ORIGIN_FIREDAMAGE then
        primaryDamage, secondaryDamage = StatSystem.addMagicBonus(attacker, primaryDamage, secondaryDamage)
         -- daño dmg aumento
        if creature:isPlayer() then
            primaryDamage, secondaryDamage = StatSystem.addEnergyBonus(creature, primaryDamage, secondaryDamage)
            end

    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
