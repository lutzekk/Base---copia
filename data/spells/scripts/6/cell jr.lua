function onCastSpell(cid, var) 
local pos = getPlayerPosition(cid) 
pos.stackpos = 0 
local grounditem = getThingfromPos(pos) 

if getSummon(cid) < 2 then 
doPlayerSummonMonster(cid, "Summon Cell Jr", getPlayerPosition(cid)) 
doPlayerSummonMonster(cid, "Summon Cell Jr", getPlayerPosition(cid)) 
doPlayerSummonMonster(cid, "Summon Cell Jr", getPlayerPosition(cid)) 
doPlayerSummonMonster(cid, "Summon Cell Jr", getPlayerPosition(cid)) 


 doSendMagicEffect(pos, CONST_ME_ENERGYAREA) 
 return LUA_NO_ERROR 
else 
 doPlayerSendCancel(cid, "You cannot have more summons.") 
 doSendMagicEffect(pos, CONST_ME_POFF) 
 return LUA_ERROR 
end 
end 
