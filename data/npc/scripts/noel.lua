local keywordHandler = KeywordHandler:new()   
local npcHandler = NpcHandler:new(keywordHandler)   
NpcSystem.parseParameters(npcHandler)   
   
function onCreatureAppear(cid)          npcHandler:onCreatureAppear(cid)        end   
function onCreatureDisappear(cid)       npcHandler:onCreatureDisappear(cid)     end   
function onCreatureSay(cid, type, msg)          npcHandler:onCreatureSay(cid, type, msg)        end   
function onThink()              npcHandler:onThink()                    end   
 

		function GSS(cid, message, keywords, parameters, node)   
        if(not npcHandler:isFocused(cid)) then   
        return false   
        end
        if getPlayerStorageValue(cid, 51902) <= 0 then
		if getPlayerStorageValue(cid, 34234) == 4 and getPlayerStorageValue(cid, 34235) == 4 and getPlayerStorageValue(cid, 34236) == 4 and getPlayerStorageValue(cid, 34237) == 4 and getPlayerStorageValue(cid, 34238) == 4 and getPlayerStorageValue(cid, 34239) == 4 then
		if getPlayerLevel(cid) >= 1 then 
        
                         
                                npcHandler:say('Oh amiguinho! Voce achou todos! Pegue seu presentinho e Feliz Natal HO HO HO!', cid)   
                                 doPlayerAddItem(cid,7492,1) 
                                setPlayerStorageValue(cid, 51902, 4)
                        end   
        else   
                npcHandler:say('Obrigado amiguinho! aguardo a sua ajuda, ainda faltam ajudantes ou renas!', cid)   
                end 
        else
                npcHandler:say('Obrigado novamente pela ajuda!.', cid)
        end
		
end

		keywordHandler:addKeyword({'nothen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Hello, Do you wanna change magic key to {strong scroll}?.'})
 
local node1 = keywordHandler:addKeyword({'ajudar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Verdade? Eu nao consigo encontar meus 3 ajudantes e minhas 3 renas.. Voce me ajuda entao?'})   
    node1:addChildKeyword({'yes'}, GSS, {npcHandler = npcHandler, onlyFocus = true, reset = true})   
    node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Come back when you want.', reset = true})
        
        npcHandler:addModule(FocusModule:new())