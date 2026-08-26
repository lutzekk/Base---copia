local conf = {
    ["level"] = {
        [1] = {successPercent = 69, downgradeLevel = 0, chanceBroken = 5},
        [2] = {successPercent = 65, downgradeLevel = 1, chanceBroken = 5},
        [3] = {successPercent = 61, downgradeLevel = 2, chanceBroken = 5},
        [4] = {successPercent = 57, downgradeLevel = 3, chanceBroken = 5},
        [5] = {successPercent = 53, downgradeLevel = 4, chanceBroken = 5},
        [6] = {successPercent = 49, downgradeLevel = 5, chanceBroken = 5},
        [7] = {successPercent = 45, downgradeLevel = 6, chanceBroken = 5},
        [8] = {successPercent = 41, downgradeLevel = 7, chanceBroken = 5},
        [9] = {successPercent = 37, downgradeLevel = 8, chanceBroken = 5}
    },

    ["upgrade"] = {
        attack = 5,
        defense = 5,
        extraDefense = 10,
        armor = 5,
        hitChance = 5,
    }
}

local upgrading = {
    upValue = function(value, level, percent)
        if value < 0 then return 0 end
        if level == 0 then return value end
        local nVal = value
        for i = 1, level do
            nVal = nVal + (math.ceil((nVal / 100 * percent)))
        end
        return nVal > 0 and nVal or value
    end,

    getLevel = function(item)
        local name = Item(item):getName():split('+')
        if (#name == 1) then
            return 0
        end
        return math.abs(name[2])
    end,
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
    local it = ItemType(itemEx.itemid)
    if (it:getWeaponType() > 0 and not isItemStackable(itemEx.itemid)) then
        local level = upgrading.getLevel(itemEx.uid)
        if (level < #conf["level"]) then
            local upgradeConf = conf["level"][level + 1]

            -- Check if item breaks
            if (upgradeConf.chanceBroken > 0 and math.random(1, 100) <= upgradeConf.chanceBroken) then
                doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is destroyed!")
                -- Rompe el ítem eliminándolo del inventario del jugador
                doRemoveItem(itemEx.uid, 1)
                return true
            end
            
-- Determine the new level based on success or downgrade
local nLevel
if (upgradeConf.successPercent >= math.random(1, 100)) then
    nLevel = level + 1
else
    nLevel = math.max(0, level - 1) -- Downgrade to previous level
end

            -- Handle the result of upgrade or downgrade
            if (nLevel > level) then
                doSendMagicEffect(toPosition, CONST_ME_MAGIC_GREEN)
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade to level " .. nLevel .. " successful!")
            elseif (nLevel == 0) then
                doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is destroyed!")
                doRemoveItem(itemEx.uid, 1)
                return true
            else
                doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is now on level " .. nLevel .. "")
            end

            -- Apply the attributes based on the new level
            if (nLevel >= 0) then
                doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName() .. ((nLevel > 0) and "+" .. nLevel or ""))
                doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK, upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
                doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
                doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
                doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
                -- doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
            end

            -- Ensure the item is removed from the inventory if it is at max level or destroyed
            doRemoveItem(item.uid, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your " .. it:getName() .. " is at the maximum level already.")
        end
    else
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot upgrade this item.")
    end
end
