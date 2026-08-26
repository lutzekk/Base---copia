function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if not creature or not attacker or not attacker:isPlayer() then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end
	
	primaryDamage, secondaryDamage = StatSystem.addAttackBonus(attacker, primaryDamage, secondaryDamage)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end