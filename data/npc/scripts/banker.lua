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

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

--------------------MESSAGES------------------------------------------------------------------------------
if msgcontains(msg, 'deposit') then
selfSay('Size the quantity of gold coins that you would like to deposit.', cid)
talkState[talkUser] = 1

elseif msgcontains(msg, 'withdraw') then
selfSay('Please tell me how much gold you would like to withdraw.', cid)
talkState[talkUser] = 3

elseif msgcontains(msg, 'transfer') then
selfSay('Tell me how many gold coins you would like to transfer.', cid)
talkState[talkUser] = 5


----------------------DEPOSIT-------------------------------------------------------
elseif talkState[talkUser] == 1 then
if msgcontains(msg, 'all') then
n = getPlayerMoney(cid)
selfSay('do you want to deposit '..n..' gold ?', cid)
talkState[talkUser] = 2
else
n = getNumber(msg)
selfSay('do you want to deposit '..n..' gold ?', cid)
talkState[talkUser] = 2
end

elseif talkState[talkUser] == 2 then
if msgcontains(msg, 'yes') then
if getPlayerMoney(cid) >= n then
doPlayerDepositMoney(cid,n)
selfSay('Successful. Now your balance account is ' ..getPlayerBalance(cid)..' gold.', cid)
talkState[talkUser] = 0
else
selfSay('You do not have money.', cid)
end
else
selfSay('OK then.', cid)
end

----------------------RETIRAR-------------------------------------------------------------------------------------

elseif talkState[talkUser] == 3 then
if msgcontains(msg, 'all') then
n = getPlayerBalance(cid)
selfSay('you want to withdraw '..n..' gold ?', cid)
talkState[talkUser] = 4
else
n = getNumber(msg)
selfSay('you want to withdraw '..n..' gold ?', cid)
talkState[talkUser] = 4
end

elseif talkState[talkUser] == 4 then
if msgcontains(msg, 'yes') then
if getPlayerBalance(cid) >= n then
doPlayerWithdrawMoney(cid, n)
selfSay('Here you are, '..n..' gold. Now your balance account is ' ..getPlayerBalance(cid)..' gold.', cid)
talkState[talkUser] = 0
else
selfSay('There is not enough gold in your account', cid)
end
else
selfSay('OK then', cid)
end

----------------------TRANSFER----------------------------------------------------------------------------------------

elseif talkState[talkUser] == 5 then
if msgcontains(msg, 'all') then
n = getPlayerBalance(cid)
selfSay('who would you like to transfer '..n..' gold for?', cid)
talkState[talkUser] = 6
else
n = getNumber(msg)
selfSay('who would you like to transfer '..n..' gold for?', cid)
talkState[talkUser] = 6
end

elseif talkState[talkUser] == 6 then
p = msg
selfSay('So would you like to transfer '..n..' gold for '..p..'?', cid)
talkState[talkUser] = 7

elseif talkState[talkUser] == 7 then
if msgcontains(msg, 'yes') then
if getPlayerBalance(cid) >= n then
if doPlayerTransferMoneyTo(cid, p, n) == TRUE then
selfSay('you transferred '..n..' gold for '..p..' and your account balance and '..getPlayerBalance(cid)..' gold.', cid)
talkState[talkUser] = 0
else
selfSay('This player does not exist. Please tell me a valid name!', cid)
talkState[talkUser] = 0
end
else
selfSay('There is not enough gold in your account', cid)
talkState[talkUser] = 0
end
else
selfSay('OK then', cid)
talkState[talkUser] = 0
end

end


end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())



-- funcao louca por Gesior--
function getNumber(txt) --retorna numero se seu número e e> 0, caso contrario, retorne 0
x = string.gsub(txt,"%a","")
x = tonumber(x)
if x ~= nill and x > 0 then
return x
else
return 0
end
end