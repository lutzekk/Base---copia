function onSay(cid, words, param)
  --[Vocation] = ( Nova Vocation, New Outfit )
  local config = {
    -- Temari Ultimate Akatsuki ---
    [760] = {1354},
    [761] = {1354},
    [762] = {1354},
    [763] = {1354},
    [764] = {1354},
    [765] = {1354},
    [766] = {1354},
    [767] = {1354},
    [768] = {1354},
    [769] = {1354},
    [770] = {1354},
    [771] = {1354},
    [772] = {1354}
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
        if getPlayerStorageValue(cid,24578) == 1 then
            if getPlayerStorageValue(cid, 1240) <= os.time() then
                doCreatureChangeOutfit(cid, outfit)
                doPlayerSendTextMessage(cid, 27, "Voce Adicionou a Temari Ultimate Akatsuki")
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