local config = {
    [9966] = {
    position = {x = 70, y = 902, z = 7}
  },





  effect = 10,
  message = "" ,
  msg = "you need not have pz to use"
}

function onUse(cid, item, frompos, item2, topos)
local aidTable = config[item.actionid]
     if isPlayerPzLocked(cid) then
	  doPlayerSendTextMessage(cid, 25, config.msg)
    elseif doTeleportThing(cid, aidTable.position) then
      doPlayerSendTextMessage(cid, 25, config.message)
      doSendMagicEffect(getCreaturePosition(cid), config.effect)
    end
  return true
end