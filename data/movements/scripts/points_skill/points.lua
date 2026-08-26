local skillSpentAmount = 100

local trainingCreatures = {}

local function giveSkillTrainingOverTime(cid, lastKnownTraining)
    if not isPlayer(cid) then
        trainingCreatures[cid] = nil
        return
    end
    if not trainingCreatures[cid] or trainingCreatures[cid] ~= lastKnownTraining then
        return
    end
    trainingCreatures[cid] = trainingCreatures[cid] + 1
    if trainingCreatures[cid] % 20 == 0 then
        doPlayerAddSpentSkill(cid, SKILL_FISHING, skillSpentAmount) -- Cambiado para aumentar la habilidad de pesca
    end
    addEvent(giveSkillTrainingOverTime, 100, cid, lastKnownTraining + 1)
end

function onStepIn(cid, item, frompos, itemEx, topos)
    if not isPlayer(cid) then
        return true
    end
    trainingCreatures[cid] = 0
    giveSkillTrainingOverTime(cid, 0)
    return true
end

function onStepOut(cid, item, frompos, itemEx, topos)
    if not isPlayer(cid) then
        return true
    end
    trainingCreatures[cid] = nil
    return true
end
