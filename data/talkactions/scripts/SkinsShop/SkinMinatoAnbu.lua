function onSay(cid, words, param)
  --[Vocation] = ( Nova Vocation, New Outfit )
  local config = {
    -- Minato Anbu ---
    [161] = {886}
  }
    local tempo = 1 -- em segundos
   
    local voc = config[getPlayerVocation(cid)]
    local level = 0
    if not voc then return true end
	if BlockRunesInArea(cid) then
doPlayerSendCancel(cid, "Voce nao pode mudar de Skin dentro do Evento") return false
end
local outfit = {lookType = voc[1]}
    if getPlayerLevel(cid) >= level then
        if getPlayerStorageValue(cid,24583) == 1 then
            if getPlayerStorageValue(cid, 1240) <= os.time() then
                doCreatureChangeOutfit(cid, outfit)
                doPlayerSendTextMessage(cid, 27, "Voce Adicionou a Skin Minato Anbu")
                setPlayerStorageValue(cid,1240,os.time()+tempo)
            else
                doPlayerSendTextMessage(cid, 27, "Você deve esperar "..tempo.." segundos para usar o comando novamente.")
            end
        else
            doPlayerSendTextMessage(cid, 27, "Voce nao possui essa Skin ! ..")
        end
    else
        doPlayerSendTextMessage(cid, 27, "Você precisa de level "..level.." para evoluir.")
    end
    return true
end