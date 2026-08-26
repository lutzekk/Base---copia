local items = {
    [9187] = { percent = 4},
    [8361] = { percent = 5},
    [7729] = { percent = 5},
	[7730] = { percent = 5},
	[7728] = { percent = 5},
	[7731] = { percent = 100},
	[7736] = { percent = 6},
	[7737] = { percent = 6},
	[7738] = { percent = 6},
	[7739] = { percent = 6},
	[9151] = { percent = 7},
	[9152] = { percent = 7},
	[9153] = { percent = 7},
	[9154] = { percent = 7},
	[9157] = { percent = 3},
}

function onEquip(player, item, slot, isCheck)
    if not isCheck then
        local itemID = item:getId()
        local itemData = items[itemID]
        if itemData then
            local storageValue = player:getStorageValue(7373)
            local newStorageValue = storageValue + itemData.percent
            player:setStorageValue(7373, newStorageValue)
			print(player:getStorageValue(7373))
        end
    end
    return true
end

function onDeEquip(player, item, slot)
    local itemID = item:getId()
    local itemData = items[itemID]
    
    if itemData then
        local storageValue = player:getStorageValue(7373)
        local newStorageValue = storageValue - itemData.percent
        player:setStorageValue(7373, newStorageValue)
    end
    return true
end