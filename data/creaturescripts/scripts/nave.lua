-- nave.lua
local naveOPCODE = 188 -- opcode para enviar la ventana de nave
local naveOPCODE_DESTROYINFOS = 189 -- opcode para destruir la información
local naveOPCODE_sendTeleportTo = 101 -- opcode para teletransportar al jugador
local naveOPCODE_sendMonsters = 102 -- opcode para enviar información de monstruos

-- Función para enviar información de teletransportación al jugador
function sendNaveInfo(player)
    local destinations = {
        {name = "Thais", image = "thais.png", numeration = 1, actionid = 1001, description1 = "La ciudad de Thais, el centro del comercio y las aventuras.", description2 = "Monstruos cercanos: Trolls, Orcs."},
        {name = "Venore", image = "venore.png", numeration = 2, actionid = 1002, description1 = "La ciudad de Venore, hogar de los comerciantes más astutos.", description2 = "Monstruos cercanos: Swamp Trolls, Dragons."},
        -- Agrega más destinos según sea necesario
    }
    
    for _, destination in pairs(destinations) do
        local buffer = string.format("%s@%s@%d@%d@%s@%s", 
            destination.name, destination.image, destination.numeration, destination.actionid, destination.description1, destination.description2)
        player:sendExtendedOpcode(naveOPCODE, buffer)
    end
end

-- Función para recibir y procesar la solicitud de teletransporte
function onRecvOpcode(player, opcode, buffer)
    if opcode == naveOPCODE_sendTeleportTo then
        local params = buffer:split("@")
        local numeration = tonumber(params[1])
        local actionid = tonumber(params[2])

        -- Lógica para teletransportar al jugador
        local destinationPos = {
            [1] = Position(100, 100, 7), -- Posición de Thais
            [2] = Position(200, 200, 7), -- Posición de Venore
            -- Agrega más posiciones según los destinos
        }
        if destinationPos[numeration] then
            player:teleportTo(destinationPos[numeration])
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "¡Has sido teletransportado a " .. params[1] .. "!")
        else
            player:sendTextMessage(MESSAGE_STATUS_WARNING, "Destino no encontrado.")
        end
    elseif opcode == naveOPCODE_sendMonsters then
        local params = buffer:split("@")
        local numeration = tonumber(params[1])
        local monstersInfo = {
            [1] = "Monstruos cercanos a Thais: Trolls, Orcs.",
            [2] = "Monstruos cercanos a Venore: Swamp Trolls, Dragons.",
            -- Agrega más información de monstruos para otros destinos
        }
        if monstersInfo[numeration] then
            player:sendTextMessage(MESSAGE_INFO_DESCR, monstersInfo[numeration])
        else
            player:sendTextMessage(MESSAGE_STATUS_WARNING, "Información de monstruos no disponible.")
        end
    end
end
