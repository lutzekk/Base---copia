local tps = {
                        ["Estarossa Mission"] = {pos = {x=793, y=1065, z=7}, toPos = {x=835, y=1059, z=6}, time = 50},
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