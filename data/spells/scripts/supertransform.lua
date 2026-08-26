function onCastSpell(cid, var)
    local storage = 5432 -- Storage para pdoer usar a spell 
    if getCreatureStorage(cid, storage) == -1 then
        doPlayerSendTextMessage(cid, 27, "you must unlock the transform in quest.")
        return false
    

	end

--_GOKU_--
if getPlayerVocation(cid) == 13 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,244)
doCreatureChangeOutfit(cid, {lookType=606})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 412)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--vegeta--
elseif getPlayerVocation(cid) == 25 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,245)
doCreatureChangeOutfit(cid, {lookType=616})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 412)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--gohan--
elseif getPlayerVocation(cid) == 36 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,246)
doCreatureChangeOutfit(cid, {lookType=603})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--trunks--
elseif getPlayerVocation(cid) == 47 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,247)
doCreatureChangeOutfit(cid, {lookType=604})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 412)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--goten--
elseif getPlayerVocation(cid) == 58 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,248)
doCreatureChangeOutfit(cid, {lookType=616})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--chibi trunks--
elseif getPlayerVocation(cid) == 70 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,249)
doCreatureChangeOutfit(cid, {lookType=614})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--piccolo--
elseif getPlayerVocation(cid) == 81 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,250)
doCreatureChangeOutfit(cid, {lookType=611})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 409)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--dende--
elseif getPlayerVocation(cid) == 92 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,251)
doCreatureChangeOutfit(cid, {lookType=618})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 409)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--shin--
elseif getPlayerVocation(cid) == 103 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,252)
doCreatureChangeOutfit(cid, {lookType=609})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 412)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--tenshihan--
elseif getPlayerVocation(cid) == 114 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,253)
doCreatureChangeOutfit(cid, {lookType=654})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--uub--
elseif getPlayerVocation(cid) == 125 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,254)
doCreatureChangeOutfit(cid, {lookType=602})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 408)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--freeza--
elseif getPlayerVocation(cid) == 136 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,255)
doCreatureChangeOutfit(cid, {lookType=600})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--brolly--
elseif getPlayerVocation(cid) == 147 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,256)
doCreatureChangeOutfit(cid, {lookType=610})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--c17--
elseif getPlayerVocation(cid) == 158 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,257)
doCreatureChangeOutfit(cid, {lookType=605})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 410)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--c18--
elseif getPlayerVocation(cid) == 169 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,258)
doCreatureChangeOutfit(cid, {lookType=613})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 410)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--cell--
elseif getPlayerVocation(cid) == 180 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,259)
doCreatureChangeOutfit(cid, {lookType=655})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 409)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--buu--
elseif getPlayerVocation(cid) == 191 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,260)
doCreatureChangeOutfit(cid, {lookType=599})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 408)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--tsuful--
elseif getPlayerVocation(cid) == 202 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,261)
doCreatureChangeOutfit(cid, {lookType=615})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 413)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--cooler--
elseif getPlayerVocation(cid) == 213 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,262)
doCreatureChangeOutfit(cid, {lookType=656})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 406)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--bardock--
elseif getPlayerVocation(cid) == 224 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,263)
doCreatureChangeOutfit(cid, {lookType=598})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 405)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--Vegetto--
elseif getPlayerVocation(cid) == 232 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,265)
doCreatureChangeOutfit(cid, {lookType=607})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 412)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--janemba--
elseif getPlayerVocation(cid) == 243 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,264)
doCreatureChangeOutfit(cid, {lookType=617})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 413)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--Black Goku--
elseif getPlayerVocation(cid) == 276 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,277)
doCreatureChangeOutfit(cid, {lookType=646})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 411)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--jiren--
elseif getPlayerVocation(cid) == 288 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,289)
doCreatureChangeOutfit(cid, {lookType=693})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 413)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end
--c16--
elseif getPlayerVocation(cid) == 300 then
if getPlayerLevel(cid) >= 600 then
doPlayerSetVocation(cid,301)
doCreatureChangeOutfit(cid, {lookType=663})
local pos = getCreaturePosition(cid)
local position = {x = pos.x + 3, y = pos.y + 1 , z = pos.z}
doSendMagicEffect(position, 409)
     setPlayerStorageValue(cid,31510,1)
else
doPlayerSendCancel(cid, "You Need Lvl 600")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end

























doPlayerSendCancel(cid, "You Can´t Transform")
        doSendMagicEffect(getPlayerPosition(cid), 2) 
end

return true
     end