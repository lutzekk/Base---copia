local config = {
	actionID = 13541,
	outfit =  {lookType = 1421 , lookHead = 1421, lookBody = 1421, lookLegs = 1421, lookFeet = 1421, lookAddons = 1421}, -- Outfit
	time = 20 -- Tempo em segundos
}
function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		if item.actionid == config.actionID then
			doSetCreatureOutfit(cid, config.outfit, config.time * 1000)
		end
	end
end