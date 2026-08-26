local OPCODE_LANGUAGE = 1

function onExtendedOpcode(player, opcode, buffer)
	if opcode == OPCODE_LANGUAGE then
		-- otclient language
		if buffer == 'en' or buffer == 'pt' then
			-- example, setting player language, because otclient is multi-language...
			-- player:setStorageValue(SOME_STORAGE_ID, SOME_VALUE)
		end
	else
		-- other opcodes can be ignored, and the server will just work fine...
	end
end

--function onExtendedOpcode(player, opcode, buffer)
 --   if opcode == 38 then  -- El opcode 38 se utilizará para el pase de batalla
  --      local data = json.decode(buffer)
 --       if data.type == "openPass" then
 --           sendBattlePassData(player)
 --       elseif data.type == "collectAllReward" then
  --          collectAllBattlePassRewards(player)
  --      elseif data.type == "buyPass" then
  --          buyBattlePass(player)
 --       end
 ---   end
--end
