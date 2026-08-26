function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if attacker == nil or creature == nil then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    
    if attacker:isPlayer() and (origin == ORIGIN_MELEE or origin == ORIGIN_RANGED) then
        local skillSword = attacker:getEffectiveSkillLevel(SKILL_CLUB)
        local chance = skillSword * 0.1 -- Probabilidad de golpe crítico (10% de la habilidad de espada)
        local valor = math.random(100) -- Valor aleatorio entre 1 y 100
        
        if valor <= chance then
            local pos = attacker:getPosition()
            pos:sendMagicEffect(20) -- Envío del efecto mágico para indicar el golpe crítico
            Game.sendAnimatedText("Crit!", pos, TEXTCOLOR_BLUE) -- Mensaje de golpe crítico en rojo
            
            primaryDamage = primaryDamage + math.floor(primaryDamage * 0.5) -- Aumento del daño primario en un 50%
            
        end
    end
    
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
