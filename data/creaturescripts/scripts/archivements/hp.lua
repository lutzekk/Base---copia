-- Define las constantes de habilidades (Solo las válidas para tu servidor)
SKILL_FIST = 0
SKILL_CLUB = 1
SKILL_SWORD = 2
SKILL_AXE = 3
SKILL_DISTANCE = 4
SKILL_SHIELD = 5
SKILL_FISHING = 6
SKILL_MAGIC = 7

-- Define los niveles requeridos para cada habilidad
local requiredSkills = {
    [SKILL_FIST] = 11,        -- Habilidad de lucha con puños
    [SKILL_CLUB] = 11,        -- Habilidad con armas de tipo maza
    [SKILL_SWORD] = 11,       -- Habilidad con armas de tipo espada
    [SKILL_AXE] = 0,         -- Habilidad con armas de tipo hacha
    [SKILL_DISTANCE] = 11,    -- Habilidad de combate a distancia (arco, flechas, etc.)
    [SKILL_SHIELD] = 11,      -- Habilidad con escudo (defensa)
    [SKILL_FISHING] = 11,     -- Habilidad de pesca
    [SKILL_MAGIC] = 0         -- Habilidad de magia (nivel mágico)
}

local storageToSet = 5005 -- ID de storage para verificar el requisito de habilidad
local hpIncreaseStorage = 5010 -- ID de storage para verificar el aumento de HP
local hpBonus = 10000 -- Aumento de HP permanente

function onLogin(player)
    -- Verificar si el jugador es válido
    if not player or not player:isPlayer() then
        return true
    end

    local hasAllRequiredSkills = true

    -- Verifica cada habilidad según los niveles requeridos
    for skill, level in pairs(requiredSkills) do
        if player:getSkillLevel(skill) < level then
            hasAllRequiredSkills = false
            break
        end
    end

    -- Si el jugador tiene todas las habilidades requeridas
    if hasAllRequiredSkills then
        if player:getStorageValue(storageToSet) < 1 then -- Verifica si el storage no está ya establecido
            player:setStorageValue(storageToSet, 1)
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Felicidades, has alcanzado el nivel requerido en todas las habilidades y se te ha otorgado un storage.")

            -- Verifica si el aumento de HP no ha sido aplicado aún
            if player:getStorageValue(hpIncreaseStorage) < 1 then
                player:setMaxHealth(player:getMaxHealth() + hpBonus) -- Aumenta el HP máximo del jugador
                player:setHealth(player:getMaxHealth()) -- Restaura la salud al máximo
                player:setStorageValue(hpIncreaseStorage, 1) -- Marca el aumento de HP como aplicado
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Has recibido un aumento permanente de 10,000 puntos de HP.")
            end
        end
    end
    return true
end
