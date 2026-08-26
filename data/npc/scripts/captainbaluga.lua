local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
 
 
-- OTServ event handling functions start
function onCreatureAppear(cid)                	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     		npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                         		npcHandler:onThink() end
-- OTServ event handling functions end
 
 local voices = {
	{ text = 'Need to travel? I am your man.' },
	{ text = 'For now I can travel to Heaven.' }
}

npcHandler:addModule(VoiceModule:new(voices))
 
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions! Position(918, 809, 6)
local travelNode = keywordHandler:addKeyword({'heaven'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you wish to travel to the Heaven?'})
    travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=307, y=41, z=6} })
    travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'I wouldn\'t go there either.'})
  
keywordHandler:addKeyword({'destination'}, 	StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can take you to Heaven for just a small fee.'})
keywordHandler:addKeyword({'travel'}, 		StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can take you to Heaven for just a small fee.'})
keywordHandler:addKeyword({'sail'}, 		StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can take you to Heaven for just a small fee.'})
keywordHandler:addKeyword({'coldfrost'}, 	StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'That\'s where we are now.'})
 
-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())