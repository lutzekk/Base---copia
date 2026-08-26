function onSay(cid, words, param)
    local getPosition = getCreaturePosition(cid)
    if(param == '' or param == 'check') then
        local text, id, haveEffect = "Your avalible auras:\n", 1, false
        
        for storage, auraId in next, aura_config.auras, nil do 
            local checkStorage = getPlayerStorageValue(cid, storage)
            if checkStorage == 1 then
                haveEffect = true
                text = text.."["..id.."] ~ effect: "..auraId[2].."\n"
            end
            id = id + 1
        end
        
        text = text.."\nIf you wanna set effect use command: !aura set, effectId"
        if not haveEffect then
            doShowTextDialog(cid, 2160, "You don't have avalible any aura!")
        end
        doShowTextDialog(cid, 2160, text)
    end
    local separator = string.explode(param, ",")
    if separator and separator[1] == "set" then
        local effectId = tonumber(separator[2])
        if(effectId) then
            for storage, auraId in next, aura_config.auras, nil do 
                if auraId[2] == effectId then
                    local checkStorage = getPlayerStorageValue(cid, storage)
                    
                    if checkStorage ~= 1 then
    return false
end
                    
                    doPlayerSendCancel(cid, "[Aura System] ~ You set your aura id: "..effectId)
                    setPlayerStorageValue(cid, aura_config.chooseAuraStorageId, storage)
                    break
                end
            end
        end
    end
    return true
end