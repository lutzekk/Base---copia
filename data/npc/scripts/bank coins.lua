local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid)  end
function onCreatureDisappear(cid)  npcHandler:onCreatureDisappear(cid)  end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)  end
function onThink()  npcHandler:onThink()  end


local c = {
   ["15 coins"] = {
     id = 7528,
	 count = 15,
     items = {
       {id = 2160, count = 100}
     }
   },
      ["50 coins"] = {
     id = 7528,
	 count = 50,
     items = {
       {id = 2160, count = 300}
     }
   },
      ["100 coins"] = {
     id = 7528,
	 count = 100,
     items = {
       {id = 2160, count = 550}
     }
   },
    ["1 diamond"] = {
     id = 8380,
	 count = 1,
     items = {
       {id = 7528, count = 150}
     }
   },
    ["5 diamonds"] = {
     id = 8380,
	 count = 5,
     items = {
       {id = 7528, count = 600}
     }
   },
     ["10 diamonds"] = {
     id = 8380,
	 count = 10,
     items = {
       {id = 7528, count = 150}
     }
   },
   ["something else"] = {
     id = 2112,
     items = {
       {id = 2674, count = 1},
       {id = 2675, count = 10}
     }
   }
}



local function getItemsFromTable(itemtable)
     local text = ""
     for v = 1, #itemtable do
         count, info = itemtable[v].count, getItemDescriptions(itemtable[v].id)
         local ret = ", "
         if v == 1 then
             ret = ""
         elseif v == #itemtable then
             ret = " and "
         end
         text = text .. ret
         text = text .. (count > 1 and count or info.article).." "..(count > 1 and info.plural or info.name)
     end
     return text
end
   


function creatureSayCallback(cid, type, msg)
     if(not npcHandler:isFocused(cid)) then
         return false
     end

     local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

     local player = Player(cid)
     local x = c[msg:lower()]
     if x then
         selfSay("It will cost you "..getItemsFromTable(x.items).." Are you sure?", cid)
         talkState[talkUser] = 1
         xmsg = msg
     elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then
         x = c[xmsg:lower()]
         local n = 0
         for z = 1, #x.items do
             if player:getItemCount(x.items[z].id) >= x.items[z].count then
                 n = n + 1
             end
         end
         if n == #x.items then
             for r = 1, #x.items do
                 player:removeItem(x.items[r].id, x.items[r].count)
             end
             selfSay("There you go.", cid)
             player:addItem(x.id, x.count)
         else
             selfSay("You don't have the items.", cid) 
         end
         talkState[talkUser] = 0
     elseif msgcontains(msg, "no") and talkState[talkUser] == 1 then
         selfSay("Ok then.", cid)
         talkState[talkUser] = 0
     end
     return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "I can give you {15 coins} for 100 golds, {50 coins} for 300 golds, {100 coins} for 550 golds, I can also give you {1 Diamond} for 150 coins, {5 Diamonds} for 600 coins and {10 Diamonds} for 1000 coins")
npcHandler:addModule(FocusModule:new())