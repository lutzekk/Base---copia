local config = {
monster = {"Sasuke Boss"}, -- nome dos monstros, separado por vírgulas.
item = {[1] = 8110}, -- [um numero maior que o anterior] = ID do item1, ID do item2, ID do item3...
qnt = {[1] = 1}, -- [um numero maior que o anterior] = quantidade do item1, quantidade do item2, quantidade do item3...
effect = 409, -- efeito ao matar o monstro.
}

function onKill(cid, target)
	if isInArray(config.monster, getCreatureName(target)) then
		for i = 1, #config.item do
			doPlayerAddItem (cid, config.item[i], config.qnt[i])
		end

		doPlayerSendTextMessage (cid, 19, "Você receberá uma recompensa por derrotar o "..getCreatureName(target)..".")
		doSendMagicEffect (getThingPos (cid), config.effect)
	end
return true
end