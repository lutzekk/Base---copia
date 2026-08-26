function onThink(cid, interval)
    local getAura = aura_config.auras[getPlayerStorageValue(cid, aura_config.chooseAuraStorageId)]
    if not getAura then
        return true
    end
    
    local getInterval = getPlayerStorageValue(cid, aura_config.chooseAuraStorageInterval)
    if getInterval < getAura[3] then
        setPlayerStorageValue(cid, aura_config.chooseAuraStorageInterval, getInterval + interval)
        return true
    end
    local getPosition = getCreaturePosition(cid)
    local xX = getAura.pushAura[1]
    local yY = getAura.pushAura[2]
    if xX then
        getPosition = {getPosition.x + xX, getPosition.y, getPosition.z}
    end
    if yY then
        getPosition = {getPosition.x, getPosition.y + yY, getPosition.z}
    end
    setPlayerStorageValue(cid, aura_config.chooseAuraStorageInterval, 0)
    doSendMagicEffect(getPosition, getAura[2])
    return true
end