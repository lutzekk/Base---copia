function onUse(cid, item, fromPosition, itemEx, toPosition)
ITEM = 1981
local storage = 50004
local wait = 0.1
if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = getCreatureMaxHealth(cid)
REG_MANA = getPlayerMaxMana(cid)
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doPlayerAddPremiumDays(cid, 5)
doCreatureSay(cid, '+5 Premium Account !', TALKTYPE_ORANGE_1)
doRemoveItem(item.uid, 1)
exhaustion.set(cid, storage, wait)
elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = getCreatureMaxHealth(cid)
REG_MANA = getPlayerMaxMana(cid)
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doPlayerAddPremiumDays(cid, 5)
doCreatureSay(cid, '+5 Premium Account !', TALKTYPE_ORANGE_1)
doPlayerRemoveItem(cid, ITEM, 1)
exhaustion.set(cid, storage, wait)
else
doPlayerSendCancel(cid, "You are exhausted.")
end
	return TRUE
end