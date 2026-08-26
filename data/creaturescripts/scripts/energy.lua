function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local skill = creature:getEffectiveSkillLevel(SKILL_FISHING)
	local skill2 = creature:getEffectiveSkillLevel(SKILL_SHIELD)
	local calculo = (skill/3) / 70
	local calculo2 = (skill2/3) / 85
	if creature:isPlayer() or attacker:isPlayer() then
		if (origin == ORIGIN_SPELL) and (primaryType == COMBAT_ENERGYDAMAGE)  then
			creature:addSkillTries(SKILL_FISHING, 1)
			primaryDamage = math.floor(primaryDamage - (primaryDamage * calculo))
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		end
		if origin == ORIGIN_MELEE or origin == ORIGIN_RANGED  then
			creature:addSkillTries(SKILL_SHIELD, 1)
			primaryDamage = math.floor(primaryDamage - (primaryDamage * calculo2))
			return primaryDamage, primaryType, secondaryDamage, secondaryType
		end	
	end
end


