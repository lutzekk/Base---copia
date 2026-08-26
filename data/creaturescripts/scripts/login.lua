function onLogin(player)

	



	
	local serverName = configManager.getString(configKeys.SERVER_NAME)
	local loginStr = "Welcome to " .. serverName .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit in %s: %s.", serverName, os.date("%d %b %Y %X", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(PlayerStorageKeys.promotion)
		if value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
	player:registerEvent("SpellbarOpcode")

	player:registerEvent("saga")
	player:registerEvent("ModalWindowHelper")
	player:registerEvent("stat_system_healthchange")
	player:registerEvent("stat_system_magic")
	player:registerEvent("stat_system_advance")
	player:registerEvent("stat_system_modal")
	player:registerEvent("boss")
	player:registerEvent("defense")
	player:registerEvent("rewardcraft")
	player:registerEvent("CheckSkills")
	player:registerEvent("mision")
	player:registerEvent("rewardss")
	player:registerEvent("travel")
	player:registerEvent("gate")
	player:registerEvent("gates")
	player:registerEvent("AutoLoot")
	player:registerEvent("PassReceive")
	player:registerEvent("PassKill")
		player:registerEvent("PassKill")

	resetPass(player)
	resetMonsters(cid) -- Llamar a la función de reinicio





	--player:registerEvent("CraftingExtended")

	


		-- Resetar Quando Chegar a Hora --
		--resetPass(cid)
	--
   


	return true
end
