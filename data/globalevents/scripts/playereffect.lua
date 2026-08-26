local effects = {
--_GOKU_--
[4] = 69,
[5] = 87,
[6] = 90,

--_Vegeta_--
[12] = 69,
[13] = 84,
[14] = 98,

--_Piccolo_--
[20] = 69,
[21] = 84,
[22] = 265,

--_Cell_--
[28] = 69,
[29] = 84,
[30] = 277,

--_Majin Boo_--
[38] = 273,

--_Broly_--
[44] = 69,
[45] = 84,
[46] = 269,

--_Dende_--
[52] = 69,
[53] = 84,

--_Tsuful_--
[60] = 69,
[61] = 84,
[62] = 272,

--_Bardock_--
[68] = 69,
[69] = 84,
[70] = 259,

--_Kaio_--
[76] = 69,
[77] = 84,
[78] = 260,

--_Janemba_--
[84] = 69,
[85] = 84,
[86] = 271,

--_Bulma_--
[92] = 69,
[93] = 84,
[94] = 266,

--_Shenron_--
[100] = 69,
[101] = 84,
[102] = 90,

--_Kagome_--
[108] = 69,
[109] = 84,
[110] = 91,

--_Chilled_--
[116] = 69,
[117] = 84,
[118] = 271,
}

function onThink(interval)
	for _, pid in ipairs(getPlayersOnline()) do
		local effect = effects[getPlayerVocation(pid)]
		if(effect) then
			doSendMagicEffect(getCreaturePos(pid), effect)
		end
	end

	return true
end