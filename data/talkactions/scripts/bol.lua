local tempo = 30
local storage = 94360

function onSay(cid, words, param)
   if doPlayerRemoveMoney(cid, 50000) then
      doPlayerAddItem(cid, 12757, 1)
      doSendMagicEffect(getThingPos(cid),13)
      doCreatureSay(cid, "NDBO HUNTER - Voce comprou um BOL!", TALKTYPE_ORANGE_1)
      setPlayerStorageValue(cid, storage, os.time()+exhaust)
   else
      doPlayerSendCancel(cid, "NDBO HUNTER - Você não tem dinheiro suficiente para comprar uma BOL.")
      doSendMagicEffect(getThingPos(cid), 2)
      doPlayerSendCancel(cid, "Voce so pode usar o comando daqui a "..exhaust.." segundos")
   end
  return true
end