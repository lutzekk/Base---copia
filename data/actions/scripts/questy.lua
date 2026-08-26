function onUse(cid, item, frompos, item2, topos)
ppos = getPlayerPosition(cid) 
   	if item.uid == 7101 then
   		queststatus = getPlayerStorageValue(cid,7101)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a bag.")
   			doPlayerAddItem(cid,1987,1)
   			doPlayerAddItem(cid,2480,1)
   			doPlayerAddItem(cid,8363,1)
   			setPlayerStorageValue(cid,7101,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7102 then
   		queststatus = getPlayerStorageValue(cid,7102)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
		
   			doPlayerSendTextMessage(cid,22,"You have found a C17 armor.")
   			doPlayerAddItem(cid,2476,1)
   			setPlayerStorageValue(cid,7102,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7103 then
   		queststatus = getPlayerStorageValue(cid,7103)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a C17 legs.")
   			doPlayerAddItem(cid,2477,1)
   			setPlayerStorageValue(cid,7103,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7104 then
   		queststatus = getPlayerStorageValue(cid,7104)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a C17 boots.")
   			doPlayerAddItem(cid,2645,1)
   			setPlayerStorageValue(cid,7104,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


	elseif item.uid == 7105 then
   		queststatus = getPlayerStorageValue(cid,7105)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a sunglasses.")
   			doPlayerAddItem(cid,2461,1)
   			setPlayerStorageValue(cid,7105,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end



	elseif item.uid == 7106 then
   		queststatus = getPlayerStorageValue(cid,7106)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a kame staff.")
   			doPlayerAddItem(cid,2448,1)
   			setPlayerStorageValue(cid,7106,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7107 then
   		queststatus = getPlayerStorageValue(cid,7107)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Stronge Ki.")
   			doPlayerAddItem(cid,2187,1)
   			setPlayerStorageValue(cid,7107,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7108 then
   		queststatus = getPlayerStorageValue(cid,7108)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a bardock legs.")
   			doPlayerAddItem(cid,2460,1)
   			setPlayerStorageValue(cid,7108,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7109 then
   		queststatus = getPlayerStorageValue(cid,7109)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a bardock armor.")
   			doPlayerAddItem(cid,2658,1)
   			setPlayerStorageValue(cid,7109,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7110 then
   		queststatus = getPlayerStorageValue(cid,7110)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Gun.")
   			doPlayerAddItem(cid,2182,1)
   			setPlayerStorageValue(cid,7110,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7111 then
   		queststatus = getPlayerStorageValue(cid,7111)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Red Ki.")
   			doPlayerAddItem(cid,2191,1)
   			setPlayerStorageValue(cid,7111,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7112 then
   		queststatus = getPlayerStorageValue(cid,7112)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Namek Power.")
   			doPlayerAddItem(cid,2456,1)
   			setPlayerStorageValue(cid,7112,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7113 then
   		queststatus = getPlayerStorageValue(cid,7113)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a ninja helmet.")
   			doPlayerAddItem(cid,2459,1)
   			setPlayerStorageValue(cid,7113,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7114 then
   		queststatus = getPlayerStorageValue(cid,7114)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a pai pai helmet.")
   			doPlayerAddItem(cid,2480,1)
   			setPlayerStorageValue(cid,7114,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7115 then
   		queststatus = getPlayerStorageValue(cid,7115)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a tunic.")
   			doPlayerAddItem(cid,2467,1)
   			setPlayerStorageValue(cid,7115,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7116 then
   		queststatus = getPlayerStorageValue(cid,7116)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a scale legs.")
   			doPlayerAddItem(cid,2495,1)
   			setPlayerStorageValue(cid,7116,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7117 then
   		queststatus = getPlayerStorageValue(cid,7117)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Boots.")
   			doPlayerAddItem(cid,2644,1)
   			setPlayerStorageValue(cid,7117,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7118 then
   		queststatus = getPlayerStorageValue(cid,7118)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Gloves.")
   			doPlayerAddItem(cid,2381,1)
   			setPlayerStorageValue(cid,7118,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7119 then
   		queststatus = getPlayerStorageValue(cid,7119)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Short Sword.")
   			doPlayerAddItem(cid,2406,1)
   			setPlayerStorageValue(cid,7119,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7121 then
   		queststatus = getPlayerStorageValue(cid,7121)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Ussj Legs.")
   			doPlayerAddItem(cid,2648,1)
   			setPlayerStorageValue(cid,7121,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7122 then
   		queststatus = getPlayerStorageValue(cid,7122)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a claw.")
   			doPlayerAddItem(cid,2427,1)
   			setPlayerStorageValue(cid,7122,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7123 then
   		queststatus = getPlayerStorageValue(cid,7123)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a red ki.")
   			doPlayerAddItem(cid,2191,1)
   			setPlayerStorageValue(cid,7123,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7124 then
   		queststatus = getPlayerStorageValue(cid,7124)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a bardock bandana.")
   			doPlayerAddItem(cid,2471,1)
   			setPlayerStorageValue(cid,7124,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7125 then
   		queststatus = getPlayerStorageValue(cid,7125)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a frozen armor.")
   			doPlayerAddItem(cid,2657,1)
   			setPlayerStorageValue(cid,7125,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7126 then
   		queststatus = getPlayerStorageValue(cid,7126)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a frozen sword.")
   			doPlayerAddItem(cid,2446,1)
   			setPlayerStorageValue(cid,7126,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7127 then
   		queststatus = getPlayerStorageValue(cid,7127)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a majin power.")
   			doPlayerAddItem(cid,5914,1)
   			setPlayerStorageValue(cid,7127,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7128 then
   		queststatus = getPlayerStorageValue(cid,7128)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a 50 Senzu.")
   			doPlayerAddItem(cid,2673,50)
   			setPlayerStorageValue(cid,7128,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7129 then
   		queststatus = getPlayerStorageValue(cid,7129)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a strong staff.")
   			doPlayerAddItem(cid,7421,1)
   			setPlayerStorageValue(cid,7129,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7130 then
   		queststatus = getPlayerStorageValue(cid,7130)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a brolly amulation.")
   			doPlayerAddItem(cid,2496,1)
   			setPlayerStorageValue(cid,7130,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7131 then
   		queststatus = getPlayerStorageValue(cid,7131)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a shin armor.")
   			doPlayerAddItem(cid,2653,1)
   			setPlayerStorageValue(cid,7131,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7132 then
   		queststatus = getPlayerStorageValue(cid,7132)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a majin boots.")
   			doPlayerAddItem(cid,2646,1)
   			setPlayerStorageValue(cid,7132,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7133 then
   		queststatus = getPlayerStorageValue(cid,7133)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a sword of ice.")
   			doPlayerAddItem(cid,7386,1)
   			setPlayerStorageValue(cid,7133,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	elseif item.uid == 7120 then
   		queststatus = getPlayerStorageValue(cid,7120)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a capsule.")
   			doPlayerAddItem(cid,1999,1)
   			setPlayerStorageValue(cid,7120,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7140 then
   		queststatus = getPlayerStorageValue(cid,7140)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a map.")
   			doPlayerAddItem(cid,1952,1)
   			setPlayerStorageValue(cid,7140,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7141 then
   		queststatus = getPlayerStorageValue(cid,7141)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a jacket.")
   			doPlayerAddItem(cid,2534,1)
   			setPlayerStorageValue(cid,7141,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7142 then
   		queststatus = getPlayerStorageValue(cid,7142)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a mask.")
   			doPlayerAddItem(cid,2482,1)
   			setPlayerStorageValue(cid,7142,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

	


elseif item.uid == 7143 then
   		queststatus = getPlayerStorageValue(cid,7143)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a red capsule.")
   			doPlayerAddItem(cid,2001,1)
   			setPlayerStorageValue(cid,7143,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end



elseif item.uid == 7144 then
   		queststatus = getPlayerStorageValue(cid,7144)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a human boots.")
   			doPlayerAddItem(cid,3982,1)
   			setPlayerStorageValue(cid,7144,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
elseif item.uid == 7145 then
   		queststatus = getPlayerStorageValue(cid,7145)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a gotem armor.")
   			doPlayerAddItem(cid,2654,1)
   			setPlayerStorageValue(cid,7145,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7146 then
   		queststatus = getPlayerStorageValue(cid,7146)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a viking helmet.")
   			doPlayerAddItem(cid,2179,1)
   			setPlayerStorageValue(cid,7146,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7147 then
   		queststatus = getPlayerStorageValue(cid,7147)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a makankosappo power.")
   			doPlayerAddItem(cid,2455,1)
   			setPlayerStorageValue(cid,7147,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7148 then
   		queststatus = getPlayerStorageValue(cid,7148)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a right key.")
   			doPlayerAddItem(cid,2086,1)
   			setPlayerStorageValue(cid,7148,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7149 then
   		queststatus = getPlayerStorageValue(cid,7149)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a left key.")
   			doPlayerAddItem(cid,2090,1)
   			setPlayerStorageValue(cid,7149,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7150 then
   		queststatus = getPlayerStorageValue(cid,7150)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a blue ki.")
   			doPlayerAddItem(cid,2190,1)
   			setPlayerStorageValue(cid,7150,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end


elseif item.uid == 7151 then
   		queststatus = getPlayerStorageValue(cid,7151)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a brooch.")
   			doPlayerAddItem(cid,2318,1)
   			setPlayerStorageValue(cid,7151,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7152 then
   		queststatus = getPlayerStorageValue(cid,7152)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a frozen helmet.")
   			doPlayerAddItem(cid,2490,1)
   			setPlayerStorageValue(cid,7152,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end



elseif item.uid == 7153 then
   		queststatus = getPlayerStorageValue(cid,7153)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a soldier armor.")
   			doPlayerAddItem(cid,2660,1)
   			setPlayerStorageValue(cid,7153,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7154 then
   		queststatus = getPlayerStorageValue(cid,7154)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a soldier legs.")
   			doPlayerAddItem(cid,2468,1)
   			setPlayerStorageValue(cid,7154,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

elseif item.uid == 7155 then
   		queststatus = getPlayerStorageValue(cid,7155)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a soldier sword.")
   			doPlayerAddItem(cid,2393,1)
   			setPlayerStorageValue(cid,7155,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   end
elseif item.uid == 7160 then
   		queststatus = getPlayerStorageValue(cid,7160)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Majin Glove.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,7160,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   				end

elseif item.uid == 7162 then
   		queststatus = getPlayerStorageValue(cid,7162)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have find Strong Glove deep inside the cocon.")
   			doPlayerAddItem(cid,2387,1)
   			setPlayerStorageValue(cid,7162,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end


elseif item.uid == 7163 then
   		queststatus = getPlayerStorageValue(cid,7163)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"There is something glowing inside.")
   			doPlayerAddItem(cid,2392,1)
   			setPlayerStorageValue(cid,7163,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end


elseif item.uid == 7164 then
   		queststatus = getPlayerStorageValue(cid,7164)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"Oh! Its exp booster.")
   			doPlayerAddItem(cid,5880,1)
   			setPlayerStorageValue(cid,7164,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7165 then
   		queststatus = getPlayerStorageValue(cid,7165)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"Its an chain saw")
   			doPlayerAddItem(cid,2321,1)
   			setPlayerStorageValue(cid,7165,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end


elseif item.uid == 7166 then
   		queststatus = getPlayerStorageValue(cid,7166)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Saiyan Power")
   			doPlayerAddItem(cid,2433,1)
   			setPlayerStorageValue(cid,7166,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7167 then
   		queststatus = getPlayerStorageValue(cid,7167)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Futre Trunks Armor")
   			doPlayerAddItem(cid,2531,1)
   			setPlayerStorageValue(cid,7167,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7168 then
   		queststatus = getPlayerStorageValue(cid,7168)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Brolly Sword")
   			doPlayerAddItem(cid,2385,1)
   			setPlayerStorageValue(cid,7168,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7170 then
   		queststatus = getPlayerStorageValue(cid,7170)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found a Gold")
   			doPlayerAddItem(cid,2160,1)
   			setPlayerStorageValue(cid,7170,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7171 then
   		queststatus = getPlayerStorageValue(cid,7171)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Blaster")
   			doPlayerAddItem(cid,2453,1)
   			setPlayerStorageValue(cid,7171,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7172 then
   		queststatus = getPlayerStorageValue(cid,7172)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Piccolo Robe")
   			doPlayerAddItem(cid,2656,1)
   			setPlayerStorageValue(cid,7172,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7173 then
   		queststatus = getPlayerStorageValue(cid,7173)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Shaolin Legs")
   			doPlayerAddItem(cid,2452,1)
   			setPlayerStorageValue(cid,7173,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7174 then
   		queststatus = getPlayerStorageValue(cid,7174)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Found Goku Staff")
   			doPlayerAddItem(cid,2401,1)
   			setPlayerStorageValue(cid,7174,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7175 then
   		queststatus = getPlayerStorageValue(cid,7175)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Janemba Sword")
   			doPlayerAddItem(cid,2390,1)
   			setPlayerStorageValue(cid,7175,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7176 then
   		queststatus = getPlayerStorageValue(cid,7176)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Kuririn Cap")
   			doPlayerAddItem(cid,3972,1)
   			setPlayerStorageValue(cid,7176,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7177 then
   		queststatus = getPlayerStorageValue(cid,7177)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Magma Armor")
   			doPlayerAddItem(cid,3969,1)
   			setPlayerStorageValue(cid,7177,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7178 then
   		queststatus = getPlayerStorageValue(cid,7178)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Speed Legs")
   			doPlayerAddItem(cid,2530,1)
   			setPlayerStorageValue(cid,7178,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7179 then
   		queststatus = getPlayerStorageValue(cid,7179)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Hercules Boots")
   			doPlayerAddItem(cid,2524,1)
   			setPlayerStorageValue(cid,7179,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7180 then
   		queststatus = getPlayerStorageValue(cid,7180)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Ki Potions")
   			doPlayerAddItem(cid,2689,100)
   			setPlayerStorageValue(cid,7180,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end




elseif item.uid == 7181 then
   		queststatus = getPlayerStorageValue(cid,7181)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Great Saiyan Helmet")
   			doPlayerAddItem(cid,2493,1)
   			setPlayerStorageValue(cid,7181,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end



elseif item.uid == 7182 then
   		queststatus = getPlayerStorageValue(cid,7182)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Vegetto Armor")
   			doPlayerAddItem(cid,2492,1)
   			setPlayerStorageValue(cid,7182,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7183 then
   		queststatus = getPlayerStorageValue(cid,7183)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Goku Boots")
   			doPlayerAddItem(cid,7457,1)
   			setPlayerStorageValue(cid,7183,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7184 then
   		queststatus = getPlayerStorageValue(cid,7184)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Elite Saiyan Boots")
   			doPlayerAddItem(cid,2525,1)
   			setPlayerStorageValue(cid,7184,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7185 then
   		queststatus = getPlayerStorageValue(cid,7185)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Lost Saiyan Legs")
   			doPlayerAddItem(cid,2521,1)
   			setPlayerStorageValue(cid,7185,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7186 then
   		queststatus = getPlayerStorageValue(cid,7186)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Mechanoid Helmet")
   			doPlayerAddItem(cid,2201,1)
   			setPlayerStorageValue(cid,7186,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7187 then
   		queststatus = getPlayerStorageValue(cid,7187)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Samurai Helmet")
   			doPlayerAddItem(cid,3975,1)
   			setPlayerStorageValue(cid,7187,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end



elseif item.uid == 7188 then
   		queststatus = getPlayerStorageValue(cid,7188)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Babidi Cap")
   			doPlayerAddItem(cid,7412,1)
   			setPlayerStorageValue(cid,7188,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

elseif item.uid == 7189 then
   		queststatus = getPlayerStorageValue(cid,7189)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Dabura Robe")
   			doPlayerAddItem(cid,6101,1)
   			setPlayerStorageValue(cid,7189,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end


elseif item.uid == 7190 then
   		queststatus = getPlayerStorageValue(cid,7190)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Gotenks Boots")
   			doPlayerAddItem(cid,2515,1)
   			setPlayerStorageValue(cid,7190,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end


elseif item.uid == 7191 then
   		queststatus = getPlayerStorageValue(cid,7191)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Android Boots")
   			doPlayerAddItem(cid,2173,1)
   			setPlayerStorageValue(cid,7191,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7192 then
   		queststatus = getPlayerStorageValue(cid,7193)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Golden Gloves")
   			doPlayerAddItem(cid,2440,1)
   			setPlayerStorageValue(cid,7193,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7206 then
   		queststatus = getPlayerStorageValue(cid,7206)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a Golden Gloves")
   			doPlayerAddItem(cid,2440,1)
   			setPlayerStorageValue(cid,7193,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7207 then
   		queststatus = getPlayerStorageValue(cid,7207)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a 200 senzu beans")
   			doPlayerAddItem(cid,2673,100)
   			doPlayerAddItem(cid,2673,100)
   			setPlayerStorageValue(cid,7193,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
elseif item.uid == 7208 then
   		queststatus = getPlayerStorageValue(cid,7208)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have found a items")
   			doPlayerAddItem(cid,2652,1)
   			doPlayerAddItem(cid,2680,1)
   			setPlayerStorageValue(cid,7193,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		elseif item.uid == 7209 then
   		queststatus = getPlayerStorageValue(cid,9002)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have south kai armor")
   			doPlayerAddItem(cid,2126,1)
   			setPlayerStorageValue(cid,9002,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		elseif item.uid == 7210 then
   		queststatus = getPlayerStorageValue(cid,9002)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have grand kai armor")
   			doPlayerAddItem(cid,2128,1)
   			setPlayerStorageValue(cid,9002,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		elseif item.uid == 7211 then
   		queststatus = getPlayerStorageValue(cid,9002)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have east Kai Armor")
   			doPlayerAddItem(cid,2142,1)
   			setPlayerStorageValue(cid,9002,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
				elseif item.uid == 7212 then
   		queststatus = getPlayerStorageValue(cid,7212)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have fusion set")
   			doPlayerAddItem(cid,6132,1)
				doPlayerAddItem(cid,7382,1)
						doPlayerAddItem(cid,2510,1)
				doPlayerAddItem(cid,7527,1)			
   			setPlayerStorageValue(cid,7212,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
				 
								elseif item.uid == 7216 then
   		queststatus = getPlayerStorageValue(cid,7216)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have Goku Training Set")
   			doPlayerAddItem(cid,8208,1)
   			doPlayerAddItem(cid,8209,1)
   			doPlayerAddItem(cid,8210,1)
   			doPlayerAddItem(cid,8211,1)
   			setPlayerStorageValue(cid,7216,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		
		
		
		
				elseif item.uid == 7217 then
   		queststatus = getPlayerStorageValue(cid,7217)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have aura sword")
   			doPlayerAddItem(cid,2450,1)
   			setPlayerStorageValue(cid,7217,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		elseif item.uid == 7218 then
   		queststatus = getPlayerStorageValue(cid,7217)
   		if queststatus == -1 then
doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have very ki")
   			doPlayerAddItem(cid,2399,1)
   			setPlayerStorageValue(cid,7217,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
		elseif item.uid == 7219 then
   		queststatus = getPlayerStorageValue(cid,7217)
   		if queststatus == -1 then
		doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have grand glove")
   			doPlayerAddItem(cid,7744,1)
   			setPlayerStorageValue(cid,7217,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end
				elseif item.uid == 7220 then
   		queststatus = getPlayerStorageValue(cid,7220)
   		if queststatus == -1 then
			doSendMagicEffect(ppos,451)
   			doPlayerSendTextMessage(cid,22,"You have ticket")
   			doPlayerAddItem(cid,5919,1)
   			setPlayerStorageValue(cid,7220,1)
   		else
   			doPlayerSendTextMessage(cid,22,"There is nothing inside.")
   		end

end
   	return 1
   end
