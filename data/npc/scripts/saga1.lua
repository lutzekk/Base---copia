local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local teleportPosition = {x = 89, y = 227, z = 7}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function greetCallback(cid)
    local player = Player(cid)
    if not player then return true end

    if player:getStorageValue(8000) <= 0 then
        openNpcDialog(player, Npc():getId(), "Hi! Thank you. Do you want to finish this saga now?", "Close&Yes")
    else
        openNpcDialog(player, Npc():getId(), "You have already completed this saga. Thank you again!", "Close")
    end

    return true
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    if not player then return false end

    if msg:lower() == "yes" then
        if player:getStorageValue(8000) <= 0 then
            player:addItem(2343, 1)
            player:teleportTo(teleportPosition)
            player:setStorageValue(8000, 1)
        else
            openNpcDialog(player, Npc():getId(), "You have already completed this saga.", "close")
        end
    elseif msg:lower() == "close" then
        closeNpcDialog(player)
        npcHandler:unGreet(cid)
    end

    return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
