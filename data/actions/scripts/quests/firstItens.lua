function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60000 then
		if getPlayerStorageValue(cid,60000) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Kit de Iniciante!")
			local bag = doPlayerAddItem(cid,1988,1)
			doAddContainerItem(bag,14684,1)
			doAddContainerItem(bag,2471,1)
			doAddContainerItem(bag,14685,1)
			doAddContainerItem(bag,14686,1)
			doAddContainerItem(bag,14687,1)
			doAddContainerItem(bag,14688,1)
			doAddContainerItem(bag,14689,1)	
            doAddContainerItem(bag,14727,1)			
			doAddContainerItem(bag,2160,100)
			setPlayerStorageValue(cid,60000,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu Kit.")
		end
		return true
	end
end