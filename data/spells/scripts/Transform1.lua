function onCastSpell(cid, var)
if getPlayerVocation(cid) == 1 then
if getPlayerLevel(cid) >= 30 then
doPlayerSetVocation(cid,2)
doCreatureChangeOutfit(cid, {lookType=30})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 55)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 30")
--_GOKU_--
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 2 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,3)
doCreatureChangeOutfit(cid, {lookType=18})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 56)
 setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 3 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,4)
doCreatureChangeOutfit(cid, {lookType=37})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 57)
 setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 4 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,5)
doCreatureChangeOutfit(cid, {lookType=70})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 59)
 setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 5 then
if getPlayerLevel(cid) >= 180 then
doPlayerSetVocation(cid,6)
 doCreatureChangeOutfit(cid, {lookType=354})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 180")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 6 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,7)
doCreatureChangeOutfit(cid, {lookType=259})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1 , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 8 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,9)
doCreatureChangeOutfit(cid, {lookType=138})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 9 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,10)
 doCreatureChangeOutfit(cid, {lookType=139})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - -0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 10 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,11)
 doCreatureChangeOutfit(cid, {lookType=140})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1 , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 11 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,12)
doCreatureChangeOutfit(cid, {lookType=729})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 60)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 12 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,13)
 doCreatureChangeOutfit(cid, {lookType=730})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1 , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--_vegeta_--
elseif getPlayerVocation(cid) == 14 then
if getPlayerLevel(cid) >= 30 then
doPlayerSetVocation(cid,15)
 doCreatureChangeOutfit(cid, {lookType=165})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 33)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 30")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 15 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,16)
 doCreatureChangeOutfit(cid, {lookType=166})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 175)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 16 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,17)
 doCreatureChangeOutfit(cid, {lookType=164})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 17 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,18)
 doCreatureChangeOutfit(cid, {lookType=4})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 79)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 18 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,19)
doCreatureChangeOutfit(cid, {lookType=54})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 80)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 20 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,21)
     doCreatureChangeOutfit(cid, {lookType=732})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 21 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,22)
     doCreatureChangeOutfit(cid, {lookType=733})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 22 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,23)
     doCreatureChangeOutfit(cid, {lookType=734})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 23 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,24)
     doCreatureChangeOutfit(cid, {lookType=735})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 81)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 24 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,25)
     doCreatureChangeOutfit(cid, {lookType=736})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1 , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--_gohan_--
elseif getPlayerVocation(cid) == 26 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,27)
     doCreatureChangeOutfit(cid, {lookType=64})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 51)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 27 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,28)
doCreatureChangeOutfit(cid, {lookType=81})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 52)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 28 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,29)
     doCreatureChangeOutfit(cid, {lookType=146})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 29 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,30)
     doCreatureChangeOutfit(cid, {lookType=147})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 31 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,32)
     doCreatureChangeOutfit(cid, {lookType=149})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 32 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,33)
 doCreatureChangeOutfit(cid, {lookType=151})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 33 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,34)
 doCreatureChangeOutfit(cid, {lookType=155})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 34 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,35)
 doCreatureChangeOutfit(cid, {lookType=216})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 54)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 35 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,36)
 doCreatureChangeOutfit(cid, {lookType=381})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--_Trunks_--
elseif getPlayerVocation(cid) == 37 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,38)
doCreatureChangeOutfit(cid, {lookType=23})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 38 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,39)


     doCreatureChangeOutfit(cid, {lookType=141})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 39 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,40)


     doCreatureChangeOutfit(cid, {lookType=212})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 40 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,41)


     doCreatureChangeOutfit(cid, {lookType=41})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 42 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,43)


     doCreatureChangeOutfit(cid, {lookType=162})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 43 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,44)


     doCreatureChangeOutfit(cid, {lookType=163})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 44 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,45)


     doCreatureChangeOutfit(cid, {lookType=9})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 45 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,46)


     doCreatureChangeOutfit(cid, {lookType=100})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 71)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 46 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,47)


     doCreatureChangeOutfit(cid, {lookType=374})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--_goten_--
