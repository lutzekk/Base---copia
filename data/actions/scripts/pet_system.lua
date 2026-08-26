local cfg = {
	count_attribute = "PetStoneCount", -- atributo da contagem
	stone_id = 8310, -- id da stone
	upgrades = {
		--[level] = quantidade de stones usadas necessaria
		[2] = 1,
		[3] = 2,
		[4] = 4,
		[5] = 6,
		[6] = 8,
		[7] = 10,
		[8] = 12,
		[9] = 14,
		[10] = 16,
		[11] = 18,
		[12] = 20,
		[13] = 22,
		[14] = 24,
		[15] = 26,
		[16] = 28,
		[17] = 30,
		[18] = 32,
		[19] = 34,
		[20] = 36,
		--etc...
	}
}

local cooldownHandler = {}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (item.itemid == cfg.stone_id) then
		local petInfo = PetSystem:getPetInfoByItemId(itemEx.itemid)
		if (not petInfo) then
			doPlayerSendCancel(cid, "Você só pode usar isso em items de pet.")
			doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
			return true
		end

		if (PetSystem:hasPet(cid)) then
			doPlayerSendCancel(cid, "Você precisa chamar seu pet de volta.")
			doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
			return true
		end

		local petLevel = PetSystem:getPetLevelByItem(itemEx)
		local nextLevelCount = cfg.upgrades[petLevel + 1]
		if (not nextLevelCount) then
			doPlayerSendCancel(cid, "Seu pet já está no nível máximo.")
			doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
			return true
		end

		doRemoveItem(item.uid, 1)
		local stoneCount = math.max(0, tonumber(getItemAttribute(itemEx.uid, cfg.count_attribute)) or 0) + 1
		if (stoneCount >= nextLevelCount) then
			petLevel = petLevel + 1
			PetSystem:setPetItemLevel(itemEx, petLevel)
			doItemEraseAttribute(itemEx.uid, cfg.count_attribute)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Você aumentou o nível do seu pet para " .. petLevel .. ".")
		else
			doItemSetAttribute(itemEx.uid, cfg.count_attribute, stoneCount)
			nextLevelCount = nextLevelCount - stoneCount
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Faltam " .. nextLevelCount .. " stone" .. (nextLevelCount > 1 and "s" or "") .. " para aumentar seu pet de nível.")
		end

		doSendMagicEffect(getThingPosition(cid), CONST_ME_MAGIC_BLUE)
		return true
	end

	local petInfo = PetSystem:getPetInfoByItemId(item.itemid)
	if (not petInfo) then
		return true
	end

	local guid = getPlayerGUID(cid)
	local timeNow = os.time()
	if (cooldownHandler[guid] and cooldownHandler[guid] >= timeNow) then
		doPlayerSendCancel(cid, "Aguarde um momento.")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
		return true
	end

	local remainingTime = (tonumber(getCreatureStorage(cid, PetSystem.storage_cooldown)) or 0) - timeNow
	if (remainingTime > 0) then
		doPlayerSendCancel(cid, "Aguarde o cooldown [" .. remainingTime .. "s].")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
		return true
	end

	if (fromPosition.x ~= 65535 or fromPosition.y ~= CONST_SLOT_AMMO) then
		doPlayerSendCancel(cid, "Para usar o pet é necessário equipa-lo no slot de ammo.")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
		return true
	end

	if (PetSystem:hasPet(cid)) then
		cooldownHandler[guid] = timeNow + 2 -- cooldown de 2 segundos para usar o pet
		PetSystem:removePet(cid)
	elseif (PetSystem:canSummonPet(cid)) then
		PetSystem:summonPet(cid, item)
	else
		doPlayerSendCancel(cid, "Você não pode invocar o pet aqui.")
		doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
	end
	return true
end
