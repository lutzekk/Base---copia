
function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
    setPlayerStorageValue(cid, 176454, 5)
    doPlayerSetRate(cid, SKILL_FIST, 50)

    return true
end

function onStepOut(cid, item, position, fromPosition)
    setPlayerStorageValue(cid, 76454, 0)
    doPlayerSetRate(cid, SKILL_FIST, 100)

    return true
end