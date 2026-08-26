local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)         end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)      end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end

function greetCallback(cid)
    local player = Player(cid)
    if not player then
        return true
    end
    openNpcDialog(player, Npc():getId(), "Olá jovem, vejo que você conseguiu chegar até aqui!\nClique em Recompensa e fique feliz pela conquista!", "Fechar&Recompensa")
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
    
    if msgcontains(msg:lower(), "recompensa") then
        local message = ""
        if player:getStorageValue(7000) == -1 then
            player:setStorageValue(7000, 1)
            player:addItem(2160, 1)
            message = "Você acaba de ganhar uns trocado por chegar até aqui.\nVolte sempre!"
        else
            message = "Você ja pegou sua recompensa, obrigado e volte sempre!"
        end    
        openNpcDialog(player, Npc():getId(), message, "Fechar")
    elseif msgcontains(msg:lower(), "fechar") then
        closeNpcDialog(player)
        npcHandler:unGreet(cid)    
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())