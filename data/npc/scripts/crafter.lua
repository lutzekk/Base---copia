function getItemsFromList(items)
	local str = ''
	if table.maxn(items) > 0 then
		for i = 1, table.maxn(items) do
			str = str .. items[i][2] .. ' ' .. getItemNameById(items[i][1])
			if i ~= table.maxn(items) then str = str .. ', ' 
			end 
		end 
	end
	return str
end
function doRemoveItemsFromList(cid,items)
	local count = 0
	if table.maxn(items) > 0 then
		for i = 1, table.maxn(items) do
			if getPlayerItemCount(cid,items[i][1]) >= items[i][2] then
			count = count + 1 end 
		end 
	end
	if count == table.maxn(items) then
		for i = 1, table.maxn(items) do doPlayerRemoveItem(cid,items[i][1],items[i][2]) end
	else 
		return false 
	end
	return true 
end	
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
	local talkUser,msg = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid, msg:lower()
    local craft = {
                ["demon helmet"] = {reward = {{7732, 1}}, items = {{7730,1}, {7734,2}}},
                ["magic plate armor"] = {reward = {{2472, 1}}, items = {{2173,1}, {2160,10}, {2493,2}}}
                }
	
	if isInArray({"item","craft","itens","items", "iten"}, msg) then
        local text = ""
        for i, v in pairs(craft) do
            text = text .. " {"..i.."}, "
        end
        npcHandler:say("I can make " .. text .. " which one do you want?", cid)	
		talkState[talkUser] = 1 
	elseif talkState[talkUser] == 1 then
      ret = craft[msg] 
		if not ret then
			 npcHandler:say("I am not crafting this item, perhaps I can consider your order later.", cid) return true
		end
        npcHandler:say("Oh, " .. msg .. " is a good choice. Let me see... I need " .. getItemsFromList(ret.items) .. ", do you have it?" , cid)		
 		talkState[talkUser] = 2 
	elseif talkState[talkUser] == 2 and isInArray({"yes","yeah","sim","si"}, msg) then
      if not doRemoveItemsFromList(cid, ret.items) then
   			talkState[talkUser] = 0 
			npcHandler:say("Sorry, but you don't have the items that I need.", cid) return true
		end
	for _, i_i in ipairs(ret.reward) do
		local item, amount = i_i[1], i_i[2]
		if isItemStackable(item) or amount == 1 then
			 doPlayerAddItem(cid, item, amount)
		else
			for i = 1, amount do
				 doPlayerAddItem(cid, item, 1)
			end
		end
	end
		talkState[talkUser] = 0 
		doSendMagicEffect(getPlayerPosition(cid), math.random(28,30))
		npcHandler:say("Thank you very much! Here is your item as I promised.", cid) return true					
	elseif msg == "no" then 
		selfSay("Ok... Bye!! Maybe on the next.", cid) 
		talkState[talkUser] = 0 
		npcHandler:releaseFocus(cid) 
	end
	return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())