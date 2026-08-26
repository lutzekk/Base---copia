local fishingRoom = {
    [1] = {fromPos = {x = 500, y = 217, z = 7}, toPos = {x = 548, y = 260, z = 7}},
}

local lastPlayerPositions = {}

function onThink(interval, lastExecution, thinkInterval)
    for _, cid in ipairs(getPlayersOnline()) do
        local position = getPlayerPosition(cid)
        local lastPosition = lastPlayerPositions[cid]

        -- Verificar si el jugador se está moviendo
        if lastPosition and (position.x ~= lastPosition.x or position.y ~= lastPosition.y) then
            for i = 1, #fishingRoom do
                if getDistanceBetween(position, fishingRoom[i].fromPos) <= getDistanceBetween(fishingRoom[i].fromPos, fishingRoom[i].toPos)
                    and getDistanceBetween(position, fishingRoom[i].toPos) <= getDistanceBetween(fishingRoom[i].fromPos, fishingRoom[i].toPos) then
                    doPlayerAddSkillTry(cid, SKILL_RUNECRAFT, 1)
                    
                    -- Agregar efecto (ajusta el número del efecto según tu preferencia)
                    doSendMagicEffect(position, 502)
                end
            end
        end

        -- Actualizar la última posición conocida del jugador
        lastPlayerPositions[cid] = position
    end

    return true
end
