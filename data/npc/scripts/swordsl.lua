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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell all swords.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'small') then
			buy(cid,2376,1,20000)

		elseif msgcontains(msg, 'jin') then
			buy(cid,2383,1,50000)

		elseif msgcontains(msg, 'rock') then
			buy(cid,7449,1,75000)

		elseif msgcontains(msg, 'rapier') then
			buy(cid,2396,1,100000)

		
		elseif msgcontains(msg, 'saiyan') then
			buy(cid,2442,1,300000)

		
		elseif msgcontains(msg, 'white') then
			buy(cid,2411,1,500000)

		elseif msgcontains(msg, 'scimithar') then
			buy(cid,2395,1,750000)

		elseif msgcontains(msg, 'soldier') then
			buy(cid,2393,1,1000000)

		
		elseif msgcontains(msg, 'demon') then
			buy(cid,2392,1,3000000)


		elseif msgcontains(msg, 'z') then
			buy(cid,2403,1,5000000)

	

		elseif msgcontains(msg, 'janemba') then
			buy(cid,2390,1,1000000)

		
		elseif msgcontains(msg, 'vulcanic') then
			buy(cid,2397,1,3000000)

		elseif msgcontains(msg, 'brolly') then
			buy(cid,2385,1,5000000)

		

		elseif msgcontains(msg, 'fire sword') then
			buy(cid,2377,1,1500000)
						
		
		elseif msgcontains(msg, 'power janemba sword') then
			buy(cid,2421,1,8000000)

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
