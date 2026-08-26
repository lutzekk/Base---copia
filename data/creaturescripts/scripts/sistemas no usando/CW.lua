function onDeath(cid, corpse, lastHitKiller, mostDamageKiller)
local killer = lastHitKiller[1]
 if isPlayer(killer) and (getCreatureName(cid) == "Gran Tower") then
  if (getGlobalStorageValue(COH_STATUS) ~= getPlayerGuildName(cid)) then
	
     if getPlayerGuildId(killer) >= 1 then


     setGlobalStorageValue(COH_STATUS, getCreatureName(killer))
     doBroadcastMessage("[Gran Tower] The Gran Aura is with "..getCreatureName(killer)..", run to destroy the Grand Tower and take it.")
   
   end
 end
 return true
end