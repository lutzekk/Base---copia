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

 


  if msgcontains(msg, 'hi') then

selfSay('Hey, I need potara, do you have that?')
  focus = cid
  talk_start = os.clock()

 elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

elseif focus == cid then
talk_start = os.clock()



                      if msgcontains(msg, 'yes') then
if (getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or (getPlayerVocation(cid) >= 15 and getPlayerVocation(cid) <= 26) or getPlayerVocation(cid) == 37 or getPlayerVocation(cid) == 363) then
if (getPlayerStorageValue(cid,8000) >= 49) then
                     if doPlayerRemoveItem(cid,2353,1) == 0 then
                     selfSay('Sorry you dont have potara.') 
else
doPlayerSetVocation(cid,388)
doSetOutfit(cid,422) 
selfSay('Congratulations.')

end

else
  selfSay('Sorry you cant do this quest now.') 
end
else
  selfSay('Sorry your vocation cant do this quest.') 
end


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