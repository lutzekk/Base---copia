local tps = {
                        ["Freeza Mission"] = {pos = {x=608, y=1932, z=15}, toPos = {x=590, y=1988, z=7}, time = 50},
}
local function removeTp(tp)
local t = getTileItemById(tp.pos, 1387).uid
return t > 0 and doRemoveItem(t) and doSendMagicEffect(tp.pos, CONST_ME_POFF)
end
function onDeath(cid)
                        local tp = tps[getCreatureName(cid)]
                        if tp then
                        doCreateTeleport(1387, tp.toPos, tp.pos)
                        doCreatureSay(cid, "Hahaha, Voltarei!!..O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
                        addEvent(removeTp, tp.time*1000, tp)
                        end
                        return true
end