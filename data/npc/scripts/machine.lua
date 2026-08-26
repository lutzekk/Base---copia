local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end

function onThink()
    npcHandler:onThink()
    checkStorageExpiration()
end

-- Definir el tiempo en segundos para el almacenamiento (1 minuto = 60 segundos)
local storageDuration = 60

-- Función para eliminar el almacenamiento después de que expire el tiempo
function removeStorage(cid, storageValue)
    local player = Player(cid)
    if player then
        player:setStorageValue(storageValue, -1)
    end
end

-- Función para cobrar el ítem y establecer el almacenamiento
function chargeItemAndSetStorage(cid, itemID, count, storageValue)
    local player = Player(cid)
    if player then
        if player:removeItem(itemID, count) then
            player:setStorageValue(storageValue, 2)
            player:setStorageValue(storageValue + 1, os.time() + storageDuration) -- Establecer el tiempo de expiración
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been charged with " .. count .. " " .. ItemType(itemID):getName() .. ".")
            addEvent(removeStorage, storageDuration * 1000, cid, storageValue) -- programar la eliminación del almacenamiento después de 1 minuto
        else
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have enough " .. ItemType(itemID):getName() .. ".")
        end
    end
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    local hasEnoughItems = false

    if msgcontains(msg, "yes") then
        if player:getStorageValue(12331) ~= 2 then
            local itemID = 8922 -- Reemplaza 12345 con el ID del ítem que quieres cobrar
            local itemCount = 1 -- Cambia la cantidad si quieres cobrar más de 1 ítem

            hasEnoughItems = player:removeItem(itemID, itemCount) -- Intenta cobrar el ítem

            if hasEnoughItems then
                player:setStorageValue(12331, 2)
                player:setStorageValue(12331 + 1, os.time() + storageDuration) -- Establecer el tiempo de expiración
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been charged with " .. itemCount .. " " .. ItemType(itemID):getName() .. ".")
                addEvent(removeStorage, storageDuration * 1000, cid, 12331) -- programar la eliminación del almacenamiento después de 1 minuto
                npcHandler:say('Thank you!', cid)
            else
                npcHandler:say("You don't have enough " .. ItemType(itemID):getName() .. ".", cid)
            end
        end
    end

    return true
end

function checkStorageExpiration()
    local players = Game.getPlayers()
    for _, player in ipairs(players) do
        if player:getStorageValue(12331) == 2 and player:getStorageValue(12331 + 1) ~= -1 then
            local remainingTime = player:getStorageValue(12331 + 1) - os.time()
            if remainingTime <= 0 then
                player:setStorageValue(12331, -1)
                player:setStorageValue(12331 + 1, -1) -- Reiniciar el tiempo de expiración
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your time has expired.")
            end
        end
    end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. My name is Trunks, I'm from the future. Two androids will attack the earth, you have to defeat them.")
npcHandler:addModule(FocusModule:new())
