local config = { 
    SKILL_ID = 2, -- id do skill...
    multiplier = 1.5,
    percentual = 0.3,

}
function onLogin(cid)
    registerCreatureEvent(cid, "critical")
    registerCreatureEvent(cid, "comcriti")
    return true
end
function onStatsChange(cid, attacker, type, combat, value)
    if isPlayer(attacker) and (not (attacker == cid)) and (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) then
        local chance = (getPlayerSkillLevel(attacker, config.SKILL_ID) * config.percentual) * 10
        if math.random(1, 1000) <= chance then
            dano = math.ceil(value*(config.multiplier))
            doTargetCombatHealth(attacker, cid, combat, -dano, -dano, 255)
  
            return false
        end
    end
    return true
end
function onCombat(cid, target)
    if isPlayer(cid) and isMonster(target) then
        registerCreatureEvent(target, "critical")    
    end
    return true
end