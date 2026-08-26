local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

-- Diálogo al saludar
function greetCallback(cid)
    local player = Player(cid)
    if not player then return true end

    if player:getStorageValue(8000) == 51 then
        openNpcDialog(player, Npc():getId(),
            "Somethin wrong is on the Plant, can you check it?.",
            "Close&Yes"
        )
    else
        openNpcDialog(player, Npc():getId(),
            "Sorry, you can't do this saga yet.",
            "Close"
        )
    end

    return true
end

-- Manejo de los botones del diálogo
function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then return false end

    local player = Player(cid)
    if not player then return false end

    msg = msg:lower()

    if msg == "yes" then
        if player:getStorageValue(8000) == 51 then
            player:setStorageValue(8000, 52)
            openNpcDialog(player, Npc():getId(), "Thank you! Good luck!", "Close")
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
