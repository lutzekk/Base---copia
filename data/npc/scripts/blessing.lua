local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end


function creatureSayCallback(cid, type, msg)


    if(not npcHandler:isFocused(cid)) then
        return FALSE
    end
		if isPremium(cid) == true then
		   if msgcontains(msg, "bless") or msgcontains(msg, "comprar") then
        selfSay("Quer pagar 15 Golds na Bless?(Vip ACC)", cid)
        talkState[cid] = 1
    elseif msgcontains(msg, 'yes') and talkState[cid] == 1 then
    if not getPlayerBlessing(cid, 5) then
       if doPlayerRemoveMoney(cid, 150000) then
      for b = 1, 5 do
	  doPlayerAddBlessing(cid, b)
	  end
          selfSay("Voce comprou a bless", cid)
          talkState[cid] = 0
     else
     selfSay("Voce nao tem dinheiro. Preço {Vip ACC Bless}: 15 Golds", cid)
     end
     else
     selfSay("Você já possui a bless.", cid)
	 end
	 end
	 end
	 
	 	if not isPremium(cid) == true then
		   if msgcontains(msg, "bless") or msgcontains(msg, "comprar") then
        selfSay("Quer pagar 30 Golds na Bless?(Free ACC)", cid)
        talkState[cid] = 2
    elseif msgcontains(msg, 'yes') and talkState[cid] == 2 then
    if not getPlayerBlessing(cid, 5) then
       if doPlayerRemoveMoney(cid, 300000) then
      for b = 1, 5 do
	  doPlayerAddBlessing(cid, b)
	  end
          selfSay("Você comprou a bless", cid)
          talkState[cid] = 0
     else
     selfSay("Voce nao tem dinheiro. Preço {Free ACC Bless}: 30 Golds", cid)
     end
     else
     selfSay("Você já possui a bless.", cid)
	 end
	 end
	 end
	 
	  if msgcontains(msg, "info") or msgcontains(msg, "preço") then
	  doPlayerPopupFYI(cid, "Os players vips pagam menos pela bless que as pessoas frees \n Preco Bless para Free: 50 Golds \n Preco Bless para Vip: 30 golds \n O Bless Reduz em 50% de exp que será perdida e também serve como AOL, BAND OF LOSS")


	 end
	 end
	 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())