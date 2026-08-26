function onSay(cid, words, param, channel)
local split = param:explode(",")
local name, count = split[1], tonumber(split[2])
local points = getAccountPoints(cid)
pid = getPlayerByNameWildcard(name)
if (not pid or (isPlayerGhost(pid) and getPlayerGhostAccess(pid) > getPlayerGhostAccess(cid))) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " is not currently online.")
  return TRUE
end
if not(split[2]) then
  return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "The commands requires 2 parameters: character name, amount")
end
if not(count) then
  print(count)
  return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Numeric parameter required.")
end
if (points <= 0) then
  return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" .. getCreatureName(pid) .. "\'s Account has 0 premium points.")
end
doAccountRemovePoints(cid, count)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" .. count .. " premium points were deleted from " .. getCreatureName(pid) .. "\'s Account.")
return true
end