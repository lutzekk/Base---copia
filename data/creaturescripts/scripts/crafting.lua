local crafting = {}

crafting.Crafts = {
  weapons = {
    {id = 2376, name = "Sword", level = 1, materials = {{id = 2398, count = 5}}, cost = 100, description = "A simple sword."},
    -- Agrega más recetas aquí
  },
  -- Agrega más categorías y recetas aquí
}

function crafting.onRecvCraftRequest(player, category, craftId)
  local categoryData = crafting.Crafts[category]
  if not categoryData then
    return
  end

  local craftData = categoryData[craftId]
  if not craftData then
    return
  end

  local canCraft = true
  for _, material in ipairs(craftData.materials) do
    local count = player:getItemCount(material.id)
    if count < material.count then
      canCraft = false
      break
    end
  end

  if canCraft then
    for _, material in ipairs(craftData.materials) do
      player:removeItem(material.id, material.count)
    end
    player:addItem(craftData.id, 1)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have crafted a " .. craftData.name .. "!")
  else
    player:sendTextMessage(MESSAGE_STATUS_WARNING, "You do not have enough materials to craft this item.")
  end
end

function crafting.onExtendedOpcode(player, opcode, buffer)
  local status, data = pcall(function() return json.decode(buffer) end)
  if not status then
    print("[Crafting] JSON error: " .. data)
    return
  end

  local action = data.action
  local actionData = data.data

  if action == "fetch" then
    local crafts = crafting.Crafts[actionData.category]
    if crafts then
      local response = {action = "fetch", data = {category = actionData.category, crafts = crafts}}
      player:sendExtendedOpcode(opcode, json.encode(response))
    end
  elseif action == "craft" then
    crafting.onRecvCraftRequest(player, actionData.category, actionData.craftId)
  end
end

return crafting
