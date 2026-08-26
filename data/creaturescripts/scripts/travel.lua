local config = {
    [1] = Position({x =116, y = 177, z = 7}), -- small city
    [2] = Position({x = 117, y = 101, z = 7}), -- big city
    [3] = Position({x = 254, y = 393, z = 7}), -- assassin tower
    [4] = Position({x = 112, y = 39, z = 7}), -- west island
    [5] = Position({x = 419, y = 913, z = 7}), -- hope city
    [6] = Position({x = 782, y = 351, z = 7}), -- dragonia
    [7] = Position({x = 167, y = 304, z = 7}), -- underground city
    [8] = Position({x = 82, y = 39, z = 7}), -- east island
    [9] = Position({x = 316, y = 179, z = 7}), -- ice city
    [10] = Position({x = 477, y = 642, z = 7}), -- frozen city
    [11] = Position({x = 105, y = 439, z = 15}), -- old city
    [12] = Position({x = 100, y = 343, z = 7}), -- broken city
    [13] = Position({x = 373, y = 1014, z = 7}) -- Capsule Corporation
}

function onModalWindow(cid, modalWindowId, buttonId, choiceId)
    if modalWindowId ~= 333 or buttonId == 2 then
        return false
    end

    local player = Player(cid)
    local position = config[choiceId]
    if not position then
        return true
    end

    player:teleportTo(position)
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    return true
end