-- Función para obtener el atributo de un ítem
function getItemAttribute(uid, key)
    local item = Item(uid)
    local string_attributes = {
        [ITEM_ATTRIBUTE_NAME] = item:getName(),
        [ITEM_ATTRIBUTE_ARTICLE] = item:getArticle(),
        [ITEM_ATTRIBUTE_PLURALNAME] = item:getPluralName(),
        ["name"] = item:getName(),
        ["article"] = item:getArticle(),
        ["pluralname"] = item:getPluralName()
    }

    local numeric_attributes = {
        [ITEM_ATTRIBUTE_WEIGHT] = item:getWeight(),
        [ITEM_ATTRIBUTE_ATTACK] = item:getAttack(),
        [ITEM_ATTRIBUTE_DEFENSE] = item:getDefense(),
        [ITEM_ATTRIBUTE_EXTRADEFENSE] = item:getExtraDefense(),
        [ITEM_ATTRIBUTE_ARMOR] = item:getArmor(),
        [ITEM_ATTRIBUTE_HITCHANCE] = item:getHitChance(),
        [ITEM_ATTRIBUTE_SHOOTRANGE] = item:getShootRange(),
        [ITEM_ATTRIBUTE_MAXHP] = item:getMaxHP() or 0,
        [ITEM_ATTRIBUTE_MAXMANA] = item:getMaxMana() or 0,
        [ITEM_ATTRIBUTE_AXE] = item:getAxe() or 0,
        [ITEM_ATTRIBUTE_DISTANCE] = item:getDistance() or 0,
        [ITEM_ATTRIBUTE_SWORD] = item:getSword() or 0,
        ["weight"] = item:getWeight(),
        ["attack"] = item:getAttack(),
        ["defense"] = item:getDefense(),
        ["extradefense"] = item:getExtraDefense(),
        ["armor"] = item:getArmor(),
        ["hitchance"] = item:getHitChance(),
        ["shootrange"] = item:getShootRange(),
        ["maxhp"] = item:getMaxHP() or 0,
        ["maxmana"] = item:getMaxMana() or 0,
        ["axe"] = item:getAxe() or 0,
        ["distance"] = item:getDistance() or 0,
        ["sword"] = item:getSword() or 0
    }

    local attr = item:getAttribute(key)
    if tonumber(attr) then
        if numeric_attributes[key] then
            return attr ~= 0 and attr or numeric_attributes[key]
        end
    else
        if string_attributes[key] then
            if attr == "" then
                return string_attributes[key]
            end
        end
    end
    return attr
end

-- Función para establecer el atributo de un ítem
function doItemSetAttribute(uid, key, value)
    local item = Item(uid)
    if key == ITEM_ATTRIBUTE_MAXHP or key == "maxhp" then
        item:setAttribute(ITEM_ATTRIBUTE_MAXHP, value)
    elseif key == ITEM_ATTRIBUTE_MAXMANA or key == "maxmana" then
        item:setAttribute(ITEM_ATTRIBUTE_MAXMANA, value)
    elseif key == ITEM_ATTRIBUTE_AXE or key == "axe" then
        item:setAttribute(ITEM_ATTRIBUTE_AXE, value)
    elseif key == ITEM_ATTRIBUTE_DISTANCE or key == "distance" then
        item:setAttribute(ITEM_ATTRIBUTE_DISTANCE, value)
    elseif key == ITEM_ATTRIBUTE_SWORD or key == "sword" then
        item:setAttribute(ITEM_ATTRIBUTE_SWORD, value)
    elseif key == ITEM_ATTRIBUTE_SHIELD or key == "shield" then
        item:setAttribute(ITEM_ATTRIBUTE_SHIELD, value) -- Si existe
    elseif key == CONDITION_PARAM_SKILL_FISHING or key == "fishing" then
        item:setAttribute(CONDITION_PARAM_SKILL_FISHING, value) -- Si existe
    elseif key == CONDITION_PARAM_SKILL_SWORD then
        item:setAttribute(CONDITION_PARAM_SKILL_SWORD, value)
    else
        item:setAttribute(key, value)
    end
end

-- Función para borrar el atributo de un ítem
function doItemEraseAttribute(uid, key)
    local item = Item(uid)
    if key == ITEM_ATTRIBUTE_MAXHP or key == "maxhp" then
        item:setAttribute(ITEM_ATTRIBUTE_MAXHP, 0)
    elseif key == ITEM_ATTRIBUTE_MAXMANA or key == "maxmana" then
        item:setAttribute(ITEM_ATTRIBUTE_MAXMANA, 0)
    elseif key == ITEM_ATTRIBUTE_AXE or key == "axe" then
        item:setAttribute(ITEM_ATTRIBUTE_AXE, 0)
    elseif key == ITEM_ATTRIBUTE_DISTANCE or key == "distance" then
        item:setAttribute(ITEM_ATTRIBUTE_DISTANCE, 0)
    elseif key == ITEM_ATTRIBUTE_SWORD or key == "sword" then
        item:setAttribute(ITEM_ATTRIBUTE_SWORD, 0)
    elseif key == ITEM_ATTRIBUTE_SHIELD or key == "shield" then
        item:setAttribute(ITEM_ATTRIBUTE_SHIELD, 0) -- Si existe
    elseif key == CONDITION_PARAM_SKILL_FISHING or key == "fishing" then
        item:setAttribute(CONDITION_PARAM_SKILL_FISHING, 0) -- Si existe
    elseif key == CONDITION_PARAM_SKILL_SWORD then
        item:setAttribute(CONDITION_PARAM_SKILL_SWORD, 0)
    else
        item:setAttribute(key, nil)
    end
end
