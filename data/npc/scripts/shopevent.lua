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
local msg = string.lower(msg)
local moeda = 7528 ----id del vampire token aqui esta por gold nugget
local t = {
  ["event helmet"] = {50, 7736}, -- ["nome do item"] = {quanto vai custar, id do tem que sera vendido}
  ["event armor"] = {50, 7737},
  ["event legs"] = {50, 7738},
  ["event boots"] = {50, 7739},
  ["event ki"] = {35, 7740},
  ["event sword"] = {35, 7741},
  ["event glove"] = {35, 7742},
  ["event box"] = {40, 7529}
  }

if (msgcontains(msg, 'trade') or msgcontains(msg, 'TRADE'))then
local str = ""
str = str .. "I sell these items: "
for name, pos in pairs(t) do
str = str.." {"..name.."} = "..pos[1].." Event Point /"
end
str = str .. "."
npcHandler:say(str, cid)
elseif t[msg] then
 if doPlayerRemoveItem(cid,moeda,t[msg][1]) then
 doPlayerAddItem(cid,t[msg][2],1)
 npcHandler:say("Here is seu ".. getItemNameById(t[msg][2]) .."!", cid)
 else
 npcHandler:say("you do not have "..t[msg][1].." ".. getItemNameById(moeda), cid)
 end
end
return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())