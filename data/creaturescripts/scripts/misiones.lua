local config = {
    -- E-Rank Missions
    ['bandit'] = {amount = 25, storage = 21903, startstorage = 45551, startvalue = 3},
    ['dinosaur'] = {amount = 25, storage = 21904, startstorage = 45551, startvalue = 4},
    ['triceratops'] = {amount = 40, storage = 21905, startstorage = 45551, startvalue = 5},
    
    -- G-Rank Missions
    ['bandit boss'] = {amount = 5, storage = 21906, startstorage = 45551, startvalue = 6},
    ['elemental'] = {amount = 75, storage = 21907, startstorage = 45551, startvalue = 7},
    
    -- P-Rank Missions
    ['android'] = {amount = 100, storage = 21908, startstorage = 45551, startvalue = 8},
    ['saiyan'] = {amount = 100, storage = 21909, startstorage = 45551, startvalue = 9},
    ['oozaru'] = {amount = 50, storage = 21910, startstorage = 45551, startvalue = 10},
    
    -- D-Rank Missions
    ['majin'] = {amount = 150, storage = 21911, startstorage = 45551, startvalue = 11},
    ['tsufurjin boss'] = {amount = 10, storage = 21912, startstorage = 45551, startvalue = 12},
    ['shin'] = {amount = 150, storage = 21913, startstorage = 45551, startvalue = 13},
    ['janemba'] = {amount = 150, storage = 21914, startstorage = 45551, startvalue = 14},
    
    -- A-Rank Missions
    ['shenron'] = {amount = 100, storage = 21915, startstorage = 45551, startvalue = 15},
    ['future majin'] = {amount = 300, storage = 21916, startstorage = 45551, startvalue = 16},
}

function onKill(player, target)
    local player = Player(player)
    local targetName = target:getName():lower()
    local monster = config[targetName]
    
    if target:isPlayer() or not monster or target:getMaster() then
        return true
    end
    
    local stor = player:getStorageValue(monster.storage) + 1
    if stor <= monster.amount and player:getStorageValue(monster.startstorage) >= monster.startvalue then
        player:setStorageValue(monster.storage, stor)
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Task message: '..stor..' of '..monster.amount..' '..target:getName()..'s killed.')
    end
    
    if stor == monster.amount then
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..stor..' '..target:getName()..'s and completed the mission.')
        player:setStorageValue(monster.storage, stor)
    end
    
    return true
end
