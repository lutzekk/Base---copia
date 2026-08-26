local config = {
monster = {"Cooler Event", "Cell Event", "Janemba Event", "Buu Event", "Tsuful Event", "C17 Event", "Brolly Event"}, -- nome dos monstros, separado por vírgulas.
item = {[1] = 3956, [2] = 7528}, -- [um numero maior que o anterior] = ID do item1, ID do item2, ID do item3...
qnt = {[1] = 4, [2] = 5}, -- [um numero maior que o anterior] = quantidade do item1, quantidade do item2, quantidade do item3...

}



function onKill(cid, target)
	if isInArray(config.monster, getCreatureName(target)) then
		for i = 1, #config.item do
			doPlayerAddItem (cid, config.item[i], config.qnt[i])
			local pos = {x = 105, y = 913, z = 7}
			doTeleportThing(cid, pos) 
		end

		doPlayerSendTextMessage (cid, 19, "You will receive a reward for defeating the "..getCreatureName(target)..".")
	
	end
return true
end