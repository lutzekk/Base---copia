function onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_RUNECRAFT or newLevel <= oldLevel then
		return true
	end

	StatSystem.onAdvanceLevel(player, oldLevel, newLevel)
	return true
end
