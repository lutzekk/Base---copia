function onSay(cid, words, param)
  --[Vocation] = ( Nova Vocation, New Outfit )
  local config = {
    -- Obito Ultimate Akatsuki ---
    [460] = {1210},
    [461] = {1210},
    [462] = {1210},
    [463] = {1210},
    [464] = {1210},
    [465] = {1210},
    [466] = {1210},
    [467] = {1210},
    [468] = {1210},
    [469] = {1210},
    [470] = {1210},
    [471] = {1210},
	[472] = {1210},
    [473] = {1210}
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
        if getPlayerStorageValue(cid,24581) == 1 then
            if getPlayerStorageValue(cid, 1240) <= os.time() then
                doCreatureChangeOutfit(cid, outfit)
                doPlayerSendTextMessage(cid, 27, "Voce Adicionou a Skin Ultimate Akatsuki")
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