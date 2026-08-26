local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local shopWindow = {}
local t = {
 --items   cantidad --   
 [7529] = {quant = 1},
 [9155] = {quant = 5},
 [9156] = {quant = 5},
 [9180] = {quant = 30},
 [8616] = {quant = 3},
 [8212] = {quant = 15},
 }
 local storage = 5151
local onBuy = function(cid, item, subType, amount, ignoreCap, inBackpacks)
 if getPlayerStorageValue(cid, storage) >= t[item].quant then
selfSay("You change "..t[item].quant.." event points for {"..getItemName(item).."}", cid)
doPlayerAddItem(cid,item,1)
setPlayerStorageValue(cid, storage, getPlayerStorageValue(cid, storage) - t[item].quant)
else
selfSay("You no have "..t[item].quant.. " event points for change {"..getItemName(item).."}", cid)
  end
return true
end
if (msgcontains(msg, 'trade') or msgcontains(msg, 'TRADE'))then
for var, ret in pairs(t) do
table.insert(shopWindow, {id = var, subType = 0, buy = ret.quant, sell = 0, name = getItemName(var)})
end
openShopWindow(cid, shopWindow, onBuy, onSell)
end
return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())