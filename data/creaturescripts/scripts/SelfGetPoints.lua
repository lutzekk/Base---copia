function onLogin(cid)
if isPlayer(cid) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your Account has " .. getAccountPoints(cid) .. " premium points.")
end
return TRUE
end