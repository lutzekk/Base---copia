local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 			end
function onCreatureSay(cid, type, msg) 			npcHandler:onCreatureSay(cid, type, msg) 		end
function onThink() 					npcHandler:onThink() 					end

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!

keywordHandler:addKeyword({'htgd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell band of loss (30k), meat (20k), ham (5k), hamburguer (7,5k), cheese (400gp), potion (200gp) ki potion (100gp), red bands (100k) and two tones bands (60k).'})
npcHandler:addModule(FocusModule:new())
