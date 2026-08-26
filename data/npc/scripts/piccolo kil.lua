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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell namek power 50$, makankosappo power 100$, light,blue,dark ki 5 zeni each, makankosappo 20 zeni each and strong makankosappo 1$ each.')
focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'namek power') then
			buy(cid,2456,1,5000)

		elseif msgcontains(msg, 'makankosappo power') then
			buy(cid,2455,1,10000)

		elseif msgcontains(msg, 'light') then
			buy(cid,2544,getCount(msg),5)

		elseif msgcontains(msg, 'blue') then
			buy(cid,2545,getCount(msg),5)

		
		elseif msgcontains(msg, 'dark') then
			buy(cid,2546,getCount(msg),5)

		elseif msgcontains(msg, 'makanko') then
			buy(cid,2543,getCount(msg),20)

		elseif msgcontains(msg, 'strong') then
			buy(cid,2547,getCount(msg),100)
		

		
		
		
						

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
