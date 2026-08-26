local tps = {
                        ["Gedou Tp"] = {pos = {x=759, y=1657, z=7}, toPos = {x=1028, y=1065, z=7}, time = 50},
}
local function removeTp(tp)
local t = getTileItemById(tp.pos, 13912).uid
return t > 0 and doRemoveItem(t) and doSendMagicEffect(tp.pos, CONST_ME_POFF)
end
function onDeath(cid)
                        local tp = tps[getCreatureName(cid)]
                        if tp then
                        doCreateTeleport(13912, tp.toPos, tp.pos)
                        doCreatureSay(cid, "Hahaha, Voltarei!!..O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
                        addEvent(removeTp, tp.time*1000, tp)
                        end
                        return true
end