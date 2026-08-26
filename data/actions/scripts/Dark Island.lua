function onUse(cid, item, fromPosition, itemEx, toPosition)

local config={
removeOnUse = "yes" -- remover quando usar ("yes" or "no")
}

local days = 7 -- coloque os dias que serão a VIP!
local daysvalue = days * 24 * 60 * 60
local storageplayer = getPlayerStorageValue(cid, 13502)
local timenow = os.time()

if getPlayerStorageValue(cid, 13502) - os.time() <= 0 then
time = timenow + daysvalue
else
time = storageplayer + daysvalue
end

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foram adicionados ".. days .." dias permissão no character.")
setPlayerStorageValue(cid, 13502, time)
local quantity = math.floor((getPlayerStorageValue(cid, 13502) - timenow)/(24 * 60 * 60))
doSendMagicEffect(getPlayerPosition(cid), math.random(144,144)) 
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. quantity .." dias de permissão restantes.")
if (config.removeOnUse == "yes") then
doRemoveItem(item.uid, 1)
end

return TRUE
end