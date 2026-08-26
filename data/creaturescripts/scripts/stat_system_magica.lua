-- Función para el daño físico
function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not creature or not attacker or not attacker:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    
    if origin == ORIGIN_MELEE or origin == ORIGIN_RANGED then
        primaryDamage, secondaryDamage = StatSystem.addAttackBonus(attacker, primaryDamage, secondaryDamage)
    end
    
    return primaryDamage, primaryType, secondaryDamage, secondaryType

elseif 
end


