local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
local pos = {x=99,y=189,z=7} -------------- Pos para onde o player sera levado

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Hey!.')
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

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getPlayerStorageValue(cid, 24333) == 9 then

				
                                
					selfSay('Feliz Natal Amiguinho!')
					focus = 0
					talk_start = 0

  	elseif msgcontains(msg, 'hi') and (focus == 0) and getPlayerStorageValue(cid, 24333) <= 8 then
  		selfSay('Por favor, ' .. getCreatureName(cid) .. 'ajude o Papai Noel encontrar as renas!')

  	elseif focus == cid then
		talk_start = os.clock()

			
				

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
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
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
