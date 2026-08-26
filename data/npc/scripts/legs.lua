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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all legs.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'fighter legs') then
			sell(cid,2536,1,500)

		elseif msgcontains(msg, 'scale legs') then
			sell(cid,2495,1,750)

		elseif msgcontains(msg, 'leather legs') then
			sell(cid,2517,1,1000)

		elseif msgcontains(msg, 'majin legs') then
			sell(cid,2647,1,10000)

		 elseif msgcontains(msg, 'kinto legs') then
			sell(cid,2647,1,10000)
		
		elseif msgcontains(msg, 'bandit legs') then
			sell(cid,2425,1,10000)

		elseif msgcontains(msg, 'soldier legs') then
			sell(cid,2468,1,12000)

		elseif msgcontains(msg, 'shadow legs') then
			sell(cid,2522,1,14000)

		elseif msgcontains(msg, 'bardock legs') then
			sell(cid,2460,1,15000)

		elseif msgcontains(msg, 'saiyan') then
			sell(cid,2649,1,15000)

		elseif msgcontains(msg, 'c17 legs') then
			sell(cid,2477,1,15000)

		elseif msgcontains(msg, 'speed legs') then
			sell(cid,2430,1,15000)

		elseif msgcontains(msg, 'gohan legs') then
			sell(cid,2478,1,20000)

		
		elseif msgcontains(msg, 'piccolo legs') then
			sell(cid,2488,1,25000)


		elseif msgcontains(msg, 'ussj legs') then
			sell(cid,2648,1,30000)

		elseif msgcontains(msg, 'ice legs') then
			sell(cid,2521,1,30000)

		elseif msgcontains(msg, 'vilage legs') then
			sell(cid,2540,1,40000)

		
		elseif msgcontains(msg, 'majin buu legs') then
			sell(cid,2539,1,50000)

		elseif msgcontains(msg, 'strong iron ice legs') then
			sell(cid,2525,1,50000)

		
		elseif msgcontains(msg, 'goku legs') then
			sell(cid,2504,1,75000)


		elseif msgcontains(msg, 'elite legs') then
			sell(cid,2523,1,75000)

		elseif msgcontains(msg, 'brolly legs') then
			sell(cid,2470,1,100000)

		elseif msgcontains(msg, 'super c17 legs') then
			sell(cid,2379,1,150000)

		elseif msgcontains(msg, 'goku gt legs') then
			sell(cid,2537,1,150000)

		elseif msgcontains(msg, 'goku ssj5 legs') then
			sell(cid,2469,1,200000)

						

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
