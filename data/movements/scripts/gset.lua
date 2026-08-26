local message = [[
God Set

it is achieved in :
craftable set
you need fusion set and the corresponding cards

Special Bonus : 
All set regenerates 3200 hp/mp x second.
One item 800 hp/mp x second.

]]

		--Mensagem que aparecerá ao pisar no tile.

function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    doPlayerPopupFYI(cid, message)
    return true
end