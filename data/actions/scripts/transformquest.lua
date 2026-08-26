function onUse(cid, item, frompos, item2, topos)
          spellName = "Super Transform" -- Nome da spell
          if getPlayerStorageValue(cid, 5432) <= 0 then
                    setPlayerStorageValue(cid, 5432, 1)
                    doPlayerSendTextMessage(cid, 20, "You received permission to use the ".. spellName ..".")
          else
                    doPlayerSendTextMessage(cid, 20, "You already have permission to use the ".. spellName ..".")
          end
          return TRUE
end