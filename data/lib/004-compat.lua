getThingFromPos = getThingfromPos
getThingPosition = getThingPos
MESSAGE_LOOT = MESSAGE_INFO_DESCR
TALKTYPE_MONSTER = TALKTYPE_MONSTER_SAY
TALKTYPE_ORANGE_1 = TALKTYPE_MONSTER_SAY
TALKTYPE_ORANGE_2 = TALKTYPE_MONSTER_YELL

getCreatureStorage = getPlayerStorageValue
doCreatureSetStorage = setPlayerStorageValue
function getItemNameById(itemId) return ItemType(itemId):getName() end

string.explode = function (str, sep, limit)
if(type(sep) ~= 'string' or isInArray({tostring(str):len(), sep:len()}, 0)) then
   return {}
end