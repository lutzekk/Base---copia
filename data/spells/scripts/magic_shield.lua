local time = 20
local itemIdToCreate = 1498

local function removeCreatedItem(itemUid)
    local item = Item(itemUid)
    if item and item:isItem() then
        item:remove()
    end
end

local function countDown(creatureId, position, time, itemUid)
    local creature = Creature(creatureId)
    if not creature then return end

    if time == 0 then
        removeCreatedItem(itemUid)
        return
    end

    creature:say(time, TALKTYPE_MONSTER_SAY, false, nil, position)
    addEvent(countDown, 1000, creatureId, position, time - 1, itemUid)
end

function onCastSpell(creature, variant, isHotkey)
    local position = variant:getPosition()
    local item = Game.createItem(itemIdToCreate, 1, position)
    if item then
        countDown(creature:getId(), position, time, item.uid)
    end
    return true
end
