local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function oracle(cid, message, keywords, parameters, node)
if(not npcHandler:isFocused(cid)) then
return false
end

if getGlobalStorageValue(24658) ~= 0 and getGlobalStorageValue(24659) ~= 0 and getGlobalStorageValue(24660) ~= 0 and getGlobalStorageValue(24661) ~= 0 and getGlobalStorageValue(24662) ~= 0 then -- ALTERAR Storage usado no Sistema, colocar sempre o mesmo
npcHandler:say("O Evento Esta Fechado.", cid)
else if getGlobalStorageValue(24659) ~= 0 and getGlobalStorageValue(24658) ~= 0 and getGlobalStorageValue(24660) ~= 0 and getGlobalStorageValue(24661) ~= 0 and getGlobalStorageValue(24662) ~= 0 then -- ALTERAR Storage usado no Sistema, colocar sempre o mesmo
npcHandler:say("O Evento Esta Fechado.", cid)
else if getGlobalStorageValue(24660) ~= 0 and getGlobalStorageValue(24658) ~= 0 and getGlobalStorageValue(24659) ~= 0 and getGlobalStorageValue(24661) ~= 0 and getGlobalStorageValue(24662) ~= 0 then -- ALTERAR Storage usado no Sistema, colocar sempre o mesmo
npcHandler:say("O Evento Esta Fechado.", cid)
else if getGlobalStorageValue(24661) ~= 0 and getGlobalStorageValue(24658) ~= 0 and getGlobalStorageValue(24659) ~= 0 and getGlobalStorageValue(24660) ~= 0 and getGlobalStorageValue(24662) ~= 0 then -- ALTERAR Storage usado no Sistema, colocar sempre o mesmo
npcHandler:say("O Evento Esta Fechado.", cid)
else if getGlobalStorageValue(24662) ~= 0 and getGlobalStorageValue(24658) ~= 0 and getGlobalStorageValue(24659) ~= 0 and getGlobalStorageValue(24660) ~= 0 and getGlobalStorageValue(24661) ~= 0 then -- ALTERAR Storage usado no Sistema, colocar sempre o mesmo
npcHandler:say("O Evento Esta Fechado.", cid)
return true
end
end
end
end
end
 if #getPlayersByIp(getPlayerIp(cid)) >= 2 then
                npcHandler:say("Desligue o MC para participar.", cid)
else if getPlayerLevel(cid) >= 120 and getPlayerLevel(cid) <= 199 and getGlobalStorageValue(24658) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=609,y=730,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
else if getPlayerLevel(cid) <= 119 then
npcHandler:say("Voce nao possui level suficiente.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 299 and getGlobalStorageValue(24659) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=609,y=730,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
else if getPlayerLevel(cid) <= 119 then
npcHandler:say("Voce nao possui level suficiente.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) >= 300 and getPlayerLevel(cid) <= 399 and getGlobalStorageValue(24660) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=609,y=730,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
else if getPlayerLevel(cid) <= 119 then
npcHandler:say("Voce nao possui level suficiente.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) >= 400 and getPlayerLevel(cid) <= 499 and getGlobalStorageValue(24661) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=609,y=730,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
else if getPlayerLevel(cid) <= 119 then
npcHandler:say("Voce nao possui level suficiente.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) >= 500 and getGlobalStorageValue(24662) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=609,y=730,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
else if getPlayerLevel(cid) <= 119 or getPlayerLevel(cid) >= 200 and getGlobalStorageValue(24658) == 0 then
npcHandler:say("Voce nao possui level indicado para participar dessa categoria.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) <= 199 or getPlayerLevel(cid) >= 300 and getGlobalStorageValue(24659) == 0 then
npcHandler:say("Voce nao possui level indicado para participar dessa categoria.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) <= 299 or getPlayerLevel(cid) >= 400 and getGlobalStorageValue(24660) == 0 then
npcHandler:say("Voce nao possui level indicado para participar dessa categoria.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) <= 399 or getPlayerLevel(cid) >= 500 and getGlobalStorageValue(24661) == 0 then
npcHandler:say("Voce nao possui level indicado para participar dessa categoria.", cid) -- ALTERAR frase caso o player não tenha 10k
else if getPlayerLevel(cid) <= 499 or getPlayerLevel(cid) >= 900 and getGlobalStorageValue(24662) == 0 then
npcHandler:say("Voce nao possui level indicado para participar dessa categoria.", cid) -- ALTERAR frase caso o player não tenha 10k
else
npcHandler:say("Voce nao possui 1 gold.", cid) -- ALTERAR frase caso o player não tenha 10k
return true
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end

return true
end

function oracle1(cid, message, keywords, parameters, node)
if(not npcHandler:isFocused(cid)) then
return false
end
npcHandler:say("Volte quando tiver 1 gold!", cid) -- ALTERAR frase caso o player diga No
return true
end



local node0 = keywordHandler:addKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce possue 1 gold para entrar no evento?({yes} ou {no})'}) -- ALTERAR segunda frase de interação
node0:addChildKeyword({'yes'}, oracle, {blessing = 1})
node0:addChildKeyword({'no'}, oracle1, {blessing = 1})

npcHandler:addModule(FocusModule:new())