elseif getPlayerVocation(cid) == 48 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,49)
doCreatureChangeOutfit(cid, {lookType=262})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 49 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,50)
doCreatureChangeOutfit(cid, {lookType=25})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 32)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 50 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,51)


     doCreatureChangeOutfit(cid, {lookType=24})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 51 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,52)


     doCreatureChangeOutfit(cid, {lookType=6})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 53 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,54)


     doCreatureChangeOutfit(cid, {lookType=145})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 54 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,55)


     doCreatureChangeOutfit(cid, {lookType=168})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 32)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 55 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,56)


     doCreatureChangeOutfit(cid, {lookType=169})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 56 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,57)


     doCreatureChangeOutfit(cid, {lookType=170})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 57 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,58)


     doCreatureChangeOutfit(cid, {lookType=367})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 60 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,61)
doCreatureChangeOutfit(cid, {lookType=197})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 61 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,62)


     doCreatureChangeOutfit(cid, {lookType=25})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 32)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 62 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,63)


     doCreatureChangeOutfit(cid, {lookType=24})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 63 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,64)


     doCreatureChangeOutfit(cid, {lookType=6})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 65 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,66)


     doCreatureChangeOutfit(cid, {lookType=163})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 66 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,67)


     doCreatureChangeOutfit(cid, {lookType=168})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 32)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 67 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,68)


     doCreatureChangeOutfit(cid, {lookType=169})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 68 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,69)


     doCreatureChangeOutfit(cid, {lookType=170})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 69 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,70)


     doCreatureChangeOutfit(cid, {lookType=367})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 71 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,72)
 doCreatureChangeOutfit(cid, {lookType=174})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 72 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,73)


     doCreatureChangeOutfit(cid, {lookType=175})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 73 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,74)


     doCreatureChangeOutfit(cid, {lookType=57})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 23)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 74 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,75)


     doCreatureChangeOutfit(cid, {lookType=106})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 76 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,77)


     doCreatureChangeOutfit(cid, {lookType=174})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 77 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,78)


     doCreatureChangeOutfit(cid, {lookType=175})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 78 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,79)


     doCreatureChangeOutfit(cid, {lookType=176})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 79 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,80)


     doCreatureChangeOutfit(cid, {lookType=177})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 80 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,81)


     doCreatureChangeOutfit(cid, {lookType=524})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 286)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 82 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,83)


     doCreatureChangeOutfit(cid, {lookType=274})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 83 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,84)


     doCreatureChangeOutfit(cid, {lookType=275})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 84 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,85)


     doCreatureChangeOutfit(cid, {lookType=276})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 85 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,86)


     doCreatureChangeOutfit(cid, {lookType=276})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 87 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,88)


     doCreatureChangeOutfit(cid, {lookType=221})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 88 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,89)


     doCreatureChangeOutfit(cid, {lookType=222})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 89 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,90)


     doCreatureChangeOutfit(cid, {lookType=224})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 90 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,91)


     doCreatureChangeOutfit(cid, {lookType=226})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 91 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,92)


     doCreatureChangeOutfit(cid, {lookType=370})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 286)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 93 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,94)


     doCreatureChangeOutfit(cid, {lookType=328})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 94 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,95)


     doCreatureChangeOutfit(cid, {lookType=341})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 95 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,96)


     doCreatureChangeOutfit(cid, {lookType=342})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 96 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,97)


     doCreatureChangeOutfit(cid, {lookType=80})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 98 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,99)


     doCreatureChangeOutfit(cid, {lookType=328})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 99 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,100)


     doCreatureChangeOutfit(cid, {lookType=341})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 100 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,101)


     doCreatureChangeOutfit(cid, {lookType=342})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 101 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,102)


     doCreatureChangeOutfit(cid, {lookType=355})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 6)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 102 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,103)


     doCreatureChangeOutfit(cid, {lookType=363})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 277)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 104 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,105)


     doCreatureChangeOutfit(cid, {lookType=526})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 105 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,106)


     doCreatureChangeOutfit(cid, {lookType=527})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 106 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,107)


     doCreatureChangeOutfit(cid, {lookType=528})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 107 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,108)


     doCreatureChangeOutfit(cid, {lookType=529})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 109 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,110)


     doCreatureChangeOutfit(cid, {lookType=526})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 110 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,111)


     doCreatureChangeOutfit(cid, {lookType=527})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 111 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,112)


     doCreatureChangeOutfit(cid, {lookType=528})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 112 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,113)


     doCreatureChangeOutfit(cid, {lookType=530})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 113 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,114)


     doCreatureChangeOutfit(cid, {lookType=531})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 115 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,116)


     doCreatureChangeOutfit(cid, {lookType=246})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 75)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 116 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,117)


     doCreatureChangeOutfit(cid, {lookType=236})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 76)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 117 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,118)


     doCreatureChangeOutfit(cid, {lookType=282})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 279)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 118 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,119)


     doCreatureChangeOutfit(cid, {lookType=235})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 280)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 120 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,121)


     doCreatureChangeOutfit(cid, {lookType=246})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 75)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 121 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,122)


     doCreatureChangeOutfit(cid, {lookType=236})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 76)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 122 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,123)


     doCreatureChangeOutfit(cid, {lookType=282})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 279)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 123 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,124)


     doCreatureChangeOutfit(cid, {lookType=235})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 280)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 124 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,125)


     doCreatureChangeOutfit(cid, {lookType=382})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 283)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 126 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,127)


     doCreatureChangeOutfit(cid, {lookType=101})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position,238)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 127 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,128)


     doCreatureChangeOutfit(cid, {lookType=105})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 240)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 128 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,129)


     doCreatureChangeOutfit(cid, {lookType=94})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 129 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,130)


     doCreatureChangeOutfit(cid, {lookType=119})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 131 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,132)


     doCreatureChangeOutfit(cid, {lookType=101})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 238)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 132 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,133)


     doCreatureChangeOutfit(cid, {lookType=105})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 240)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 133 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,134)


     doCreatureChangeOutfit(cid, {lookType=94})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 11)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 134 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,135)


     doCreatureChangeOutfit(cid, {lookType=181})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 135 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,136)


     doCreatureChangeOutfit(cid, {lookType=378})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 284)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 137 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,138)


     doCreatureChangeOutfit(cid, {lookType=534})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 17)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 138 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,139)


     doCreatureChangeOutfit(cid, {lookType=535})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 17)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 139 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,140)


     doCreatureChangeOutfit(cid, {lookType=536})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 140 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,141)


     doCreatureChangeOutfit(cid, {lookType=537})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 142 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,143)


     doCreatureChangeOutfit(cid, {lookType=534})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 17)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 143 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,144)


     doCreatureChangeOutfit(cid, {lookType=535})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 17)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 144 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,145)


     doCreatureChangeOutfit(cid, {lookType=536})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 145 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,146)


     doCreatureChangeOutfit(cid, {lookType=537})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 146 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,147)


     doCreatureChangeOutfit(cid, {lookType=538})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 148 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,149)


     doCreatureChangeOutfit(cid, {lookType=83})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 149 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,150)


     doCreatureChangeOutfit(cid, {lookType=35})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 176)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 150 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,151)


     doCreatureChangeOutfit(cid, {lookType=2})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 190)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 151 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,152)


     doCreatureChangeOutfit(cid, {lookType=2})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 190)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 153 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,154)


     doCreatureChangeOutfit(cid, {lookType=83})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 154 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,155)


     doCreatureChangeOutfit(cid, {lookType=539})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 176)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 155 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,156)


     doCreatureChangeOutfit(cid, {lookType=153})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 190)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 156 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,157)


     doCreatureChangeOutfit(cid, {lookType=116})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 190)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 157 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,158)


     doCreatureChangeOutfit(cid, {lookType=375})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 284)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 159 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,160)


     doCreatureChangeOutfit(cid, {lookType=78})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 160 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,161)


     doCreatureChangeOutfit(cid, {lookType=55})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 176)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 161 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,162)


     doCreatureChangeOutfit(cid, {lookType=16})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 162 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,163)


     doCreatureChangeOutfit(cid, {lookType=16})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 164 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,165)


     doCreatureChangeOutfit(cid, {lookType=78})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 165 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,166)


     doCreatureChangeOutfit(cid, {lookType=55})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 176)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 166 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,167)


     doCreatureChangeOutfit(cid, {lookType=183})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 167 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,168)


     doCreatureChangeOutfit(cid, {lookType=31})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 14)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 168 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,169)


     doCreatureChangeOutfit(cid, {lookType=376})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 284)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 170 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,171)


     doCreatureChangeOutfit(cid, {lookType=68})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 171 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,172)


     doCreatureChangeOutfit(cid, {lookType=74})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 172 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,173)


     doCreatureChangeOutfit(cid, {lookType=189})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 173 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,174)


     doCreatureChangeOutfit(cid, {lookType=142})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 175 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,176)


     doCreatureChangeOutfit(cid, {lookType=68})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 176 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,177)


     doCreatureChangeOutfit(cid, {lookType=74})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 5)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 177 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,178)


     doCreatureChangeOutfit(cid, {lookType=189})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 178 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,179)


     doCreatureChangeOutfit(cid, {lookType=142})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 276)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 179 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,180)


     doCreatureChangeOutfit(cid, {lookType=369})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 285)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 181 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,182)


     doCreatureChangeOutfit(cid, {lookType=114})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 182 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,183)


     doCreatureChangeOutfit(cid, {lookType=218})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 183 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,184)


     doCreatureChangeOutfit(cid, {lookType=219})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 184 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,185)


     doCreatureChangeOutfit(cid, {lookType=63})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 186 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,187)


     doCreatureChangeOutfit(cid, {lookType=114})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 187 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,188)


     doCreatureChangeOutfit(cid, {lookType=218})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 82)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 188 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,189)


     doCreatureChangeOutfit(cid, {lookType=219})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 279)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 189 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,190)


     doCreatureChangeOutfit(cid, {lookType=203})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 280)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 190 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,191)


     doCreatureChangeOutfit(cid, {lookType=368})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 283)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 192 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,193)


     doCreatureChangeOutfit(cid, {lookType=171})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 193 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,194)


     doCreatureChangeOutfit(cid, {lookType=215})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 194 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,195)


     doCreatureChangeOutfit(cid, {lookType=136})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 195 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,196)


     doCreatureChangeOutfit(cid, {lookType=179})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 197 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,198)


     doCreatureChangeOutfit(cid, {lookType=214})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 198 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,199)


     doCreatureChangeOutfit(cid, {lookType=541})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 199 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,200)


     doCreatureChangeOutfit(cid, {lookType=220})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 200 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,201)


     doCreatureChangeOutfit(cid, {lookType=549})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 265)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 201 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,202)


     doCreatureChangeOutfit(cid, {lookType=366})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 284)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 203 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,204)


     doCreatureChangeOutfit(cid, {lookType=191})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 204 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,205)


     doCreatureChangeOutfit(cid, {lookType=103})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 205 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,206)


     doCreatureChangeOutfit(cid, {lookType=47})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 206 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,207)


     doCreatureChangeOutfit(cid, {lookType=193})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 208 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,209)


     doCreatureChangeOutfit(cid, {lookType=191})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 209 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,210)


     doCreatureChangeOutfit(cid, {lookType=192})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 210 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,211)


     doCreatureChangeOutfit(cid, {lookType=103})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 211 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,212)


     doCreatureChangeOutfit(cid, {lookType=245})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 113)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 212 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,213)


     doCreatureChangeOutfit(cid, {lookType=379})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 284)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 214 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,215)


     doCreatureChangeOutfit(cid, {lookType=194})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 13)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 215 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,216)


     doCreatureChangeOutfit(cid, {lookType=196})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 13)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 216 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,217)


     doCreatureChangeOutfit(cid, {lookType=199})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 13)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 217 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,218)


     doCreatureChangeOutfit(cid, {lookType=200})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 219 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,220)


     doCreatureChangeOutfit(cid, {lookType=196})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 13)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 220 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,221)


     doCreatureChangeOutfit(cid, {lookType=234})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 13)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 221 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,222)


     doCreatureChangeOutfit(cid, {lookType=249})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 222 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,223)


     doCreatureChangeOutfit(cid, {lookType=272})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 38)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 223 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,224)
     doCreatureChangeOutfit(cid, {lookType=380})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 225 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,226)
     doCreatureChangeOutfit(cid, {lookType=423})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 226 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,227)
     doCreatureChangeOutfit(cid, {lookType=8})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 228 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,229)
     doCreatureChangeOutfit(cid, {lookType=423})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 12)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 229 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,230)
     doCreatureChangeOutfit(cid, {lookType=424})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 111)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 230 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,231)
     doCreatureChangeOutfit(cid, {lookType=425})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 112)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 231 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,232)
     doCreatureChangeOutfit(cid, {lookType=426})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 282)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 233 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,234)
 doCreatureChangeOutfit(cid, {lookType=280})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 30)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 234 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,235)


     doCreatureChangeOutfit(cid, {lookType=120})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 30)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 235 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,236)


     doCreatureChangeOutfit(cid, {lookType=110})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 30)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 236 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,237)


     doCreatureChangeOutfit(cid, {lookType=134})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 21)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 238 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,239)


     doCreatureChangeOutfit(cid, {lookType=280})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 21)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 239 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,240)


     doCreatureChangeOutfit(cid, {lookType=120})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 21)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 240 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,241)


     doCreatureChangeOutfit(cid, {lookType=110})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 21)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 241 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,242)


     doCreatureChangeOutfit(cid, {lookType=134})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 21)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 242 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,243)


     doCreatureChangeOutfit(cid, {lookType=372})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 285)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end









