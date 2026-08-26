local message = [[
Event Set

it is achieved in :
Buying at the npc shop event paying for events points.

Special Bonus : 
All set regenerates 2000 hp/mp x second,+40 Critical,Strength,Distance.
One item 500 hp/mp x second,+10 Critical,Strength,Distance.

]]

		--Mensagem que aparecerá ao pisar no tile.

function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    doPlayerPopupFYI(cid, message)
    return true
end