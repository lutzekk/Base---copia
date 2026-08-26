local t = {
[2689] = {hp = 3000, ki = 5000, m = "Yeah!", s = 6318, exh = 1}, -- senzu
[6558] = {hp = 3000, ki = 2000, m = "Ahh!", s = 6319, exh = 1}, -- senzu leaf
[7443] = {hp = 5000, ki = 5000, m = "Uu!!", s = 6320, exh = 1}  -- senzu root

}
local function getItemType(item)
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid, 1)
	end
end

function onUse(cid, item, frompos, item2, topos)
local p = getPlayerPosition(cid)
local getDane = t[item.itemid]
	if(getDane) then
		if(os.time() > getPlayerStorageValue(cid, getDane.s)) then
		local rand = math.random(getDane.hp, getDane.ki)
			doCreatureAddMana(cid,rand)
			doCreatureAddHealth(cid,rand)
			--doSendAnimatedText(p, "+" ..rand, 18)
			doSendMagicEffect(p,23)
			doCreatureSay(cid, getDane.m, TALKTYPE_ORANGE_1)
			setPlayerStorageValue(cid, getDane.s, os.time() + getDane.exh)
			getItemType(item)

		else
			doSendMagicEffect(p, CONST_ME_POFF)
			doPlayerSendCancel(cid, "Cooldown: [".. getPlayerStorageValue(cid, getDane.s) - os.time() .."]")	
		end
	end
	return true
end


