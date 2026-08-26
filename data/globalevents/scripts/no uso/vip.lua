  function onThink(interval, lastExecution)
   for _, name in ipairs(getOnlinePlayers()) do
   local cid = getPlayerByName(name)
   if getPlayerPremiumDays(cid) >= 1 then

   doSendAnimatedText(getPlayerPosition(cid), "[~VIP~]", TEXTCOLOR_YELLOW)
   end
   end
   return true
   end 