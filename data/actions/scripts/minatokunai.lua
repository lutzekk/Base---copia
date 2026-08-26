function onUse(cid, item, fromPosition, itemEx, toPosition)
local pos = fromPosition
local aqui = getPlayerPosition(cid)
local vocs = {440, 441, 442, 443, 444, 445, 446, 447, 448, 449 , 450 , 451 , 452}
local agua = {708,709,710,11,4610, 4612, 4611, 4664, 4613, 4666, 4646, 4654, 4609, 4665, 4608, 4625, 4665, 4666, 4645, 599, 601, 598, 600}
local parede = {1834, 1030, 1029, 1025, 1026, 1027, 1259, 1028, 1029, 1032, 1034, 1033, 1536, 6850, 7028, 6843, 6853, 6850, 9062, 7027, 1533, 873, 919, 874, 1037, 2700, 2708, 4472, 4475, 4471, 3388, 3373, 3363, 3398, 3408, 3417, 3420, 3407, 3368, 2701, 5130, 6170, 6166, 1596, 3361, 3362, 3363, 3364, 3365, 3366, 3367, 3368, 3369, 3370, 3371, 3372, 3373, 3374, 3375, 3376, 3377, 3378, 3379, 3380, 3381, 3382, 3383, 3384, 3385, 3386, 3387, 3388, 3389, 3390, 3391, 3392, 3393, 3394, 3395, 3396, 3397, 3398, 3399, 3400, 3401, 3402, 3403, 3404, 3405, 3406, 3407, 3408, 3409, 3410, 3411, 3412, 3413, 3414, 3415, 3416, 3417, 3418, 3419, 3420, 3421, 3422 , 14205 , 14206 , 14204 , 14207 , 14210 , 2604 , 13727 , 13724 , 13725 , 13726 , 10249 , 10250 , 10253 , 10251 , 14258 , 14259 , 14261 , 14260 , 14224 , 14248 , 493 , 13805 , 14321 , 14320 , 13691 , 13690 , 5419 , 13804 , 14188 , 14189 , 9495 , 9456 , 2061 , 2069 , 9415 , 1812 , 9416 , 14145 , 14142 , 14303 , 14247 , 2758 , 2755 , 2757 , 1384 , 1383, 1381 , 1382 , 1380 , 1379 , 5660 , 2768 , 1534 , 1535 , 1536 , 1038}
local pedra = {874, 919, 873, 2707, 2784, 2778, 3330, 4471, 4475, 4473, 4472, 4474, 4468, 4478, 4469, 4470, 4479, 2703, 2704, 1534, 2739, 3867, 5324, 5316, 5315, 5317, 1600, 1597, 1601}
 
	if getDistanceBetween(aqui, toPosition) >= 5 then
		return doPlayerSendTextMessage(cid, 27, "Está muito longe.") 
	elseif(not(isSightClear(aqui, toPosition, 1))) then
		return doPlayerSendTextMessage(cid, 27, "Isso é impossivel.") 
	elseif(getTilePzInfo(aqui)) then
		return doPlayerSendCancel(cid, "Não pode usar a tecnica Deus Dragão em casas ou areas protegidas.") 
	elseif(getTilePzInfo(toPosition)) then
		return doPlayerSendCancel(cid, "Não pode usar a tecnica Deus Dragão em casas ou areas protegidas.") 
	elseif(isInArray(agua, itemEx.itemid)) then
		return doPlayerSendTextMessage(cid, 27, "voce nao pode usar em agua") 
	elseif(isInArray(parede, itemEx.itemid)) then
		return doPlayerSendTextMessage(cid, 27, "voce nao pode usar em paredes") 
	elseif(isInArray(pedra, itemEx.itemid)) then
		return doPlayerSendTextMessage(cid, 27, "voce nao pode usar em pedras") 
	elseif(not(isInArray(vocs, getPlayerVocation(cid)))) then
		return doPlayerSendTextMessage(cid, 27, "Desculpe, Apenas Tobirama pode usar a tecnica Deus Dragão.")
	elseif(isCreature(itemEx.uid)) then
		return doPlayerSendTextMessage(cid, 27, "Desculpe, mas você não pode teletransportar em criaturas.")
	end
 
	if(doTeleportThing(cid, toPosition, false)) then
		doSendMagicEffect(pos, 10)
		doSendMagicEffect(toPosition, 9)
		doCreatureSay(cid, "Shunshin", 19)
		return doSendDistanceShoot(pos, toPosition, 158)
	end
	 
	return doPlayerSendCancel(cid, "Desculpe nao foi possivel.")
end