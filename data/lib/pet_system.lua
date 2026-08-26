PetSystem = {
	storage_level = "PetLevel", -- n�o mexa
	storage_health = "PetHealth", -- n�o mexa
	storage_cooldown = "PetCooldown", -- n�o mexa

	damage_percent_gain = 2, -- ganho de porcentagem de dano por level
	health_percent_gain = 2, -- ganho de porcentagem de vida por level

	pets = {
		--[id do item invocador]
		[8577] = {
			name = "Red Gyarados", -- nome do pet (mesmo do XML)
			base_health = 15000, -- vida base do pet
			base_attack = 50000, -- ataque base do pet
			death_cooldown = 60 -- cooldown para usar de novo apos morrer
		}
	}
}

do
	PetSystem.petIndex = {}
	for itemId, t in pairs(PetSystem.pets) do
		PetSystem.petIndex[t.name] = {itemId = itemId, t = t}
	end
end

function PetSystem:getPetInfoByItemId(itemId)
	return self.pets[itemId]
end

function PetSystem:getPetInfoByMonsterId(mid)
	return self.petIndex[getCreatureName(mid)]
end

function PetSystem:getPetLevelByItem(item)
	return math.max(1, tonumber(getItemAttribute(item.uid, self.storage_level)) or 0)
end

function PetSystem:getPetLevelByMonsterId(mid)
	return math.max(1, tonumber(getCreatureStorage(mid, self.storage_level)) or 0)
end

function PetSystem:setPetItemLevel(item, level)
	doItemSetAttribute(item.uid, self.storage_level, level)
	doItemSetAttribute(item.uid, "description", "Level do pet: " .. level .. ".")
end

function PetSystem:hasPet(pid)
	local summons = getCreatureSummons(pid)
	for i = 1, #summons do
		if (self.petIndex[getCreatureName(summons[i])]) then
			return true
		end
	end
	return false
end

function PetSystem:removePet(pid)
	local summons = getCreatureSummons(pid)
	for i = 1, #summons do
		local summon = summons[i]
		local petInfo = self.petIndex[getCreatureName(summon)]
		if (petInfo) then
			local master = getCreatureMaster(summon)
			if (master and isPlayer(master)) then
				local slotItem = getPlayerSlotItem(master, CONST_SLOT_AMMO)
				if (slotItem.itemid == petInfo.itemId) then
					local health = getCreatureHealth(summon)
					if (health >= getCreatureMaxHealth(summon)) then
						doItemEraseAttribute(slotItem.uid, self.storage_health)
					else
						doItemSetAttribute(slotItem.uid, self.storage_health, getCreatureHealth(summon))
					end
				end
			end

			doSendMagicEffect(getThingPosition(summon), CONST_ME_TELEPORT)
			doRemoveCreature(summon)
			break
		end
	end
end

function PetSystem:canSummonPet(pid)
	if (self:hasPet(pid)) then
		return false
	end

	local tileInfo = getTileInfo(getThingPosition(pid))
	return tileInfo and not tileInfo.protection
end

function PetSystem:summonPet(pid, item)
	local petInfo = self.pets[item.itemid]
	if (not petInfo) then
		return false
	end

	local petLevel = self:getPetLevelByItem(item)
	local maxHealth = math.floor(petInfo.base_health + (petInfo.base_health * ((petLevel - 1) * self.health_percent_gain / 100)))
	local health = math.max(1, math.min(maxHealth, tonumber(getItemAttribute(item.uid, self.storage_health)) or maxHealth))

	local position = getThingPosition(pid)
	local pet = doCreateMonster(petInfo.name, position, false, false)
	if (not tonumber(pet)) then
		pet = doCreateMonster(petInfo.name, position, false, true)
	end

	doConvinceCreature(pid, pet)
	setCreatureMaxHealth(pet, maxHealth)
	doCreatureAddHealth(pet, health - getCreatureHealth(pet), 65535, 256)
	doCreatureSetStorage(pet, self.storage_level, petLevel)
	doCreatureSetStorage(pet, self.storage_health, health)
	registerCreatureEvent(pet, "PetSystemPrepareDeath")
	doSendMagicEffect(getThingPosition(pet), CONST_ME_TELEPORT)
	return true
end
