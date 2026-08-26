-- CONFIGURAÇÕES --
PR = {7407, 14103, 14299, 7450} -- ID dos itens que será sorteado.
money = {13815, 'Barra De Ferro'} -- ID do crystal coin e nome.
count = 10 -- Quantidade de dinheiro.
cast = "[Alavanca Magica]" 
function onUse(cid, item, fromPosition, itemEx, toPosition)
local roleta = math.random(1, #PR)
local CB = {
doSendAnimatedText, doSendMagicEffect,
doPlayerAddItem, doPlayerRemoveItem
}
if not CB[4](cid, money[1], count) then
    doPlayerSendCancel(cid, "Voce precisa de "..count.." "..money[2].." pra usar a alavanca magica.")
                       CB[2](getThingPos(cid), CONST_ME_POFF)
else
CB[2](getThingPos(cid), 14)
             if(roleta == 1) then
                             CB[3](cid, PR[1], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[1])..".", 22)
             elseif(roleta == 2) then
                             CB[3](cid, PR[2], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[2])..".", 22)              
             elseif(roleta == 3) then
                             CB[3](cid, PR[3], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[3])..".", 22)            
             elseif(roleta == 4) then
                             CB[3](cid, PR[4], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[4])..".", 22)              
             elseif(roleta == 5) then
                             CB[3](cid, PR[5], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[5])..".", 22)
 elseif(roleta == 6) then
                             CB[3](cid, PR[6], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[6])..".", 22)
elseif(roleta == 7) then
                             CB[3](cid, PR[7], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[7])..".", 22)
elseif(roleta == 8) then
                             CB[3](cid, PR[8], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[8])..".", 22)
elseif(roleta == 9) then
                             CB[3](cid, PR[9], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[9])..".", 22)
elseif(roleta == 10) then
                             CB[3](cid, PR[10], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[10])..".", 22)
elseif(roleta == 11) then
                             CB[3](cid, PR[11], 1)
doBroadcastMessage(""..cast.." "..getCreatureName(cid).." usou a alavanca magica e ganhou 1 "..getItemNameById(PR[11])..".", 22)

end
end
return TRUE
end