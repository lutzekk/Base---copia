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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all swords.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'small sword') then
			sell(cid,2376,1,200)

		elseif msgcontains(msg, 'katana') then
			sell(cid,2412,1,2000)

		elseif msgcontains(msg, 'sword wish') then
			sell(cid,2384,1,500)

		elseif msgcontains(msg, 'jin sword') then
			sell(cid,2383,1,500)

		elseif msgcontains(msg, 'rock sword') then
			sell(cid,7449,1,750)

		elseif msgcontains(msg, 'rapier') then
			sell(cid,2396,1,1000)

		
		elseif msgcontains(msg, 'saiyan sword') then
			sell(cid,2442,1,50000)

		
		elseif msgcontains(msg, 'white sword') then
			sell(cid,2411,1,5000)

		elseif msgcontains(msg, 'scimithar') then
			sell(cid,2395,1,7500)

		elseif msgcontains(msg, 'soldier sword') then
			sell(cid,2393,1,10000)

		elseif msgcontains(msg, 'energy') then
			sell(cid,3961,1,10000)

		elseif msgcontains(msg, 'health') then
			sell(cid,3962,1,10000)

		elseif msgcontains(msg, 'critical') then
			sell(cid,3963,1,10000)

		elseif msgcontains(msg, 'strong') then
			sell(cid,3964,1,10000)

		elseif msgcontains(msg, 'dark') then
			sell(cid,3965,1,10000)
		
		elseif msgcontains(msg, 'light') then
			sell(cid,3966,1,10000)
		
		elseif msgcontains(msg, 'demon sword') then
			sell(cid,2392,1,30000)


		elseif msgcontains(msg, 'z sword') then
			sell(cid,2403,1,50000)

		elseif msgcontains(msg, 'light sword') then
			sell(cid,2400,1,75000)

		elseif msgcontains(msg, 'janemba sword') then
			sell(cid,2390,1,10000)
		 
		
		elseif msgcontains(msg, 'fire sword') then
			sell(cid,2377,1,15000)
		
		elseif msgcontains(msg, 'vulcanic sword') then
			sell(cid,2397,1,30000)

		elseif msgcontains(msg, 'brolly sword') then
			sell(cid,2385,1,50000)

		
		elseif msgcontains(msg, 'frozen sword') then
			sell(cid,2446,1,50000)

		elseif msgcontains(msg, 'sword of fire') then
			sell(cid,7384,1,75000)

		elseif msgcontains(msg, 'power janemba sword') then
			sell(cid,2421,1,80000)

		elseif msgcontains(msg, 'sword of ice') then
			sell(cid,7386,1,100000)

		elseif msgcontains(msg, 'sword of ghost') then
			sell(cid,7385,1,150000)
		
		elseif msgcontains(msg, 'night sword') then
			sell(cid,2420,1,200000)
		
		
						

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
