local pos = {x = 827, y = 123, z = 8} -- Posição inicial da sala.
local msg = "You came back, don't step on the traps or you will die"

function onStepIn(cid, item, fromPosition, toPosition)

if item.actionid == 9967 then

    local damage = math.floor(getCreatureMaxHealth(cid)/2) -- O dano é a divisão da vida do Player por 10.

        doCreatureAddHealth(cid, -damage)
	  doPlayerSendTextMessage(cid, 25, msg)
            doTeleportThing(cid, pos)

        end

    return true

end