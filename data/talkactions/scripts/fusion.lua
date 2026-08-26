local function doFusion(cid, v1, v2, level, out, mana, manalose)
	if(getPlayerVocation(cid) == v1) then
		if(getPlayerLevel(cid) >= level) then
			if(getPlayerMana(cid) >= mana) then
				doSendMagicEffect(getPlayerPosition(cid), 32)
				doPlayerSetVocation(cid, v2)
				doCreatureChangeOutfit(cid, out)
				doSendAnimatedText(getPlayerPosition(cid), "FUSION!", 34)
				doPlayerAddMana(cid, manalose, false)
			else
				doPlayerSendCancel(cid, "You have enough ki to fusion.")
			end
		else
			doPlayerSendCancel(cid, "You need ".. level .. " level to fusion.")
		end
	end
	return true
end

function onSay(cid, words, param, channel)



	if(getPlayerVocation(cid) == 7) then -- Goku  -->
		doFusion(cid, 233, 86, 100, {lookType=244}, 1500, -500)

	elseif(getPlayerVocation(cid) == 25) then
		doFusion(cid, 25, 88, 100, {lookType=244}, 1500, -500)

	elseif(getPlayerVocation(cid) == 206) then
		doFusion(cid, 206, 87, 250, {lookType=237}, 5000, -1000)

	elseif(getPlayerVocation(cid) == 219) then
		doFusion(cid, 219, 89, 250, {lookType=237}, 5000, -1000)

	else
		doPlayerSendCancel(cid, "You cannot fusion.") --237
	end
	return true
end
