function onLogin(cid)
	registerCreatureEvent(cid, "PetSystemDeath")
	registerCreatureEvent(cid, "PetSystemThrow")
	registerCreatureEvent(cid, "PetSystemTradeRequest")
	registerCreatureEvent(cid, "PetSystemTradeAccept")
	return true
end

function onLogout(cid)
	PetSystem:removePet(cid)
	return true
end

function onDeath(cid, corpse, deathList)
	PetSystem:removePet(cid)
	return true
end

function onThrow(cid, item, fromPosition, toPosition)
	if ((((fromPosition.x == 65535 and fromPosition.y == CONST_SLOT_AMMO) and PetSystem:getPetInfoByItemId(item.itemid))
		or ((toPosition.x == 65535 and toPosition.y == CONST_SLOT_AMMO) and PetSystem:getPetInfoByItemId(getPlayerSlotItem(cid, CONST_SLOT_AMMO).itemid)))
		and PetSystem:hasPet(cid)) then
		doPlayerSendCancel(cid, "Você não pode remover esse item enquanto o pet estiver no mapa.")
		return false
	end
	return true
end

function onPrepareDeath(cid, deathList)
	local petInfo = PetSystem:getPetInfoByMonsterId(cid)
	if (not petInfo) then
		return true
	end

	local master = getCreatureMaster(cid)
	if (master and isPlayer(master)) then
		if (petInfo.t.death_cooldown > 0) then
			doCreatureSetStorage(master, PetSystem.storage_cooldown, os.time() + petInfo.t.death_cooldown)
			doPlayerSendTextMessage(master, MESSAGE_EVENT_ADVANCE, "Seu pet morreu, você poderá chama-lo novamente em " .. petInfo.t.death_cooldown .. " segundo" .. (petInfo.t.death_cooldown > 1 and "s." or "."))
		else
			doPlayerSendTextMessage(master, MESSAGE_EVENT_ADVANCE, "Seu pet morreu.")
		end

		local slotItem = getPlayerSlotItem(master, CONST_SLOT_AMMO)
		if (slotItem.itemid == petInfo.itemId) then
			doItemEraseAttribute(slotItem.uid, PetSystem.storage_health)
		end
	end
	return true
end

function onTradeRequest(cid, target, item)
	if (PetSystem:hasPet(cid)) then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Você não pode fazer trade enquanto estiver com o pet.")
		return false
	end
	return true
end

function onTradeAccept(cid, target, item, targetItem)
	if (PetSystem:hasPet(cid)) then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Você não pode fazer trade enquanto estiver com o pet.")
		return false
	end
	return true
end
