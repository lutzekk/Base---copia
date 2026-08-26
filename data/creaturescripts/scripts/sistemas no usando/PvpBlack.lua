local storage = 27000


local timeeffect = getPlayerStorageValue(cid, 27000)

function onLogin(cid)




function effect()
if isPlayer(cid) then
local pos = getCreaturePosition(cid)
doSendMagicEffect(pos, math.random(10,30))
end
end
if getPlayerStorageValue(cid, 27000) - os.time() > 0 then
a = 1
while a ~= timeEffect do
addEvent(effect, a * 1000)
a = a + 1
end
end
return true
end