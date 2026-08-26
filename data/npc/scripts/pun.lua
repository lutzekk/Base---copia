local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)  npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()  npcHandler:onThink() end

local missions = {
    -- E-Rank Missions
    [1] = {
        items = {
            {id = 5890, count = 30},
            {id = 5878, count = 50}
        },
        message = "Great, for your first mission you need to collect some items, I need",
        level = 15,
        rewarditems = {
            {id = 2160, count = 3},
            {id = 2152, count = 1}
        },
        rewardexp = 10000
    },
    [2] = {
        monsters = {
            {name = "Bandits", count = 25, storage = 21903},
            {name = "Dinosaurs", count = 25, storage = 21904},
            {name = "Triceratops", count = 40, storage = 21905}
        },
        message = "Thanks, for your next mission kill",
        level = 15,
        rewarditems = {
            {id = 2160, count = 3}
        },
        rewardexp = 35000
    },
    
    -- G-Rank Missions
    [3] = {
        items = {
            {id = 5920, count = 50},
            {id = 5877, count = 25}
        },
        message = "Awesome, now get",
        level = 50,
        rewarditems = {
            {id = 2160, count = 5}
        },
        rewardexp = 100000
    },
    [4] = {
        monsters = {
            {name = "Bandit Boss", count = 5, storage = 21906},
            {name = "Elementals", count = 75, storage = 21907}
        },
        message = "Good job, now kill",
        level = 50,
        rewarditems = {
            {id = 2160, count = 5}
        },
        rewardexp = 150000
    },
    
    -- P-Rank Missions
    [5] = {
        monsters = {
            {name = "Androids", count = 100, storage = 21908},
            {name = "Saiyans", count = 100, storage = 21909},
            {name = "Oozarus", count = 50, storage = 21910}
        },
        message = "Kill",
        level = 100,
        rewarditems = {
            {id = 2160, count = 10}
        },
        rewardexp = 500000
    },
    
    -- D-Rank Missions
    [6] = {
        monsters = {
            {name = "Majins", count = 150, storage = 21911},
            {name = "Tsufurjin Boss", count = 10, storage = 21912},
            {name = "Shins", count = 150, storage = 21913},
            {name = "Janembas", count = 150, storage = 21914}
        },
        message = "Good, now kill",
        level = 200,
        rewarditems = {
            {id = 2160, count = 25}
        },
        rewardexp = 2000000
    },
    
    -- A-Rank Missions
    [7] = {
        items = {
            {id = 5906, count = 100},
            {id = 5882, count = 100}
        },
        message = "Bring",
        level = 300,
        rewarditems = {
            {id = 2160, count = 50}
        },
        rewardexp = 3500000
    },
    [8] = {
        monsters = {
            {name = "Shenrons", count = 100, storage = 21915},
            {name = "Future Majins", count = 300, storage = 21916}
        },
        message = "Kill",
        level = 300,
        rewarditems = {
            {id = 2160, count = 50}
        },
        rewardexp = 5000000
    }
}

local storage = 45551

local function getItemsMonstersFromTable(imtable)
    local text = ""
    for v = 1, #imtable do
        local ret = ", "
        if v == 1 then
            ret = ""
        elseif v == #imtable then
            ret = " and "
        end
        text = text .. ret
        local count = imtable[v].count
        if imtable[v].id then
            local info = ItemType(imtable[v].id)
            text = text .. (count > 1 and count or info:getArticle()).." "..(count > 1 and info:getPluralName() or info:getName())
        else
            text = text .. count .." "..imtable[v].name
        end
    end
    return text
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    local x = missions[player:getStorageValue(storage)]

    if msgcontains(msg, 'mission') or msgcontains(msg, 'quest') then
        if player:getStorageValue(storage) == -1 then
            selfSay("I have several missions for you, do you accept the challenge?", cid)
            npcHandler.topic[cid] = 1
        elseif x then
            if player:getLevel() >= x.level then
                selfSay("Did you "..(x.items and "get "..getItemsMonstersFromTable(x.items) or "kill "..getItemsMonstersFromTable(x.monsters)).."?", cid)
                npcHandler.topic[cid] = 1
            else
                selfSay("The mission I gave you is for level "..x.level..", come back later.", cid)
            end
        else
            selfSay("You already did all the missions, great job though.", cid)
            npcHandler:releaseFocus(cid)
        end
    elseif msgcontains(msg, 'yes') and npcHandler.topic[cid] == 1 then
        if player:getStorageValue(storage) == -1 then
            player:setStorageValue(storage, 1)
            local x = missions[player:getStorageValue(storage)]
            selfSay(x.message.." "..getItemsMonstersFromTable(x.items or x.monsters)..".", cid)
        elseif x then
            local imtable = x.items or x.monsters
            local amount = 0
            for it = 1, #imtable do
                local check = x.items and player:getItemCount(imtable[it].id) or player:getStorageValue(imtable[it].storage)
                if check >= imtable[it].count then
                    amount = amount + 1
                end
            end
            if amount == #imtable then
                if x.items then
                    for it = 1, #x.items do
                        player:removeItem(x.items[it].id, x.items[it].count)
                    end
                end
                if x.rewarditems then
                    for r = 1, #x.rewarditems do
                        player:addItem(x.rewarditems[r].id, x.rewarditems[r].count)
                    end
                    player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You received "..getItemsMonstersFromTable(x.rewarditems)..".")
                end
                if x.rewardexp then
                    player:addExperience(x.rewardexp)
                    player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You received "..x.rewardexp.." experience.")
                end
                player:setStorageValue(storage, player:getStorageValue(storage) + 1)
                local x = missions[player:getStorageValue(storage)]
                if x then
                    selfSay(x.message.." "..getItemsMonstersFromTable(x.items or x.monsters)..".", cid)
                else
                    selfSay("Well done! You did a great job on all your missions.", cid)
                end
            else
                local n = 0
                for i = 1, #imtable do
                    local check = x.items and player:getItemCount(imtable[i].id) or player:getStorageValue(imtable[i].storage)
                    if check < imtable[i].count then
                        n = n + 1
                    end
                end
                local text = ""
                local c = 0
                for v = 1, #imtable do
                    local check = x.items and player:getItemCount(imtable[v].id) or player:getStorageValue(imtable[v].storage)
                    if check < imtable[v].count then
                        c = c + 1
                        local ret = ", "
                        if c == 1 then
                            ret = ""
                        elseif c == n then
                            ret = " and "
                        end
                        text = text .. ret
                        if x.items then
                            local count, info = imtable[v].count - player:getItemCount(imtable[v].id), ItemType(imtable[v].id)
                            text = text .. (count > 1 and count or info:getArticle()).." "..(count > 1 and info:getPluralName() or info:getName())
                        else
                            local count = imtable[v].count - (player:getStorageValue(imtable[v].storage) + 1)
                            text = text .. count.." "..imtable[v].name
                        end
                    end
                end
                selfSay(x.items and "You don't have all items, you still need to get "..text.."." or "You didn't kill all monsters, you still need to kill "..text..".", cid)
            end
        end
        npcHandler.topic[cid] = 0
    elseif msgcontains(msg, 'no') and npcHandler.topic[cid] == 1 then
        selfSay("Oh well, I guess not then.", cid)
        npcHandler.topic[cid] = 0
    end
    return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "Bye!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye, have a nice day!")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
