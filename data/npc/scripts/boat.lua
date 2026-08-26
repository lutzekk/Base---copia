local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

function greetCallback(cid)
  doSendDialogNpc(cid, getNpcId(), "I can take you to", "Exit&Small City&Big City&Ice City&Frozen City&West Island&East Island&Broken City&Hope City&Assassin Tower&Underground City&Dragonia")
  return true  
end

local function pay(cid, cost)
	if(doPlayerRemoveMoney(cid, cost)) then
		return true
	else
		return false
	end
end

-- Travel player
local function travel(cid, x, y, z)
	destpos = {x = x, y = y, z = z}
	doTeleportThing(cid, destpos)
end

function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
if msgcontains(msg:lower(), "small city") then
				if pay(cid,0) then
					travel(cid, 118, 194, 6)
				end
    local message = ""
    elseif msgcontains(msg:lower(), "big city") then
				if pay(cid,0) then
					travel(cid, 103, 99, 6)
				
				end
				
			elseif msgcontains(msg:lower(), "assassin tower") then
				if pay(cid,0) then
					travel(cid, 254, 393, 7)	
				
				end


			elseif msgcontains(msg:lower(), "west island") then
				if pay(cid,0) then
					travel(cid, 112, 39, 7)			
				
				end
		elseif msgcontains(msg:lower(), "hope city") then
				if pay(cid,0) then
					travel(cid, 419, 913, 7)	
				
				end

elseif msgcontains(msg:lower(), "dragonia") then
				if pay(cid,0) then
					travel(cid, 782, 351, 7)
				
				end
				
		elseif msgcontains(msg:lower(), "underground city") then
				if pay(cid,0) then
					travel(cid, 167, 301, 7)	
				
				end

			elseif msgcontains(msg:lower(), "east island") then
				if pay(cid,0) then
					travel(cid, 82, 39, 7)
				
				end

elseif msgcontains(msg:lower(), "ice city") then
				if pay(cid,0) then
					travel(cid, 316, 179, 7)
			
				end
			elseif msgcontains(msg:lower(), "frozen city") then
				if pay(cid,0) then
					travel(cid, 477, 642, 7)	
				
				end	
			elseif msgcontains(msg:lower(), "broken city") then
				if pay(cid,0) then
					travel(cid, 100, 343, 7)	
				doSendDialogNpcClose(cid)
						return true
				end	

	doSendDialogNpc(cid, getNpcId(), message, "Exit")
  elseif msgcontains(msg:lower(), "exit") then
	doSendDialogNpcClose(cid)
	npcHandler:unGreet(cid)	
  end

  return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())