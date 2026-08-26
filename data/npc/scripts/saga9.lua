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

    if player:getStorageValue(8000) == 28 then --este storage es el que necesitas para que te pueda hablar
                                            -- seria el storage 28
        openNpcDialog(player, Npc():getId(),
            "Mys name is Trunks, im from the future, two androids will attack the earth, you have to defeat them.",
            "Close&Yes" -- aca es la opcion de ayudar 
        )
    else
        openNpcDialog(player, Npc():getId(),
            "Sorry, you can't do this saga yet.",
            "Close"
        )
    end

    return true
end

-- Manejo de botón de respuesta
function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    if not player then return false end

    msg = msg:lower()

    if msg == "yes" then
        if player:getStorageValue(8000) == 28 then -- aca seria el mismo storage de arriba
            player:setStorageValue(8000, 29) -- y este es cuando le das yes te dara el
            openNpcDialog(player, Npc():getId(), "Thank you! Be careful out there...", "Close")
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
