function onDeath(cid, corpse, lastHitKiller, mostDamageKiller)
local killer = lastHitKiller[1]
 if isPlayer(killer) and (getCreatureName(cid) == "Gran Tower") then
    if (getGlobalStorageValue(GRANTOWER.FINALWINNER) ~= getCreatureName(killer)) then
     if getPlayerGuildId(killer) >= 1 then
      for index, creature in ipairs(getGranTowerPlayers()) do
       if getPlayerGuildId(creature) ~= getPlayerGuildId(killer) then
        doTeleportThing(creature, getTownTemplePosition(getPlayerTown(creature)), true)
		end
      end
     else
      for index, creature in ipairs(getGranTowerPlayers()) do
       if getPlayerStorageValue(creature, GRANTOWER.AURA) ~= -1 then
        doTeleportThing(creature, getTownTemplePosition(getPlayerTown(creature)), true)
       end              
      end
     end
     if (getPlayerGuildId(killer) >= 1) then
      setGlobalStorageValue(GRANTOWER.SAVEWINNERGUILDID, getPlayerGuildId(killer))
      for index, creature in ipairs(getGranTowerGuild(getPlayerGuildId(killer))) do
       setPlayerStorageValue(creature, GRANTOWER.AURA, 1)
      end
     end
     setPlayerStorageValue(killer, GRANTOWER.AURA, 1)
     addEvent(changeOutfit, 0, killer)
     setGlobalStorageValue(GRANTOWER.SAVELASTWINNER, getCreatureName(killer))
     addEvent(doCreateMonster, 2 * 1000, "Gran Tower", GRANTOWER.TOWERPOSITION)
     setGlobalStorageValue(GRANTOWER.FINALWINNER, getCreatureName(killer))
     setGlobalStorageValue(GRANTOWER.DESTROYCOUNT, (getGlobalStorageValue(GRANTOWER.DESTROYCOUNT) + 1))
     doBroadcastMessage("[Gran Tower] The Gran Aura is with "..getCreatureName(killer)..", run to destroy the Grand Tower and take it.")
    end
 end
 return true
end

function onTarget(cid, target)
 if isPlayer(cid) and isMonster(target) and (getCreatureName(target) == "Gran Tower") then
    if (getGlobalStorageValue(GRANTOWER.FINALWINNER) == getCreatureName(cid)) then
     doPlayerSendCancel(cid, "Você não pode atacar o Gran Tower, proteja ele!")
     return false
    end
 end
 return true
end

function onStatsChange(cid, attacker, type, combat, value)
 if (type == STATSCHANGE_HEALTHLOSS) and isMonster(cid) and isPlayer(attacker) and (getCreatureName(cid) == "Gran Tower") then
     if (getGlobalStorageValue(GRANTOWER.FINALWINNER) == getCreatureName(attacker)) then
      return false
     end
  end
 return true
end