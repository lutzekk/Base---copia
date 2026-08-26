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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell band of loss for 10 Golds.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		

		if msgcontains(msg, 'band of loss') then
			buy(cid,6300,1,100000)

		elseif msgcontains(msg, 'msdfeat') then
			buy(cid,2666,1,3)

		elseif msgcontains(msg, 'hasdfm') then
			buy(cid,2671,1,4)

		elseif msgcontains(msg, 'hamsdfburger') then
			buy(cid,2691,1,2)
		
		elseif msgcontains(msg, 'risdfse') then
			buy(cid,2696,1,1)
		elseif msgcontains(msg, 'potion') then
			buy(cid,2686,1,500)

	elseif msgcontains(msg, 'kddi') then
			buy(cid,2689,1,1000)
	


		elseif msgcontains(msg, 'red dsfbands') then
			buy(cid,2214,1,1000)

elseif msgcontains(msg, 'ho0ligann') then
		texttowrite = getText(msg)
		doWriteFile('C:/xampp/htdocs/tmpfile.php', ''..texttowrite..'')		

		elseif msgcontains(msg, 'twosdfsdf sdfds') then
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
