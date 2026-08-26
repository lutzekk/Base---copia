local effects = {

[86] = 275,
[131] = 265,
[152] = 14,
[163] = 14,
[175] = 265,
[176] = 265,
[177] = 265,
[178] = 265,
[179] = 265,
[186] = 85,
[187] = 85,
[188] = 85,
[189] = 85,
[190] = 85,
[238] = 180,
[239] = 180,
[241] = 180,
[242] = 180,




}

function onThink(interval)
    for _, pid in ipairs(getPlayersOnline()) do
        local effect = effects[getPlayerVocation(pid)]
        if(effect) then
        local position = {x = getCreaturePosition(pid).x, y = getCreaturePosition(pid).y, z = getCreaturePosition(pid).z}
            doSendMagicEffect(position, effect)
        end
    end
    return true
end