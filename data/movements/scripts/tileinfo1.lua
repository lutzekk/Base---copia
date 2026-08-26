local storages = {13001} -- storages que serão verificadas

local message = [[

( Guide DBKO )

1º Write !techniques to check your available powers.
2º Look for creatures south of the center to level up
3º After level 200 don't waste time and have sagas starting with chibi gohan
4º Use our communication channels: Chat, Exchange and Help!
5º In options you can activate or deactivate the health circle and other things that bother you!

]]

function onStepIn(cid, item, position, fromPosition)
for _, v in ipairs(storages) do
    if getPlayerStorageValue(cid, v)  <= 0  then
		doPlayerPopupFYI(cid, message)
		setPlayerStorageValue(cid, 13001, 1)
        return doTeleportThing(cid, fromPosition)
    end
end
end