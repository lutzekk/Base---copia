local time = 5
local random = math.random(1, 255)
local info = {
[1] = {effect = 29, storage = 9911, message = "VIP"},
[2] = {effect = 30, storage = 9922, message = "DONATE"}
}


    function effect(cid)
        if (isPlayer(cid)) then
            for i = 1, #info do
                if getPlayerStorageValue(cid, info[i].storage) >= 1 then
                    doSendMagicEffect(getCreaturePosition(cid), info[i].effect)
                end
            end
    addEvent(effect, time * 1000, cid)    
        end
    end

    
function onLogin(cid)
    for i = 1, #info do
        if getPlayerStorageValue(cid, info[i].storage) >= 1 then
            doSendMagicEffect(getCreaturePosition(cid), info[i].effect)
            doCreatureSay(cid, info[i].message, random)
        end
    end
return 1
end