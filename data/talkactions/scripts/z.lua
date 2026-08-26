function onSay(player, words, param)

    param = tonumber(param)
    if(not param or param < 0 or param > 999) then
     

        return true
    end

    doSendMagicEffect(player:getPosition(), param)



    return false
end