local config = {
    [9952] = {
    position = {x = 23, y = 904, z = 15}
  },
      [9953] = {
    position = {x = 23, y = 904, z = 14}
  },
      [9954] = {
    position = {x = 23, y = 904, z = 13}
  },
      [9955] = {
    position = {x = 23, y = 904, z = 12}
  },
      [9956] = {
    position = {x = 23, y = 904, z = 11}
  },
      [9957] = {
    position = {x = 23, y = 904, z = 10}
  },
      [9958] = {
    position = {x = 23, y = 904, z = 9}
  },
      [9959] = {
    position = {x = 23, y = 904, z = 8}
  },
      [9960] = {
    position = {x = 23, y = 904, z = 7}
  },
      [9961] = {
    position = {x = 23, y = 904, z = 6}
  },
      [9962] = {
    position = {x = 23, y = 904, z = 5}
  },
      [9963] = {
    position = {x = 23, y = 904, z = 4}
  },
      [9964] = {
    position = {x = 23, y = 904, z = 3}
  },
      [9965] = {
    position = {x = 23, y = 904, z = 2}
  },





  effect = 10,
  message = "" 
}

function onStepIn(cid, item, position, fromPosition)
local aidTable = config[item.actionid]
    if doTeleportThing(cid, aidTable.position) then
      doPlayerSendTextMessage(cid, 25, config.message)
      doSendMagicEffect(getCreaturePosition(cid), config.effect)
    end
  return true
end