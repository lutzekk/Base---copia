local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- Función para enviar la interfaz al cliente
local function sendNaveInterface(player)
    -- Información para enviar al cliente
    local name = "Thais"
    local image = "thais.png"
    local numeration = 1
    local actionid = 1001
    local description1 = "La ciudad de Thais, el centro del comercio y las aventuras."
    local description2 = "Monstruos cercanos: Trolls, Orcs."

    -- Construir el buffer con la información
    local buffer = name .. "@" .. image .. "@" .. numeration .. "@" .. actionid .. "@" .. description1 .. "@" .. description2

    -- Enviar el opcode extendido al cliente
    player:sendExtendedOpcode(188, buffer)
end

-- Evento de saludo al jugador
function onCreatureSay(cid, type, msg)
    local player = Player(cid)
    if not npcHandler:isFocused(player) then
        return false
    end

    if msg == "hi" then
        npcHandler:say("¡Hola! ¿Te gustaría teletransportarte a una ciudad?", player)
        sendNaveInterface(player) -- Llama a la función para enviar la información
    elseif msg == "bye" then
        npcHandler:say("¡Adiós!", player)
        npcHandler:releaseFocus(player)
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, onCreatureSay)
npcHandler:addModule(FocusModule:new())
