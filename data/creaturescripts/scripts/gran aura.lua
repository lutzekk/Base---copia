local events = {}
function onLogin(cid) 
 if (getPlayerStorageValue(cid, GRANTOWER.AURA) ~= -1) then
  if getGlobalStorageValue(GRANTOWER.SAVELASTWINNER) ~= getCreatureName(cid) then
   if (getPlayerGuildId(cid) ~= getGlobalStorageValue(GRANTOWER.SAVEWINNERGUILDID)) then
    setPlayerStorageValue(cid, GRANTOWER.AURA, -1)
   end
  end
  local event = addEvent(function()
	 if isCreature(cid) then
	 changeOutfit(cid)
	 end
 end, 0)
  events[cid] = event
 end 
 return true
end
 
function onLogout(cid) 
 if (getGlobalStorageValue(GRANTOWER.FINALWINNER) == getCreatureName(cid)) then
  doPlayerSendCancel(cid, "You cannot logout while Gran Tower is running.")
  return false
 end
 if events[cid] then
  stopEvent(events[cid])
 end
 return true
end

function onStatsChange(cid, attacker, type, combat, value)
	if isPlayer(cid) and isCreature(attacker) and (not (attacker == cid)) and (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) then
		if getGlobalStorageValue(GRANTOWER.SAVELASTWINNER) ~= getCreatureName(cid) and getGlobalStorageValue(GRANTOWER.SAVEWINNERGUILDID) ~= getPlayerGuildId(cid) then
				return true
		end
		
		value = value - (math.ceil(value*(GRANTOWER.AURAPERCENT)))
		doTargetCombatHealth(cid, attacker, type, -value, -value, 255)
		doCreatureAddHealth(cid, value)
		return true
	end
return true
end