if not StatSystem then
	StatSystem = {}
end

StatSystem.config = {
	levels = {10000, 100000, 1000000, 2000000, 4000000},
	effects = {getPoints = CONST_ME_TELEPORT, addMana = CONST_ME_TELEPORT, addHealth = CONST_ME_TELEPORT, addAttack = CONST_ME_TELEPORT, addMagic, addDefense, addEnergy = CONST_ME_TELEPORT},
	message = "+1 Point",

	storages = {
		pointsBalance = 10000,
		healthPoints = 10001,
		manaPoints = 10002,
		attackPoints = 10003,
		magicPoints = 10004,
		defensePoints = 10005,
		energyPoints = 10006,
		nextLevel = 10007,
		addedHealth = 10008,
		addedMana = 10009,
		
	},
}

function StatSystem.onAdvanceLevel(player, oldLevel, newLevel)
	local nextLevel = player:getStorageValue(StatSystem.config.storages.nextLevel) == -1 and StatSystem.config.levels[1] or player:getStorageValue(StatSystem.config.storages.nextLevel)
	if nextLevel > StatSystem.config.levels[#StatSystem.config.levels] then
		return true
	end

	for index, level in ipairs(StatSystem.config.levels) do
		if newLevel >= level and newLevel >= nextLevel and level >= nextLevel then
			StatSystem.addPoints(player, 1)
			player:say(StatSystem.config.message, TALKTYPE_MONSTER_SAY)
			player:getPosition():sendMagicEffect(StatSystem.config.effects.getPoints)
			player:setStorageValue(StatSystem.config.storages.nextLevel, StatSystem.config.levels[index + 1] or StatSystem.config.levels[#StatSystem.config.levels] + 1)
		end
	end
	return true
end

function StatSystem.sendModalWindow(player)
	player:registerEvent("StatSystemModal")
	local modalwindow = ModalWindow(16556, "Stat System", "Welcome to stat system, your point balance is " .. math.max(0, player:getStorageValue(StatSystem.config.storages.pointsBalance)) .. ".")
	modalwindow:addChoice(0, "Add 1% Health")
	modalwindow:addChoice(1, "Add 1% Mana")
	modalwindow:addChoice(2, "Melee ATK: 0.3%")
	modalwindow:addChoice(3, "Ki ATK: 0.3%")
	modalwindow:addChoice(4, "Mele Def: 0.3%")
	modalwindow:addChoice(5, "Ki Def: 0.3%")
	modalwindow:addButton(0, "Confirm")
	modalwindow:addButton(1, "Reset")
	modalwindow:addButton(2, "Cancel")
	modalwindow:setDefaultEnterButton(0)
	modalwindow:setDefaultEscapeButton(2)
	modalwindow:sendToPlayer(player)
end
function StatSystem.answerModal(player, modalId, buttonId, choiceId)
	if modalId ~= 16556 then
		return true
	end

	if buttonId == 0 then
		if math.max(0, player:getStorageValue(StatSystem.config.storages.pointsBalance)) < 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have enough points.")
			return true
		end

		if choiceId == 0 then
			StatSystem.addPointToStat(player, "health", 1)
			StatSystem.addPoints(player, -1)
			local value = player:getMaxHealth() * 1 / 100
			player:setMaxHealth(player:getMaxHealth() + value)
			player:setStorageValue(StatSystem.config.storages.addedHealth, math.max(0, player:getStorageValue(StatSystem.config.storages.addedHealth)) + value)
			player:getPosition():sendMagicEffect(StatSystem.config.effects.addHealth)
		elseif choiceId == 1 then
			StatSystem.addPointToStat(player, "mana", 1)
			StatSystem.addPoints(player, -1)
			local value = player:getMaxMana() * 1 / 100
			player:setMaxMana(player:getMaxMana() + value)
			player:setStorageValue(StatSystem.config.storages.addedMana, math.max(0, player:getStorageValue(StatSystem.config.storages.addedMana)) + value)
			player:getPosition():sendMagicEffect(StatSystem.config.effects.addMana)
		elseif choiceId == 2 then
			StatSystem.addPointToStat(player, "attack", 1)
			StatSystem.addPoints(player, -1)
			player:getPosition():sendMagicEffect(StatSystem.config.effects.addAttack)
		elseif choiceId == 3 then
			StatSystem.addPointToStat(player, "magic", 1)  -- Corrección aquí
			StatSystem.addPoints(player, -1)
			player:getPosition():sendMagicEffect(StatSystem.config.effects.addMagic)  -- Corrección aquí
		elseif choiceId == 4 then
		StatSystem.addPointToStat(player, "defense", 1)  -- Corrección aquí
		StatSystem.addPoints(player, -1)
		player:getPosition():sendMagicEffect(StatSystem.config.effects.addDefense)  -- Corrección aquí
		elseif choiceId == 5 then
		StatSystem.addPointToStat(player, "energy", 1)  -- Corrección aquí
		StatSystem.addPoints(player, -1)
		player:getPosition():sendMagicEffect(StatSystem.config.effects.addEnergy)  -- Corrección aquí
		end
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You added one point to the chosen stat.")
	elseif buttonId == 1 then
		local spentPoints = math.max(0, player:getStorageValue(StatSystem.config.storages.healthPoints)) + math.max(0, player:getStorageValue(StatSystem.config.storages.manaPoints)) +  math.max(0, player:getStorageValue(StatSystem.config.storages.attackPoints)) +  math.max(0, player:getStorageValue(StatSystem.config.storages.magicPoints)) +  math.max(0, player:getStorageValue(StatSystem.config.storages.defensePoints)) +  math.max(0, player:getStorageValue(StatSystem.config.storages.energyPoints))
		if spentPoints > 0 then
			player:setMaxHealth(player:getMaxHealth() - math.max(0, player:getStorageValue(StatSystem.config.storages.addedHealth)))
			player:setMaxMana(player:getMaxMana() - math.max(0, player:getStorageValue(StatSystem.config.storages.addedMana)))
			player:setStorageValue(StatSystem.config.storages.addedHealth, 0)
			player:setStorageValue(StatSystem.config.storages.addedMana, 0)
			player:setStorageValue(StatSystem.config.storages.healthPoints, 0)
			player:setStorageValue(StatSystem.config.storages.manaPoints, 0)
			player:setStorageValue(StatSystem.config.storages.attackPoints, 0)
			player:setStorageValue(StatSystem.config.storages.magicPoints, 0)
			player:setStorageValue(StatSystem.config.storages.defensePoints, 0)
			player:setStorageValue(StatSystem.config.storages.energyPoints, 0)
			StatSystem.addPoints(player, spentPoints)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your stats were successfully reset, and your points were returned.")
		end
	end
	player:unregisterEvent("StatSystemModal")
	return true
end

function StatSystem.addPointToStat(player, statType, value)
	if statType == "health" then
		player:setStorageValue(StatSystem.config.storages.healthPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.healthPoints)) + value)
	elseif statType == "mana" then
		player:setStorageValue(StatSystem.config.storages.manaPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.manaPoints)) + value)
	elseif statType == "attack" then
		player:setStorageValue(StatSystem.config.storages.attackPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.attackPoints)) + value)
	elseif statType == "magic" then
		player:setStorageValue(StatSystem.config.storages.magicPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.magicPoints)) + value)
	elseif statType == "defense" then
	player:setStorageValue(StatSystem.config.storages.defensePoints, math.max(0, player:getStorageValue(StatSystem.config.storages.defensePoints)) + value)
	elseif statType == "energy" then
	player:setStorageValue(StatSystem.config.storages.energyPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.energyPoints)) + value)
	end
	return true
