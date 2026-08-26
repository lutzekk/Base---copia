function onSay(cid, words, param, channel)
	if (getPlayerItemCount(cid, 7903) == 1) and (getPlayerItemCount(cid, 7884) == 1) and (getPlayerItemCount(cid, 7885) == 1) then
		if (getPlayerSlotItem(cid, CONST_SLOT_HEAD).itemid == 7903) and (getPlayerSlotItem(cid, CONST_SLOT_ARMOR).itemid == 7884) and (getPlayerSlotItem(cid, CONST_SLOT_LEGS).itemid == 7885) then
			if (getPlayerStorageValue(cid,325463) == 0) then
				doPlayerSetExperienceRate(cid, getConfigValue("rateExperience")+1.0)
				doSendMagicEffect(getCreaturePosition(cid), 87)
				doCreatureSay(cid, "Exp Bonus Ativada!", 19)
				setPlayerStorageValue(cid, 325463, 1)
			else
				doPlayerSendCancel(cid, "A exp bonus já foi ativada!")
			end
		else
			doPlayerSendCancel(cid, "Voce deve estar com o Majestose set equipado para receber a experiencia bonus.")
		end
	else
		doPlayerSendCancel(cid, "Voce não possui o Majestose set.")
	end
	return true
end
