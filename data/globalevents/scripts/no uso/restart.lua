local globalEvent = 0
local function globalSave(minutes)
	if minutes <= 0 then
			doSetGameState(GAMESTATE_SHUTDOWN)
os.exit(0)
		return true
	end
	if minutes == 1 then
		addEvent(doSaveServer, 59000) -- 59 segundos
		doBroadcastMessage("Global server save in " .. minutes .. " minute, please go to safe zone and logout. The save will not be longer than 1 minute.")
	elseif minutes <= 3 then
		doBroadcastMessage("Global server save in " .. minutes .. " minutes, please go to safe zone. The save will not be longer than 1 minute.")
	else
		doBroadcastMessage("Global server save in " .. minutes .. " minutes, please go to safe zone. The save will not be longer than 1 minute.")
	end
	globalEvent = addEvent(globalSave, 60000, minutes - 1)
	return true
end
function onTime(interval, lastExecution)
	setGlobalStorageValue(48572, 1)
	return globalSave(math.abs(math.ceil(5)))
end