end

function StatSystem.removePointFromStat(player, statType, value)
	if statType == "health" then
		player:setStorageValue(StatSystem.config.storages.healthPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.healthPoints)) - value)
	elseif statType == "mana" then
		player:setStorageValue(StatSystem.config.storages.manaPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.manaPoints)) - value)
	elseif statType == "attack" then
		player:setStorageValue(StatSystem.config.storages.attackPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.attackPoints)) - value)
	elseif statType == "magic" then
		player:setStorageValue(StatSystem.config.storages.magicPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.magicPoints)) - value)
	elseif statType == "defense" then
	player:setStorageValue(StatSystem.config.storages.defensePoints, math.max(0, player:getStorageValue(StatSystem.config.storages.defensePoints)) - value)
elseif statType == "energy" then
	player:setStorageValue(StatSystem.config.storages.energyPoints, math.max(0, player:getStorageValue(StatSystem.config.storages.energyPoints)) - value)
	end
	return true
end

function StatSystem.addPoints(player, value)
	player:setStorageValue(StatSystem.config.storages.pointsBalance, math.max(0, player:getStorageValue(StatSystem.config.storages.pointsBalance)) + value)
	print(player:getStorageValue(StatSystem.config.storages.energyPoints))  -- Corrección aquí
	return true
end

-- aumento mele
function StatSystem.addAttackBonus(player, primary, secondary)
    local attackPoints = math.max(0, player:getStorageValue(StatSystem.config.storages.attackPoints))

    print("Antes del bucle - primary:", primary, "secondary:", secondary)

    for i = 1, attackPoints do
        primary = primary + (primary * 0.003)  
        secondary = secondary + (secondary * 0.003)  

        local damageAdded = primary + secondary
        print("Iteración", i, "- primary:", primary, "secondary:", secondary, "damageAdded:", damageAdded)
    end

    print("Después del bucle - primary:", primary, "secondary:", secondary)

    return primary, secondary
end

---------------------
--aumento magico
function StatSystem.addMagicBonus(player, primary, secondary)
    local magicPoints = math.max(0, player:getStorageValue(StatSystem.config.storages.magicPoints))

    print("Antes del bucle - primary:", primary, "secondary:", secondary)

    for i = 1, magicPoints do
        primary = primary + (primary * 0.003)  
        secondary = secondary + (secondary * 0.003)

        local damageAdded = primary + secondary
        print("Iteración", i, "- primary:", primary, "secondary:", secondary, "damageAdded:", damageAdded)
    end

    print("Después del bucle - primary:", primary, "secondary:", secondary)

    return primary, secondary
end

------ defense
function StatSystem.addDefenseBonus(player, primary, secondary)
    local defensePoints = math.max(0, player:getStorageValue(StatSystem.config.storages.defensePoints))

    if defensePoints > 0 then
        print("Antes del bucle de defensa - primary:", primary, "secondary:", secondary)
        primary = math.floor(primary * (1 - 0.003 * defensePoints))
        secondary = math.floor(secondary * (1 - 0.003 * defensePoints))
        print("Después del bucle de defensa - primary:", primary, "secondary:", secondary)
    end

    return primary, secondary
end


--- energy

function StatSystem.addEnergyBonus(player, primary, secondary)
    local energyPoints = math.max(0, player:getStorageValue(StatSystem.config.storages.energyPoints))

    if energyPoints > 0 then
        print("Antes del bucle de defensa - primary:", primary, "secondary:", secondary)
        primary = math.floor(primary * (1 - 0.003 * energyPoints))
        secondary = math.floor(secondary * (1 - 0.003 * energyPoints))
        print("Después del bucle de defensa - primary:", primary, "secondary:", secondary)
    end

    return primary, secondary
end


