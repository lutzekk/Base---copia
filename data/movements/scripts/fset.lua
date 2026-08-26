local message = [[
Fusion Set

it is achieved in :
Quest LvL:300 in Frozen City.

Special Bonus : 
All set regenerates 2000 hp/mp x second.
One item 500 hp/mp x second.

]]

		--Mensagem que aparecerá ao pisar no tile.

function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    doPlayerPopupFYI(cid, message)
    return true
end