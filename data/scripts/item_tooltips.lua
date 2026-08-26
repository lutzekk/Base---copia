local CODE_TOOLTIP = 105

local specialSkills = {
  [SPECIALSKILL_CRITICALHITCHANCE] = "cc",
  [SPECIALSKILL_CRITICALHITAMOUNT] = "ca",
  [SPECIALSKILL_LIFELEECHCHANCE] = "lc",
  [SPECIALSKILL_LIFELEECHAMOUNT] = "la",
  [SPECIALSKILL_MANALEECHCHANCE] = "mc",
  [SPECIALSKILL_MANALEECHAMOUNT] = "ma"
}

local skills = {
  [SKILL_FIST] = "fist",
  [SKILL_AXE] = "axe",
  [SKILL_SWORD] = "sword",
  [SKILL_CLUB] = "club",
  [SKILL_DISTANCE] = "dist",
  [SKILL_SHIELD] = "shield",
  [SKILL_FISHING] = "fish"
}

local stats = {
  [STAT_MAGICPOINTS] = { key = "mag", description = "Magic Points" },
  [STAT_MAXHITPOINTS] = { key = "maxhp", description = "HP" },
  [STAT_MAXMANAPOINTS] = { key = "maxmp", description = "MP" }
}

local statsPercent = {
  [STAT_MAXHITPOINTS] = { key = "maxhp_p", description = "HP Percent" },
  [STAT_MAXMANAPOINTS] = { key = "maxmp_p", description = "MP Percent" }
}




local combatTypeNames = {
  [COMBAT_PHYSICALDAMAGE] = "Physical",
  [COMBAT_ENERGYDAMAGE] = "Energy",
  [COMBAT_EARTHDAMAGE] = "Earth",
  [COMBAT_FIREDAMAGE] = "Fire",
  [COMBAT_LIFEDRAIN] = "Lifedrain",
  [COMBAT_MANADRAIN] = "Manadrain",
  [COMBAT_HEALING] = "Healing",
  [COMBAT_DROWNDAMAGE] = "Drown",
  [COMBAT_ICEDAMAGE] = "Ice",
  [COMBAT_HOLYDAMAGE] = "Holy",
  [COMBAT_DEATHDAMAGE] = "Death"
}

local combatShortNames = {
  [COMBAT_PHYSICALDAMAGE] = "a_phys",
  [COMBAT_ENERGYDAMAGE] = "a_ene",
  [COMBAT_EARTHDAMAGE] = "a_earth",
  [COMBAT_FIREDAMAGE] = "a_fire",
  [COMBAT_LIFEDRAIN] = "a_ldrain",
  [COMBAT_MANADRAIN] = "a_mdrain",
  [COMBAT_HEALING] = "a_heal",
  [COMBAT_DROWNDAMAGE] = "a_drown",
  [COMBAT_ICEDAMAGE] = "a_ice",
  [COMBAT_HOLYDAMAGE] = "a_holy",
  [COMBAT_DEATHDAMAGE] = "a_death"
}

local LoginEvent = CreatureEvent("TooltipsLogin")

function LoginEvent.onLogin(player)
  player:registerEvent("TooltipsExtended")
  return true
end

local ExtendedEvent = CreatureEvent("TooltipsExtended")

function ExtendedEvent.onExtendedOpcode(player, opcode, buffer)
  if opcode == CODE_TOOLTIP then
    local status, data =
      pcall(
      function()
        return json.decode(buffer)
      end
    )
    if not status or not data then
      return
    end

    if #data == 4 then
      local pos = Position(data[1], data[2], data[3], data[4])
      local item = player:getItem(pos)
      player:sendItemTooltip(item)
    elseif #data == 1 then
      local item = Game.getRealUniqueItem(data[1])
      if item then
        player:sendItemTooltip(item)
      end
    end
    
  end
end

function Player:sendItemTooltip(item)
  if item then
    local item_data = item:buildTooltip()
    if item_data then
      self:sendExtendedOpcode(CODE_TOOLTIP, json.encode({action = "new", data = item_data}))
    end
  end
