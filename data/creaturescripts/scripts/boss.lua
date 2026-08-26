local dropChances = {
    [8505] = 25,  -- item ID 8620 con probabilidad del 25%
    [8747] = 100   -- item ID 2160 con probabilidad del 50%
    -- Puedes agregar más items y sus probabilidades aquí
}

local boss = {
    ['ultra jiren'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['ultra vegeta'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['ultra brolly'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['ultra Vegetto'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['ultra janemba'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['ultra kale'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    ['Hearts'] = {rewards = {{"item", 8505}, {"item", 8747, 25}, {"exp", 35000}}},
    -- Definiciones de otros jefes
}

function onKill(creature, target)
    for x, y in pairs(boss) do
        if x:lower() == target:getName():lower() then
            for pid, _ in pairs(target:getDamageMap()) do
                local attackerPlayer = Player(pid)
                for _, n in pairs(y.rewards) do
                    if n[1] == "item" then
                        local itemID = n[2]
                        local dropChance = dropChances[itemID] or 0
                        if math.random(1, 100) <= dropChance then
                            doPlayerAddItem(attackerPlayer, itemID, n[3] or 1, true)
                        end
                    elseif n[1] == "exp" then
                        attackerPlayer:addExperience(n[2])
                    end
                end
            end
        end
    end
    return true
end
