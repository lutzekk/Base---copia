function onAdvance(cid, skill, oldLevel, newLevel)
    if skill == SKILLMAGLEVEL and newLevel >= 155 then
        doPlayerAddSkill(cid, SKILLMAGLEVEL, 1)
    end
    return true
end