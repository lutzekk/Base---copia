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

 if #getPlayersByIp(getPlayerIp(cid)) >= 2 then
                npcHandler:say("Desligue o MC para participar.", cid)
else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 0 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=699,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 1)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 1 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=702,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 2)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 2 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=705,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 3)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 3 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=708,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 4)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 4 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=711,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 5)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 5 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=714,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 6)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 6 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=717,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 7)

else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) == 7 and doPlayerRemoveMoney(cid, 10000) == true then -- ALTERAR 10000, esse é o valor para entrar
doTeleportThing(cid, {x=720,y=726,z=14}) -- ALTERAR coordenada da sala de espera
npcHandler:say("Boa sorte!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera
setGlobalStorageValue(24699, 8)


else if getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) < 801 and getGlobalStorageValue(24699) >= 8 then -- ALTERAR 10000, esse é o valor para entrar

npcHandler:say("Evento esta fechado!.", cid) -- ALTERAR frase que o npc fala após entrar na sala de espera




else if getPlayerLevel(cid) < 250 or getPlayerLevel(cid) > 801 then
npcHandler:say("Voce nao possui level adequado.", cid) -- ALTERAR frase caso o player não tenha 10k

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