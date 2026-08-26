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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell all gloves.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'yellow') then
			buy(cid,2378,1,2000)

		elseif msgcontains(msg, 'red') then
			buy(cid,2423,1,5000)

		elseif msgcontains(msg, 'box') then
			buy(cid,2429,1,7500)

		elseif msgcontains(msg, 'glove') then
			buy(cid,2381,1,10000)

		
		elseif msgcontains(msg, 'green') then
			buy(cid,2380,1,30000)

		
		elseif msgcontains(msg, 'stronge') then
			buy(cid,2387,1,50000)

		elseif msgcontains(msg, 'saibamen clav') then
			buy(cid,2427,1,75000)

		elseif msgcontains(msg, 'bardock') then
			buy(cid,2435,1,100000)

		
		elseif msgcontains(msg, 'white') then
			buy(cid,7433,1,300000)


		elseif msgcontains(msg, 'saiyan') then
			buy(cid,2430,1,500000)

		elseif msgcontains(msg, 'majin') then
			buy(cid,2431,1,7500000)

	

		


		

		
		
		
						

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
