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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell all armors.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'tunic') then
			buy(cid,2467,1,5000)

		elseif msgcontains(msg, 'elven jacket') then
			buy(cid,2505,1,10000)

		elseif msgcontains(msg, 'black coat') then
			buy(cid,2651,1,15000)

		elseif msgcontains(msg, 'fighter armor') then
			buy(cid,2535,1,50000)

		
		elseif msgcontains(msg, 'fat armor') then
			buy(cid,2650,1,50000)

		
		elseif msgcontains(msg, 'jacket of master roshi') then
			buy(cid,2485,1,75000)

		elseif msgcontains(msg, 'tao armor') then
			buy(cid,2484,1,80000)

		elseif msgcontains(msg, 'roshi turtle') then
			buy(cid,3983,1,90000)

		
		elseif msgcontains(msg, 'goku coat') then
			buy(cid,2465,1,100000)


		elseif msgcontains(msg, 'sport jacket') then
			buy(cid,2534,1,120000)

		elseif msgcontains(msg, 'scale armor') then
			buy(cid,2503,1,150000)

		elseif msgcontains(msg, 'goten armor') then
			buy(cid,2654,1,200000)

		
		elseif msgcontains(msg, 'piccolo armor') then
			buy(cid,2489,1,30000)

		elseif msgcontains(msg, 'black power armor') then
			buy(cid,2464,1,350000)

		
		elseif msgcontains(msg, 'red power armor') then
			buy(cid,2500,1,350000)

		elseif msgcontains(msg, 'raditz armor') then
			buy(cid,2486,1,400000)

		
		elseif msgcontains(msg, 'soldier armor') then
			buy(cid,2660,1,500000)

		elseif msgcontains(msg, 'ice armor') then
			buy(cid,2523,1,600000)

		
		elseif msgcontains(msg, 'future trunks armor') then
			buy(cid,2531,1,800000)

		elseif msgcontains(msg, 'vilage armor') then
			buy(cid,2513,1,1000000)

		
		elseif msgcontains(msg, 'saiyan armor') then
			buy(cid,2466,1,1200000)

		elseif msgcontains(msg, 'c17 armor') then
			buy(cid,2476,1,1500000)

		elseif msgcontains(msg, 'c18 armor') then
			buy(cid,2508,1,1500000)

		elseif msgcontains(msg, 'gohan armor') then
			buy(cid,2487,1,2000000)

		elseif msgcontains(msg, 'elite vilage armor') then
			buy(cid,2509,1,2500000)

		elseif msgcontains(msg, 'c16 armor') then
			buy(cid,2664,1,2500000)

		elseif msgcontains(msg, 'bardock armor') then
			buy(cid,2658,1,3000000)

		elseif msgcontains(msg, 'ussj armor') then
			buy(cid,2483,1,3500000)

		elseif msgcontains(msg, 'magma') then
			buy(cid,3969,1,3500000)

		elseif msgcontains(msg, 'majin armor') then
			buy(cid,2463,1,4000000)

		elseif msgcontains(msg, 'piccolo robe') then
			buy(cid,2656,1,4500000)

		elseif msgcontains(msg, 'frozen armor') then
			buy(cid,2657,1,5000000)

		elseif msgcontains(msg, 'goku armor') then
			buy(cid,2472,1,7500000)

		elseif msgcontains(msg, 'tsuful armor') then
			buy(cid,2542,1,8000000)

		elseif msgcontains(msg, 'dark') then
			buy(cid,3971,1,10000)				

		elseif msgcontains(msg, 'punk') then
			buy(cid,3970,1,15000)

		elseif msgcontains(msg, 'bandit') then
			buy(cid,2426,1,150000)

		elseif msgcontains(msg, 'great saiyaman') then
			buy(cid,2389,1,7500000)

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
