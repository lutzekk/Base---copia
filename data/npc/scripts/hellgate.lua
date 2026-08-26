local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end

local function travel(cid, x, y, z)
	destpos = {x = x, y = y, z = z}
	doTeleportThing(cid, destpos)
end

function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 3 then
		if isPremium(cid) then
			selfSay('Hello ' .. getCreatureName(cid) .. '! Do you want go to secret gate?')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Sorry, only premium players can go to secret gate.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

			if msgcontains(msg, 'yes') then
				if isPremium(cid) then
					if(doPlayerRemoveItem(cid, 5678, 1)) then
						if(hasCondition(cid, CONDITION_INFIGHT) == false) then
							travel(cid, 206, 146, 8)
							selfSay('Let\'s go!')
							focus = 0
							talk_start = 0
						else
							selfSay('Sorry, you have infight ticks.')
						end
					else
						selfSay('Sorry, you need something.')
					end
				else
					selfSay('Sorry, only premium players can go to secret gate.')
				end

			

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 3 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end

function onThink()
	
  	if (os.clock() - talk_start) > 45 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 3 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
