local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function greetCallback(cid)
    local player = Player(cid)
    if not player then return true end

    local storage = player:getStorageValue(8000)

    if storage == 14 then
        openNpcDialog(player, Npc():getId(), 
            "Hey! We are under attack, we don't have the power to fight these monsters.\nYou look like a powerful fighter. Can you help us?",
            "Close&Yes")
    else
        openNpcDialog(player, Npc():getId(), 
            "Sorry, you can't help us right now.",
            "Close")
    end

    return true
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    if not player then return false end

    msg = msg:lower() -- para asegurar que "Yes" o "YES" funcione

    if msg == "yes" then
        if player:getStorageValue(8000) == 14 then
            player:setStorageValue(8000, 15)
            openNpcDialog(player, Npc():getId(), "Thank you!", "Close")
        else    
            openNpcDialog(player, Npc():getId(), "Sorry, you can't do this saga.", "Close")
        end
    elseif msg == "close" then
        closeNpcDialog(player)
        npcHandler:unGreet(cid)
    end

    return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
