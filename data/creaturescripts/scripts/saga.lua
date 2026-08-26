local saga = {
    ['raditz saga'] = {setStorageValue = 2,
    rewards = {
        {"item", 2342, 1}, 
        {"exp", 10000}
    }},
    ['monkey saga'] = {setStorageValue = 4,
    rewards = {
        {"exp", 20000}
    }},
    ['gregory saga'] = {setStorageValue = 8,
    rewards = {
        {"exp", 20000}
    }},
    ['saibaman saga'] = {setStorageValue = 10,
    rewards = {
        {"exp", 20000}
    }},
    ['nappa saga'] = {setStorageValue = 11,
    rewards = {
        {"exp", 20000}
    }},
    ['vegeta saga'] = {setStorageValue = 12, summonMonster = "Vegeta Oozaru Saga", say = "MHAHAH \n YOU CAN'T KILL ME.",
    rewards = {
        {"item", 2457, 1}, 
        {"exp", 25000}
    }},
    ['vegeta oozaru saga'] = {setStorageValue = 13,
    rewards = { 
        {"exp", 25000}
    }},
    ['dodoria saga'] = {setStorageValue = 16,
    rewards = { 
        {"exp", 25000}
    }},
    ['zarbon saga'] = {setStorageValue = 18,
    rewards = { 
        {"exp", 25000}
    }},
    ['guldo saga'] = {setStorageValue = 20,
    rewards = { 
        {"exp", 25000}
    }},
    ['reecome saga'] = {setStorageValue = 21,
    rewards = { 
        {"exp", 30000}
    }},
    ['copassa saga'] = {setStorageValue = 22,
    rewards = { 
        {"exp", 35000}
    }},
    ['capitan ginyu saga'] = {setStorageValue = 23,
    rewards = { 
        {"exp", 50000}
    }},
    ['Capitan Ginyu Goku saga'] = {setStorageValue = 24,
    rewards = { 
        {"exp", 100000}
    }},
    ['freeza form one saga'] = {setStorageValue = 25, summonMonster = "Freeza2 Saga", say = "..HAHA \n GO DIE.",
    rewards = { 
        {"exp", 25000}
    }},
    ['freeza form two saga'] = {setStorageValue = 25, summonMonster = "Freeza3 Saga", say = "HAHAH.",
    rewards = { 
        {"exp", 25000}
    }},
    ['freeza form tree saga'] = {setStorageValue = 25, summonMonster = "Freeza4 Saga", say = "NOT YET.",
    rewards = { 
        {"exp", 25000}
    }},
    ['freeza form four saga'] = {setStorageValue = 25, summonMonster = "Freeza5 Saga", say = "AAAAAAAA!!!",
    rewards = { 
        {"exp", 25000}
    }},
    ['freeza form five saga'] = {setStorageValue = 26,
    rewards = { 
        {"exp", 1000000}
    }},
    ['metal freeza saga'] = {setStorageValue = 28, -- aca es cuando matas a este mobs te dara el storage 28
    rewards = { 
        {"exp", 1000000}
    }},
    ['c19 saga'] = {setStorageValue = 30,
    rewards = { 
        {"exp", 100000}
    }},
    ['c20 saga'] = {setStorageValue = 31,
    rewards = { 
        {"exp", 100000}
    }},
    ['cell first saga'] = {setStorageValue = 33,
    rewards = { 
        {"exp", 200000}
    }},
    ['c17 saga'] = {setStorageValue = 34,
    rewards = { 
        {"exp", 300000}
    }},
    ['cell second form'] = {setStorageValue = 35,
    rewards = { 
        {"exp", 500000}
    }},
    ['cell jr saga'] = {setStorageValue = 36,
    rewards = { 
        {"exp", 500000}
    }},
    ['cell third saga'] = {setStorageValue = 37,
    rewards = { 
        {"exp", 500000}
    }},
    ['majin vegeta saga'] = {setStorageValue = 41,
    rewards = { 
        {"exp", 1000000}
    }},
    ['fat buu saga'] = {setStorageValue = 44,
    rewards = { 
        {"exp", 1000000}
    }},
    ['evil buu saga'] = {setStorageValue = 46,
    rewards = { 
        {"exp", 1000000}
    }},
    ['desert buu saga'] = {setStorageValue = 48,
    rewards = { 
        {"exp", 1000000}
    }},
    ['super buu saga'] = {setStorageValue = 49,
    rewards = { 
        {"exp", 1000000}
    }},
    ['kid buu saga'] = {setStorageValue = 51,
    rewards = { 
        {"exp", 1500000}
    }},
    ['bebi saga'] = {setStorageValue = 52, summonMonster = "Bebi2 Saga", say = "HAHAHA!!",
    rewards = { 
        {"exp", 100000}
    }},
    ['bebi oozaru saga'] = {setStorageValue = 53,
    rewards = { 
        {"exp", 3000000}
    }},
    ['super c17 saga'] = {setStorageValue = 55,
    rewards = { 
        {"exp", 3000000}
    }},
    ['ryan shenlong saga'] = {setStorageValue = 57,
    rewards = { 
        {"exp", 500000}
    }},
    ['chii shenlong saga'] = {setStorageValue = 58,
    rewards = { 
        {"exp", 500000}
    }},
    ['uu shenlong saga'] = {setStorageValue = 59,
    rewards = { 
        {"exp", 500000}
    }},
    ['ryuu shenlong saga'] = {setStorageValue = 60,
    rewards = { 
        {"exp", 500000}
    }},
    ['suu shenlong saga'] = {setStorageValue = 61,
    rewards = { 
        {"exp", 1000000}
    }},
    ['san shenlong saga'] = {setStorageValue = 62,
    rewards = { 
        {"exp", 1000000}
    }},
    ['li shenlong saga'] = {setStorageValue = 63, summonMonster = "Omega Shenron Saga", say = "REVIVE ME BALLS!",
    rewards = { 
        {"exp", 1000000}
    }},
    ['omega shenlong saga'] = {setStorageValue = 64,
    rewards = { 
        {"exp", 1000000}
    }},
    }
    
    function onKill(creature, target)
        for x, y in pairs(saga) do 
            if(x:lower() == target:getName():lower()) then
                for pid, _ in pairs(target:getDamageMap()) do
                    local attackerPlayer = Player(pid)
                    if attackerPlayer then
                        attackerPlayer:setStorageValue(8000, y.setStorageValue)
                        doPlayerSendTextMessage(attackerPlayer, MESSAGE_EVENT_ADVANCE, "Saga: ".. x .. " successful done.")
                        for _,n in pairs(y.rewards) do
                            if(n[1] == "item") then
                                doPlayerAddItem(attackerPlayer, n[2], n[3], true)
                            end
                            if(n[1] == "exp") then
                                attackerPlayer:addExperience(n[2])
                            end
                            if(y.summonMonster ~= nil) then
                                Game.createMonster(y.summonMonster, getPlayerPosition(attackerPlayer))
                            end
                        end
                    end
                end
            end
            
        end
        return true
    end
    
    
    function Creature:onTargetCombat(target)
        if self:isPlayer() and target:isPlayer() then
            if self:hasSecureMode()== true then
                return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
            end
        end
        local player = Player(cid)
        for x, y in pairs(saga) do 
            if(x:lower() == target:getName():lower() and self:getStorageValue(8000) ~= y.oldStorageValue) then
                 return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
            end
        end
    return true
    end
    
        
