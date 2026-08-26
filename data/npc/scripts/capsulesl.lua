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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell backpack 1$, green,blue,red,silver capsule 10$ each, present 5$ and bag 2 zeni.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		

		if msgcontains(msg, 'backpack') then
			buy(cid,1988,1,100)

		elseif msgcontains(msg, 'green capsule') then
			buy(cid,1998,1,1000)

		elseif msgcontains(msg, 'blue capsule') then
			buy(cid,1999,1,1000)

		elseif msgcontains(msg, 'silver capsule') then
			buy(cid,2002,1,1000)
		
		elseif msgcontains(msg, 'red capsule') then
			buy(cid,2001,1,1000)
	
		elseif msgcontains(msg, 'bag') then
			buy(cid,1987,1,2)

		elseif msgcontains(msg, 'present') then
			buy(cid,1993,1,500)
		

		elseif msgcontains(msg, 'red bands') then
			buy(cid,2214,1,1000)

		elseif msgcontains(msg, 'two tones bands') then
			buy(cid,2166,1,1000)

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
