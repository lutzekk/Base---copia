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


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell all boots.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		

		if msgcontains(msg, 'human boots') then
			buy(cid,3982,1,100000)

		elseif msgcontains(msg, 'saiyan boots') then
			buy(cid,2195,1,500000)

		elseif msgcontains(msg, 'future trunks boots') then
			buy(cid,2641,1,1000000)

		
		elseif msgcontains(msg, 'c17 boots') then
			buy(cid,2645,1,1500000)

		
		elseif msgcontains(msg, 'vilage boots') then
			buy(cid,2541,1,2000000)

		elseif msgcontains(msg, 'bardock boots') then
			buy(cid,2643,1,3000000)

		elseif msgcontains(msg, 'brolly boots') then
			buy(cid,2642,1,5000000)

		


		elseif msgcontains(msg, 'majin boots') then
			buy(cid,2646,1,15000000)

		elseif msgcontains(msg, 'elite boots') then
			buy(cid,2525,1,15000000)
			
		elseif msgcontains(msg, 'hercules boots') then
			buy(cid,2524,1,100000)
		
						

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end

function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 45 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
