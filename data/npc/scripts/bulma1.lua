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

    local stage = player:getStorageValue(8000)
    local dialogText = ""
    local buttons = "Close&Yes"

    if stage == 13 then
        dialogText = "Hey there, we don’t have much time left!\nBoard the ship and go to Namek!\nAre you with me?"
    elseif stage >= 14 then
        dialogText = "You already helped us. Thank you again!"
        buttons = "Close"
    else
        dialogText = "You are not ready for this mission yet."
        buttons = "Close"
    end

    openNpcDialog(player, Npc():getId(), dialogText, buttons)
    return true
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then return false end

    local player = Player(cid)
    if not player then return false end

    msg = msg:lower()
    local stage = player:getStorageValue(8000)

    if msg == "yes" then
        if stage == 13 then
            player:setStorageValue(8000, 14)
            openNpcDialog(player, Npc():getId(), "Thank you! Now go, quick!", "Close")
        else
            openNpcDialog(player, Npc():getId(), "Sorry, you can't do this saga yet.", "Close")
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
