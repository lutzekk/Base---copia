function onSay(cid, words, param)
  --[Vocation] = ( Nova Vocation, New Outfit )
  local config = {
    -- Tsunade Akatsuki ---
    [548] = {1357},
    [549] = {1357},
    [550] = {1357},
    [551] = {1357},
    [552] = {1357},
    [553] = {1357},
    [554] = {1357},
    [555] = {1357},
    [556] = {1357},
    [557] = {1357},
    [558] = {1357},
    [560] = {1357},
    [561] = {1357},
    [562] = {1357}
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
        if getPlayerStorageValue(cid,24574) == 1 then
            if getPlayerStorageValue(cid, 1240) <= os.time() then
                doCreatureChangeOutfit(cid, outfit)
                doPlayerSendTextMessage(cid, 27, "Voce Adicionou a Skin Tsunade Akatsuki")
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