end

function Item:buildTooltip()
  local uid = self:getRealUID()
  local itemType = self:getType()
  local item_data = {
    uid = uid,
    itemName = itemType:getName(),
    clientId = itemType:getClientId()
  }

  if itemType:getDescription():len() > 0 then
    item_data.desc = itemType:getDescription()
  end

  if itemType:getRequiredLevel() >= 1 then
    item_data.reqLvl = itemType:getRequiredLevel()
  end

  local implicit = {}

  if itemType:getElementType() ~= COMBAT_NONE and combatTypeNames[itemType:getElementType()] then
    implicit.eleDmg = "+" .. itemType:getElementDamage() .. " " .. combatTypeNames[itemType:getElementType()] .. " Damage"
  end

  local allprot = itemType:getAbsorbPercent(0)

  if allprot ~= 0 then
    for i = 0, COMBAT_COUNT - 1 do
      if itemType:getAbsorbPercent(i) ~= allprot then
        allprot = 0
        break
      end
    end
  end

  if allprot == 0 then
    for i = 0, COMBAT_COUNT - 1 do
      if itemType:getAbsorbPercent(i) ~= 0 then
        local combatType = bit.lshift(1, i)
        if combatType ~= COMBAT_UNDEFINEDDAMAGE then
          implicit[combatShortNames[combatType]] = itemType:getAbsorbPercent(i)
        end
      end
    end
  else
    implicit.a_all = allprot
  end

  for key, value in pairs(specialSkills) do
    local s = itemType:getSpecialSkill(key)
    if s and s >= 1 then
      implicit[value] = s
    end
  end

  for key, value in pairs(skills) do
    local s = itemType:getSkill(key)
    if s and s >= 1 then
      implicit[value] = s
    end
  end

  for key, value in pairs(stats) do
    local s = itemType:getStat(key)
    if s and s >= 1 then
      implicit[value.key] = s .. "+ " .. value.description
    end
  end

  for key, value in pairs(statsPercent) do
    local s = itemType:getStatPercent(key)
    if s and s >= 1 then
      implicit[value.key] = (s - 100) .. "% " .. value.description
    end
  end

  local healthGain = itemType:getHealthGain()
  if healthGain and healthGain > 0 then
  end

  local healthTicks = itemType:getHealthTicks()
  if healthTicks and healthTicks > 0 then
    local healthRegenPerSecond = healthGain / (healthTicks / 1000)  -- Convertir ticks a segundos
    implicit.hpticks = "+" .. math.floor(healthRegenPerSecond + 0.5) .. " regen HP/s"
  end
  
  local manaGain = itemType:getManaGain()
  if manaGain and manaGain > 0 then
  end
  

  
  local manaTicks = itemType:getManaTicks()
  if manaTicks and manaTicks > 0 then
    local manaRegenPerSecond = manaGain / (manaTicks / 1000)  -- Convertir ticks a segundos
    implicit.mpticks = "+" .. math.floor(manaRegenPerSecond + 0.5) .. " regen MP/s"
  end
  
  
  


  local speed = itemType:getSpeed()
  if speed and speed > 0 then
    implicit.speed = speed
  end

  if self:isContainer() then
    implicit.cap = self:getCapacity() .. " capacity"
  end

  if next(implicit) ~= nil then
    item_data.imp = implicit
  end

  item_data.stackable = itemType:isStackable()
  item_data.itemType = formatItemType(itemType)
  if itemType:getArmor() > 0 then
    if self:getAttribute(ITEM_ATTRIBUTE_ARMOR) > 0 then
      item_data.armor = self:getAttribute(ITEM_ATTRIBUTE_ARMOR)
    else
      item_data.armor = itemType:getArmor()
    end
  elseif itemType:getShootRange() > 1 then
    if self:getAttribute(ITEM_ATTRIBUTE_ATTACK) > 0 then
      item_data.attack = self:getAttribute(ITEM_ATTRIBUTE_ATTACK)
    else
      item_data.attack = itemType:getAttack()
    end
    if self:getAttribute(ITEM_ATTRIBUTE_HITCHANCE) > 0 then
      item_data.hitChance = self:getAttribute(ITEM_ATTRIBUTE_HITCHANCE)
    else
      item_data.hitChance = itemType:getHitChance()
    end
    item_data.shootRange = itemType:getShootRange()
  elseif itemType:getAttack() > 0 then
    if self:getAttribute(ITEM_ATTRIBUTE_ATTACK) > 0 then
      item_data.attack = self:getAttribute(ITEM_ATTRIBUTE_ATTACK)
    else
      item_data.attack = itemType:getAttack()
    end
    if self:getAttribute(ITEM_ATTRIBUTE_DEFENSE) > 0 then
      item_data.defense = self:getAttribute(ITEM_ATTRIBUTE_DEFENSE)
    else
      item_data.defense = itemType:getDefense()
    end
    if self:getAttribute(ITEM_ATTRIBUTE_EXTRADEFENSE) > 0 then
      item_data.extraDefense = self:getAttribute(ITEM_ATTRIBUTE_EXTRADEFENSE)
    else
      item_data.extraDefense = itemType:getExtraDefense()
    end
  elseif itemType:getDefense() > 0 then
    if self:getAttribute(ITEM_ATTRIBUTE_DEFENSE) > 0 then
      item_data.defense = self:getAttribute(ITEM_ATTRIBUTE_DEFENSE)
    else
      item_data.defense = itemType:getDefense()
    end
    if self:getAttribute(ITEM_ATTRIBUTE_EXTRADEFENSE) > 0 then
      item_data.extraDefense = self:getAttribute(ITEM_ATTRIBUTE_EXTRADEFENSE)
    else
      item_data.extraDefense = itemType:getExtraDefense()
    end
  end

  item_data.weight = self:getWeight()
  return item_data
