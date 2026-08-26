function onAdvance(cid, skill, oldlevel, newlevel)
local pos  = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}
if skill == SKILL__LEVEL then
       doSendMagicEffect(pos, 15)
end
return true
end