elseif getPlayerVocation(cid) == 266 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,267)
 doCreatureChangeOutfit(cid, {lookType=641})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 437)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 267 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,268)
 doCreatureChangeOutfit(cid, {lookType=642})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 437)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 268 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,269)
 doCreatureChangeOutfit(cid, {lookType=643})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 279)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 269 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,270)
 doCreatureChangeOutfit(cid, {lookType=644})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 280)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 271 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,272)
 doCreatureChangeOutfit(cid, {lookType=641})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 437)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 272 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,273)
 doCreatureChangeOutfit(cid, {lookType=642})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 437)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 273 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,274)
 doCreatureChangeOutfit(cid, {lookType=643})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 279)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 274 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,275)
 doCreatureChangeOutfit(cid, {lookType=644})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 280)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 275 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,276)
 doCreatureChangeOutfit(cid, {lookType=645})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 283)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end









elseif getPlayerVocation(cid) == 278 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,279)
 doCreatureChangeOutfit(cid, {lookType=684})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 279 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,280)
 doCreatureChangeOutfit(cid, {lookType=685})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 280 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,281)
 doCreatureChangeOutfit(cid, {lookType=686})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 281 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,282)
 doCreatureChangeOutfit(cid, {lookType=687})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 444)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 283 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,284)
 doCreatureChangeOutfit(cid, {lookType=689})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 284 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,285)
 doCreatureChangeOutfit(cid, {lookType=690})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 285 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,286)
 doCreatureChangeOutfit(cid, {lookType=691})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 436)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 286 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,287)
 doCreatureChangeOutfit(cid, {lookType=692})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 444)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 287 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,288)
 doCreatureChangeOutfit(cid, {lookType=694})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 285)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 290 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,291)
 doCreatureChangeOutfit(cid, {lookType=658})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 348)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 291 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,292)
 doCreatureChangeOutfit(cid, {lookType=659})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 348)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 292 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,293)
 doCreatureChangeOutfit(cid, {lookType=660})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 348)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 293 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,294)
 doCreatureChangeOutfit(cid, {lookType=661})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 348)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 295 then
