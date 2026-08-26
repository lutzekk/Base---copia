function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
	if (isPlayer(cid)) then
		doPlayerAddMana(cid,-100)
		doCreatureAddHealth(cid, -100)
		doPlayerAddSoul(cid, 1)
		doPlayerAddExp(cid, 10)
		doPlayerAddSkillTry(cid, 0, 10)
	end
	return true
end