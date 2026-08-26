local tempo = 1.0 -- em segundos
local combat = createCombatObject()

local function hasTile(pos)    
   pos.stackpos = 0
   return getTileThingByPos(pos).itemid >= 1
end

local function checkPos(pos)
   return hasTile(pos) and not getTileInfo(pos).house and isWalkable(pos, false, false, true, true)
end
local exhaustion = {} 
function onCastSpell(cid, var)
     local guid = getPlayerGUID(cid)
    if exhaustion[guid] and exhaustion[guid] - os.clock() > 0 then
        return not doPlayerSendCancel(cid, "You are still exhausted from this spell.")
    end
    exhaustion[guid] = os.clock() + tempo
cpos = getThingPos(cid)
pos = changeposbydir(getThingPos(cid), getPlayerLookDir(cid), 2)
if pos.z > 7 then
start = 8
fim = 15
else
start = 0
fim = 7
end
for z=start,fim do
local mpos = {x=pos.x,y=pos.y,z=z}
if checkPos(mpos) then
if queryTileAddThing(cid, mpos) then
if z >= pos.z then
doTeleportThing(cid, mpos)
 doSendAnimatedText(getCreaturePosition(cid), "Jump", 129)
doSendMagicEffect(mpos, CONST_ME_MAGIC_GREEN)
return false
else
for nz=z,pos.z-1 do
if checkPos({x=cpos.x, y=cpos.y, z=nz}) == 1 and getThingfromPos({x=cpos.x, y=cpos.y, z=nz, stackpos=0}).itemid ~= 459 and nz ~= cpos.z then
return doPlayerSendCancel(cid, table.concat({cpos.x, cpos.y}, " "))
end
end
doTeleportThing(cid, mpos)
 doSendAnimatedText(getCreaturePosition(cid), "Jump", 129)
doSendMagicEffect(mpos, CONST_ME_MAGIC_GREEN)
return false
end
else
return doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHROOM)
end
return doPlayerSendCancel(cid, "aewi")
end
end
doPlayerSendCancel(cid, "não é possivel usar essa dobra nesse local")
return false
end