local slotName = { CONST_SLOT_AMMO, CONST_SLOT_ARMOR, CONST_SLOT_BACKPACK, CONST_SLOT_FEET, CONST_SLOT_HEAD, CONST_SLOT_LEFT, CONST_SLOT_LEGS, CONST_SLOT_NECKLACE, CONST_SLOT_RIGHT, CONST_SLOT_RING }

function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
    local player = Player(cid)
    
    -- Verifica si hay un objetivo y si es un jugador
    local targetPlayer = (target and target.uid and Player(target.uid)) or player
    if not targetPlayer then
        return true
    end

    -- Obtener la información del jugador objetivo
    local name = targetPlayer:getName()
    local level = targetPlayer:getLevel()
    local hp = targetPlayer:getHealth()
    local maxMana = targetPlayer:getMaxMana()
    local magicLevel = targetPlayer:getMagicLevel()
    local skills = {
        melee = targetPlayer:getSkillLevel(SKILL_MELEE),
        fist = targetPlayer:getSkillLevel(SKILL_FIST),
        club = targetPlayer:getSkillLevel(SKILL_CLUB),
        sword = targetPlayer:getSkillLevel(SKILL_SWORD),
        axe = targetPlayer:getSkillLevel(SKILL_AXE),
        distance = targetPlayer:getSkillLevel(SKILL_DISTANCE),
        shield = targetPlayer:getSkillLevel(SKILL_SHIELD),
        fishing = targetPlayer:getSkillLevel(SKILL_FISHING)
    }

    local equippedItems = {
        head = getPlayerSlotItem(target.uid, CONST_SLOT_HEAD),
        body = getPlayerSlotItem(target.uid, CONST_SLOT_ARMOR),  -- Cambio aquí
        legs = getPlayerSlotItem(target.uid, CONST_SLOT_LEGS),
        feet = getPlayerSlotItem(target.uid, CONST_SLOT_FEET),
        neck = getPlayerSlotItem(target.uid, CONST_SLOT_NECKLACE),
        ring = getPlayerSlotItem(target.uid, CONST_SLOT_RING),
        left = getPlayerSlotItem(target.uid, CONST_SLOT_LEFT),
        right = getPlayerSlotItem(target.uid, CONST_SLOT_RIGHT)
    }

    -- Función para obtener el nombre del ítem
    local function getItemName(itemId)
        local item = ItemType(itemId)
        return item:getName()
    end

    -- Construir el texto para la ventana de diálogo
    local statsText = "Name: " .. name .. "\n" ..
                      "Level: " .. level .. "\n" ..
                      "HP: " .. hp .. "\n" ..
                      "Mana " .. maxMana .. "\n" ..
                      "Ki Level: " .. magicLevel .. "\n" ..
                      "-------------Skills-------------:\n" ..
                      --"Attack Speed: " .. skills.melee .. "\n" ..
                      "Attack Speed: " .. skills.fist .. "\n" ..
                      "Critical: " .. skills.club .. "\n" ..
                      "Strenght: " .. skills.sword .. "\n" ..
                     -- "Axe: " .. skills.axe .. "\n" ..
                      "Ki Blast: " .. skills.distance .. "\n" ..
                      "Defense: " .. skills.shield .. "\n" ..
                      "Energy: " .. skills.fishing .. "\n" ..
                      "-------------Sets-------------:\n" ..
                      "Helmet: " .. (equippedItems.head.itemid and getItemName(equippedItems.head.itemid) or "None") .. "\n" ..
                      "Armor: " .. (equippedItems.body.itemid and getItemName(equippedItems.body.itemid) or "None") .. "\n" ..
                      "Legs: " .. (equippedItems.legs.itemid and getItemName(equippedItems.legs.itemid) or "None") .. "\n" ..
                      "Boots: " .. (equippedItems.feet.itemid and getItemName(equippedItems.feet.itemid) or "None") .. "\n" ..
                      "Necklace: " .. (equippedItems.neck.itemid and getItemName(equippedItems.neck.itemid) or "None") .. "\n" ..
                      "Ring: " .. (equippedItems.ring.itemid and getItemName(equippedItems.ring.itemid) or "None") .. "\n" ..
                      "Left Hand: " .. (equippedItems.left.itemid and getItemName(equippedItems.left.itemid) or "None") .. "\n" ..
                      "Right Hand: " .. (equippedItems.right.itemid and getItemName(equippedItems.right.itemid) or "None") .. "\n"

    -- Mostrar la ventana de texto
    player:showTextDialog(1234, statsText)
    
    return true
end
