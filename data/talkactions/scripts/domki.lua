local id_miast = {1}
function onSay(cid, words, param, channel)
for i = 1, #id_miast do
    local id = getTownHouses(id_miast[i])
    for v = 1, #id do
        if getHouseOwner(id[v]) == 0 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Domek '..getHouseName(id[v])..' z miasta '..getTownName(getHouseTown(id[v]))..' o powierzchni '..getHouseTilesCount(id[v])..'sqm jest wolny.')
            return doTeleportThing(cid, getHouseEntry(id[v]))
        else
            if v == #id then
                return doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Wszystkie domki są zajęte.'), doTeleportThing(cid, frompos)
            end
        end
    end
end

	return true
end
