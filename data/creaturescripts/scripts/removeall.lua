function onKill(cid, target, lastHit)

local M ={
["Goku Quest"] = {Pos = {x=88,y=1217,z=7},id= 7530 ,time = 120},
["Vegeta Quest"] = {Pos = {x=87,y=1217,z=7},id= 7533 ,time = 120},
["Brolly Quest"] = {Pos = {x=86,y=1217,z=7},id= 7538 ,time = 120},
["Tsuful Quest"] = {Pos = {x=85,y=1217,z=7},id= 7536 ,time = 120},
["Cell Quest"] = {Pos = {x=84,y=1217,z=7},id= 7534 ,time = 120},

}

local x = M[getCreatureName(target)]
function criar()
	local parede = getTileItemById(x.Pos, x.id)
	doCreateItem(x.id, 1, x.Pos)
	end
	

if x then
	local parede = getTileItemById(x.Pos, x.id)
	if parede then
			doRemoveItem(parede.uid, 1)
			 doCreatureSay(cid, "the statue will be created in "..x.time.." minutes.", TALKTYPE_ORANGE_1)
			addEvent(criar, x.time*60*1000)
	end
end
 return TRUE
end