if getPlayerLevel(cid) >= 50 then
doPlayerSetVocation(cid,296)
 doCreatureChangeOutfit(cid, {lookType=658})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 343)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 50")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 296 then
if getPlayerLevel(cid) >= 100 then
doPlayerSetVocation(cid,297)
 doCreatureChangeOutfit(cid, {lookType=659})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 343)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 100")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 297 then
if getPlayerLevel(cid) >= 150 then
doPlayerSetVocation(cid,298)
 doCreatureChangeOutfit(cid, {lookType=660})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 343)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 150")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 298 then
if getPlayerLevel(cid) >= 200 then
doPlayerSetVocation(cid,299)
 doCreatureChangeOutfit(cid, {lookType=661})
local pos = getCreaturePosition(cid)
local position = {x = pos.x , y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 343)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 200")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
elseif getPlayerVocation(cid) == 299 then
if getPlayerLevel(cid) >= 400 then
doPlayerSetVocation(cid,300)
 doCreatureChangeOutfit(cid, {lookType=662})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 1, y = pos.y - 0 , z = pos.z}
doSendMagicEffect(position, 286)
     setPlayerStorageValue(cid,31511,1)
else
doPlayerSendCancel(cid, "You Need Lvl 400")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end



















doPlayerSendCancel(cid, "You Can´t Transform")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end

return true
     end


