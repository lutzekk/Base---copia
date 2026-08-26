local eff_config = {
						[63] = {msg = '[GOD]', cor = 'random'}, --[group id] = {msg = 'MENSSAGEM', cor = cor que quer ou 'random' para aleatorio}
						[5] = {msg = '[CM]', cor = 'random'},
						[4] = {msg = '[GM]', cor = 'random'},
						[3] = {msg = '[STUTOR]', cor = 'random'},
						[2] = {msg = '[TUTOR]', cor = 'random'}

}

function group_effect(cid)
	if isCreature(cid) then
		local t = eff_config[getPlayerGroupId(cid)]
		t.cor = type(t.cor) == 'string' and math.random(1,255) or t.cor
		doSendAnimatedText(getThingPos(cid), t.msg, t.cor)
		addEvent(group_effect,2000,cid)
	end
end

local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
registerCreatureEvent(cid, "onPrepareDeathinifi")
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
									setPlayerStorageValue(cid, 30024, 0)
		end


	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	---------- Skin Shops ----------------	
		   registerCreatureEvent(cid, "SkinItachis")
		   registerCreatureEvent(cid, "SkinItachia")
		   registerCreatureEvent(cid, "SkinItachiu") 
		   registerCreatureEvent(cid, "SkinItachib") 
		   registerCreatureEvent(cid, "SkinItachit")
		   registerCreatureEvent(cid, "SkinTobiramaa")
		   registerCreatureEvent(cid, "SkinTobiramaak")
		   registerCreatureEvent(cid, "SkinTobiramau")
		   registerCreatureEvent(cid, "SkinTobiramaflash")		   
		   registerCreatureEvent(cid, "SkinTobiramakage")
		   registerCreatureEvent(cid, "SkinTobiramasennin")
		   registerCreatureEvent(cid, "SkinBillsak")
		   registerCreatureEvent(cid, "SkinBillsjoker")
		   registerCreatureEvent(cid, "SkinBillsmiste")	
           registerCreatureEvent(cid, "SkinBillszeno")
           registerCreatureEvent(cid, "SkinBillsultra")
           registerCreatureEvent(cid, "SkinBillswiper")		
           registerCreatureEvent(cid, "SkinIchigoak")
           registerCreatureEvent(cid, "SkinIchigoa")	
           registerCreatureEvent(cid, "SkinIchigoshi")	
           registerCreatureEvent(cid, "SkinIchigodeus")	
           registerCreatureEvent(cid, "SkinZeldrisak")		
           registerCreatureEvent(cid, "SkinZeldrisa")		   
    registerCreatureEvent(cid, "TopEffect")
	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "NoPartyAttack")
	registerCreatureEvent(cid, "TiraBattle")
	registerCreatureEvent(cid, "Idle")
	if(config.useFragHandler) then
		registerCreatureEvent(cid, "SkullCheck")
		registerCreatureEvent(cid, "Reward")
	end
	registerCreatureEvent(cid, "FullHpMana")
	registerCreatureEvent(cid, "showVoc") 
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "ZombieAttack")
	registerCreatureEvent(cid, "BlessCheck")
	registerCreatureEvent(cid, "advance")
	registerCreatureEvent(cid, "lvlup")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid,"Outfit")
	registerCreatureEvent(cid, "FragReward")
	registerCreatureEvent(cid, "Niwdeath")
    registerCreatureEvent(cid, "GodLight")	
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "LevelRecompense")
	registerCreatureEvent(cid, "BoasVindas")
	registerCreatureEvent(cid, "BroadDeath")
	registerCreatureEvent(cid, "SaveStamina")
	registerCreatureEvent(cid, "Vip")
	registerCreatureEvent(cid, "ExpVip")
	registerCreatureEvent(cid, "showVoc")
	registerCreatureEvent(cid, "reborn") if getPlayerStorageValue(cid, 19332) == -1 then setPlayerStorageValue(cid, 19332, 0) end
	registerCreatureEvent(cid, "reflector") if getPlayerStorageValue(cid, 3482101) == -1 then setPlayerStorageValue(cid, 3482101, 0) end
	registerCreatureEvent(cid, "vipeffects")

	
	--------- SHOP ---------
	registerCreatureEvent(cid, "RemovedorDeFrags")
	--------------- REFLECT ----------------
	registerCreatureEvent(cid, "Reflect")
	if getPlayerStorageValue(cid, 3482101) ~= 0 then
			setPlayerStorageValue(cid, 3482101, 0) 
	end

return true
end