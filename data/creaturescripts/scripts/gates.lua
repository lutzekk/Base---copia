local config = {
    [1] = Position({x =66, y = 115, z = 8}), -- Earth
    [2] = Position({x = 584, y = 916, z = 8}), -- F Namek
    [3] = Position({x = 105, y = 488, z = 8}), -- plant
    [4] = Position({x = 105, y = 515, z = 8}), -- makyo
    [5] = Position({x = 141, y = 489, z = 8}), -- vegeta
    [6] = Position({x = 141, y = 515, z = 8}), -- namek
    [7] = Position({x = 191, y = 498, z = 8}), -- lude
    [8] = Position({x = 115, y = 545, z = 8}), -- behey
    [9] = Position({x = 191, y = 526, z = 8}) -- konats

}



function onModalWindow(cid, modalWindowId, buttonId, choiceId)
    if modalWindowId ~= 341 or buttonId == 2 then
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