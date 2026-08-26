function onUse(cid, item, fromPosition, itemEx, toPosition)    
    local getPosition = getCreaturePosition(cid)
    for storage, auraId in next, aura_config.auras, nil do 
        if item.itemid == auraId[1] then
            if getPlayerStorageValue(cid, storage) == 1 then
                doSendMagicEffect(getPosition, 2)
                doPlayerSendCancel(cid, "[Aura System] ~ You already have this aura!")
                return true
            end
            
            setPlayerStorageValue(cid, storage, 1)
            doSendMagicEffect(getPosition, auraId[2])
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Aura System] ~ You recive new aura!")
            doRemoveItem(item.uid, 1) -- if you wanna remove this item after use.
            break
        end
    end
    return true
end