local message = [[
Goku Training Set

it is achieved in :
Quest LvL:400 in Vegeta

Special Bonus : 
All set attributes +28 Critical,Strength,Distance,Attack speed.
One item +7 Critical,Strength,Distance,Attack speed.

]]

		--Mensagem que aparecerá ao pisar no tile.

function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    doPlayerPopupFYI(cid, message)
    return true
end