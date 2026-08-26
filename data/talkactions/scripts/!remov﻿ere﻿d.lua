function onSay(cid, words, param, channel)
if getCreatureSkullType(cid)==4 then
if not(doPlayerRemoveMoney(cid, 5*1000*1000*100)) then
doPlayerSendCancel(cid, "You dont have enough money.")
else
doCreatureSetSkullType(cid, 0)
end
else
doPlayerSendCancel(cid, "You dont have red skull.")
end
end