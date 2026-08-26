function onSay(cid, words, param)
  --[Vocation] = ( Nova Vocation, New Outfit )
  local config = {
-- Goku --
[220] = { 1685},
-- Onoki --
[600] = { 1686},
-- Ainz Gown --
[500] = { 1688},
-- Zaraki --
[360] = { 1687},
-- Bills --
[520] = { 1556},
-- Tobirama --
[440] = { 1506},
-- Obito --
[400] = { 1689},
-- Tsunade --
[580] = { 1690},
-- Itachi --
[370] = { 1691},
-- Grimmjow --
[510] = { 1692},
-- Natsu --
[470] = { 1693},
-- Elizabeth --
[460] = { 1694},
-- Goku Anjo --
[420] = { 1695},
-- Merlin --
[550] = { 1696},
-- Android 21 --
[560] = { 1697},
-- Ace --
[570] = { 1698},
-- Gon --
[381] = { 1699},
-- Meliodas --
[240] = { 1700},
-- Barba Branca --
[320] = { 1701},
-- Ulquiorra --
[430] = { 1702},
-- Seiya --
[615] = { 1703},
-- Zeldris --
[535] = { 1704},
-- Fu --
[350] = { 1705},
-- Ichigo --
[250] = { 1555},
-- Madara --
[480] = { 1706},
-- Kakashi --
[630] = { 1717},
-- Luffy --
[650] = { 1724},
-- Allen Walker --
[310] = { 1725},
-- Dio --
[660] = { 1731},
}
    local tempo = 1 -- em segundos
   
    local voc = config[getPlayerVocation(cid)]
    local level = 0
    if not voc then return true end
    local outfit = {lookType = voc[1]}
    if getPlayerLevel(cid) >= level then
        if getPlayerStorageValue(cid,30028) == 4 then
            if getPlayerStorageValue(cid, 1240) <= os.time() then
                doCreatureChangeOutfit(cid, outfit)
                doPlayerSendTextMessage(cid, 27, "Voce se Tornou Akatsuki")
                setPlayerStorageValue(cid,1240,os.time()+tempo)
            else
                doPlayerSendTextMessage(cid, 27, "Você deve esperar "..tempo.." segundos para usar o comando novamente.")
            end
        else
            doPlayerSendTextMessage(cid, 27, "Voce nao e Membro Akatsuki! ..")
        end
    else
        doPlayerSendTextMessage(cid, 27, "Você precisa de level "..level.." para evoluir.")
    end
    return true
end