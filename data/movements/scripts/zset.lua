local message = [[
Zamasu Set

it is achieved in :
craftable set
you need goku training set and the corresponding cards

Special Bonus : 
All set attributes +40 Critical,Strength,Distance,Attack speed.
One item +10 Critical,Strength,Distance,Attack speed.

]]

		--Mensagem que aparecerá ao pisar no tile.

function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    doPlayerPopupFYI(cid, message)
    return true
end