end

function formatItemType(itemType)
  local weaponType = itemType:getWeaponType()

  if weaponType ~= WEAPON_SHIELD then
    local slotPosition = itemType:getSlotPosition() - SLOTP_LEFT - SLOTP_RIGHT

    if slotPosition == SLOTP_TWO_HAND and weaponType == WEAPON_SWORD then
      return "Two-Handed Sword"
    elseif slotPosition == SLOTP_TWO_HAND and weaponType == WEAPON_CLUB then
      return "Two-Handed Club"
    elseif slotPosition == SLOTP_TWO_HAND and weaponType == WEAPON_AXE then
      return "Two-Handed Axe"
    elseif weaponType == WEAPON_SWORD then
      return "Sword"
    elseif weaponType == WEAPON_CLUB then
      return "Club"
    elseif weaponType == WEAPON_AXE then
      return "Axe"
    elseif weaponType == WEAPON_DISTANCE then
      return "Distance"
    elseif weaponType == WEAPON_WAND then
      return "Wand"
    elseif slotPosition == SLOTP_HEAD then
      return "Helmet"
    elseif slotPosition == SLOTP_NECKLACE then
      return "Necklace"
    elseif slotPosition == SLOTP_ARMOR then
      return "Armor"
    elseif slotPosition == SLOTP_LEGS then
      return "Legs"
    elseif slotPosition == SLOTP_FEET then
      return "Boots"
    elseif slotPosition == SLOTP_RING then
      return "Ring"
    elseif slotPosition == SLOTP_AMMO and itemType:getAmmoType() > 0 then
      return "Ammunition"
    elseif itemType:isRune() then
      return "Rune"
    elseif itemType:isContainer() then
      return "Container"
    elseif itemType:isFluidContainer() then
      return "Potion"
    elseif itemType:isUseable() then
      return "Usable"
    end
  else
    return "Shield"
  end

  return "Common"
end

LoginEvent:type("login")
LoginEvent:register()
ExtendedEvent:type("extendedopcode")
ExtendedEvent:register()
