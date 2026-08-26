local skillStorage = {}

function onPrepareDeath(player, killer)
    local guid = player:getGuid()
    skillStorage[guid] = {}
    for skill = SKILL_FIRST, SKILL_LAST do
        skillStorage[guid][skill] = player:getSkillLevel(skill)
    end
    return true
end
