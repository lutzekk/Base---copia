local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function greetCallback(cid)
    local player = Player(cid)
    if not player then
        return true
    end

    if player:getStorageValue(8000) >= 1 then
        openNpcDialog(player, Npc():getId(), "Ya completaste esta saga. ¡Gracias por ayudarme!", "Cerrar")
    else
        openNpcDialog(player, Npc():getId(), "Hey, ¿puedes ayudarme con una pequeña misión? ¡Serás recompensado!", "Cerrar&Sí")
    end

    return true
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    if not player then
        return false
    end

    if msg:lower() == "Accept" or msg:lower() == "si" then
        if player:getStorageValue(8000) >= 1 then
            openNpcDialog(player, Npc():getId(), "Ya hiciste esta saga, no puedes repetirla.", "Close")
        else
            player:setStorageValue(8000, 1)
            openNpcDialog(player, Npc():getId(), "! Can you help me? Ueeeee ueee", "Close")
        end
    elseif msg:lower() == "Close" then
        closeNpcDialog(player)
        npcHandler:unGreet(cid)
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())
