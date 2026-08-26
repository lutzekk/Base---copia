function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local skill2 = creature:getEffectiveSkillLevel(SKILL_SHIELD)
	local calculo2 = (skill2 / 3) / 85

	if creature:isPlayer() or attacker:isPlayer() then
		local missChance = math.random(1, 100)
		if origin == ORIGIN_SPELL and primaryType == COMBAT_ENERGYDAMAGE then
			if missChance <= 10 then -- 10% de probabilidad de "miss" para energía
				local pos = creature:getPosition()
				Game.sendAnimatedText("MISS", pos, TEXTCOLOR_GREEN)
				return 0, primaryType, secondaryDamage, secondaryType
			end
			primaryDamage = math.floor(primaryDamage - (primaryDamage * calculo2))
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		end
		
		if missChance <= 10 then -- 10% de probabilidad de "miss" para defe
			local pos = creature:getPosition()
			Game.sendAnimatedText("MISS", pos, TEXTCOLOR_ORANGE)
			return 0, primaryType, secondaryDamage, secondaryType
		end

		if origin == ORIGIN_MELEE or origin == ORIGIN_RANGED then
			creature:addSkillTries(SKILL_SHIELD, 1)
			primaryDamage = math.floor(primaryDamage - (primaryDamage * calculo2))
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		end
	end
end
