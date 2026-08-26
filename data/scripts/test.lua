-- CONFIG
UPGRADE_SYSTEM = {
  OPCODE = 105,
  POINTS_STORAGE = 1000,

  SPELLS = {
    ["Kamehameha"] = {
      storage = 2000,
      levels = {
        [1] = { cost = 1, bonus = 10 },
        [2] = { cost = 2, bonus = 20 },
        [3] = { cost = 3, bonus = 35 }
      }
    },

    ["Genkidama"] = {
      storage = 2100,
      levels = {
        [1] = { cost = 2, bonus = 25 },
        [2] = { cost = 3, bonus = 40 }
      }
    }
  }
}

function sendUpgradeData(player)
  local categories = {}
  local offers = {}

  for spellName, spellData in pairs(UPGRADE_SYSTEM.SPELLS) do
    table.insert(categories, { name = spellName })

    offers[spellName] = {}

    for level, info in pairs(spellData.levels) do
      table.insert(offers[spellName], {
        level = level,
        cost = info.cost,
        bonus = info.bonus
      })
    end
  end

  local points = player:getStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE)
  if points < 0 then points = 0 end

  local data = {
    action = "init",
    categories = categories,
    offers = offers,
    points = points
  }

  player:sendExtendedOpcode(UPGRADE_SYSTEM.OPCODE, json.encode(data))
end
function onOpcode(protocol, opcode, buffer)
  local data = json.decode(buffer)

  if data.action == "init" then
    spellUpgradeWindow:show()
    spellUpgradeWindow:raise()
    spellUpgradeWindow:focus()

    -- aquí cargas spells y UI
  elseif data.action == "updatePoints" then
    -- actualizar puntos
  end
end
function sendPointsUpdate(player)
  local points = player:getStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE)
  if points < 0 then points = 0 end

  player:sendExtendedOpcode(UPGRADE_SYSTEM.OPCODE, json.encode({
    action = "updatePoints",
    points = points
  }))
end



function handleUpgrade(player, data)
  local spellName = data.spell
  local level = data.level

  local spell = UPGRADE_SYSTEM.SPELLS[spellName]
  if not spell then return end

  local levelData = spell.levels[level]
  if not levelData then return end

  local currentLevel = player:getStorageValue(spell.storage)
  if currentLevel < 0 then currentLevel = 0 end

  -- evitar saltos
  if level ~= currentLevel + 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Upgrade in order.")
    return
  end

  local points = player:getStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE)
  if points < levelData.cost then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Not enough points.")
    return
  end

  player:setStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE, points - levelData.cost)
  player:setStorageValue(spell.storage, level)

  player:sendTextMessage(MESSAGE_INFO_DESCR,
    spellName .. " upgraded to level " .. level
  )

  sendPointsUpdate(player)
end

function onExtendedOpcode(player, opcode, buffer)
  if opcode ~= UPGRADE_SYSTEM.OPCODE then return end

  local data = json.decode(buffer)
  if not data or not data.action then return end

  if data.action == "upgradeSpell" then
    handleUpgrade(player, data.data)
  end
end

function onAdvance(player, skill, oldLevel, newLevel)
  if skill ~= SKILL_LEVEL then return end

  if newLevel % 10 == 0 then
    local points = player:getStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE)
    if points < 0 then points = 0 end

    player:setStorageValue(UPGRADE_SYSTEM.POINTS_STORAGE, points + 3)

    player:sendTextMessage(MESSAGE_INFO_DESCR,
      "You received 3 upgrade points!"
    )

    sendPointsUpdate(player)
  end
end

function getSpellBonus(player, spellName)
  local spell = UPGRADE_SYSTEM.SPELLS[spellName]
  if not spell then return 0 end

  local level = player:getStorageValue(spell.storage)
  if level < 0 then return 0 end

  local totalBonus = 0

  for i = 1, level do
    if spell.levels[i] then
      totalBonus = totalBonus + spell.levels[i].bonus
    end
  end

  return totalBonus
end