local config = {
	item = 5943, -- ID do coracao
	eff = 12 -- Efeito ao ganhar o coracao .
}

function onDeath(cid, corpse, deathList)

if isPlayer(cid) and isPlayer(deathList[1]) then

doItemSetAttribute(doPlayerAddItem(deathList[1],config.item, 1), "description", "This is the heart of "..getPlayerName(cid).." killed at Level "..getPlayerLevel(cid).." by "..getPlayerName(deathList[1])..".")
doBroadcastMessage("O Player ".. getCreatureName(deathList[1]) .. "[" .. getPlayerLevel(deathList[1]) .. "] Matou " .. getCreatureName(cid) .. "[" .. getPlayerLevel(cid) .. "] E retirou seu "..getItemNameById(config.item),18)
doSendMagicEffect(getPlayerPosition(deathList[1]), config.eff)
end
return true
end