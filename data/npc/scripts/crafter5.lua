local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local npcTopic, xmsg = {}, {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local craft = {
["god glove"] = {reward = {{7745, 1}}, items = {{id = 7930, count = 4},{id = 7744, count = 1}, {id = 7939, count = 10}}},
["Demonic glove"] = {reward = {{7751, 1}}, items = {{id = 7930, count = 5},{id = 7745, count = 1}, {id = 7940, count = 13}}},
["super god glove"] = {reward = {{7746, 1}}, items = {{id = 7930, count = 6},{id = 7751, count = 1}, {id = 7928, count = 15}}}

}

local function checkItemsNeeded(cid, items)
local check = {}
for i, v in pairs(items) do
    if getPlayerItemCount(cid, v.id) >= v.count then
        check[#check + 1] = 1
    end
end
return #check
end

local function getItemsFromTable(items)
local str = ''
if table.maxn(items) > 0 then
for i = 1, table.maxn(items) do
str = str .. items[i].count .. ' ' .. getItemNameById(items[i].id)
if i ~= table.maxn(items) then str = str .. ', ' end end end
return str
end

local function craftingEffects(position, delay)
local text = {"Ishhh!", "Kaboom", "Tic Tac", "BUM!", "Blop Blop!", "Cronch!"}
local effects = {385}
if delay ~= 0 then
doSendAnimatedText(position, text[math.random(1, #text)], math.random(1, 255))
doSendMagicEffect(position, effects[math.random(1, #effects)])
addEvent(craftingEffects, 1000, position, delay - 1)
end
end

function creatureSayCallback(cid, type, msg)
    local talkUser, msg = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid, string.lower(msg)
    if(not npcHandler:isFocused(cid)) then
        if isInArray({"hi", "hello"}, msg) then
            npcHandler:addFocus(cid)
            npcHandler:say("Hi, "..getPlayerName(cid)..". I can craft some {items} for you, but I need specific items to do them.", cid)
            npcTopic[talkUser] = 1
        else
            return false
        end
    elseif msgcontains(msg, "items") and npcTopic[talkUser] == 1 then
        local text = ""
        for i, v in pairs(craft) do
            text = text .. " {"..i.."}, "
        end
        npcHandler:say("I can make " .. text .. " which one do you want?", cid)
        npcTopic[talkUser] = 2
    elseif craft[msg] and npcTopic[talkUser] == 2 then
        npcHandler:say("Oh, " .. msg .. " is a good choice. Let me see... I need " .. getItemsFromTable(craft[msg].items) .. ", do you have it?" , cid)
        npcTopic[talkUser] = 3
        xmsg[talkUser] = msg
    elseif not craft[msg] and npcTopic[talkUser] == 2 then    
        npcHandler:say("I am not crafting this item, perhaps I can consider your order later.", cid)
        npcTopic[talkUser] = 0
    elseif msgcontains(msg, "yes") and npcTopic[talkUser] == 3 then
        local x = craft[xmsg[talkUser]]
        local delay = 1
        if checkItemsNeeded(cid, x.items) == #x.items then
            craftingEffects(getCreaturePosition(getNpcCid()), delay)
                for i = 1, #x.items do
                    doPlayerRemoveItem(cid, x.items[i].id, x.items[i].count)
                end
            addEvent(function()
                if isPlayer(cid) then
                    for i = 1, #x.reward do
                        doPlayerAddItem(cid, x.reward[i][1], x.reward[i][2])
                    end
                end
            end, delay*1000)
            local type = talkUser == 0 and TALKTYPE_SAY or TALKTYPE_PRIVATE_NP
            addEvent(doCreatureSay, delay*1000, getNpcCid(), "Thank you very much! Here is your item as I promised.", type, cid)
            npcTopic[talkUser] = 0
        else
            npcHandler:say("Sorry, but you don't have the items that I need.", cid)
            npcTopic[talkUser] = 0
        end
    elseif msgcontains(msg, "no") and npcTopic[talkUser] == 3 then
        npcHandler:say("Ok, maybe on the next.", cid)
        npcTopic[talkUser] = 0
    elseif msgcontains(msg, "bye") then
        npcHandler:say("Bye.", cid)
        npcHandler:releaseFocus(cid)
    else
        npcHandler:say("I am very busy, I can not talk to you now.", cid)
        npcTopic[talkUser] = 0
    end
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)    