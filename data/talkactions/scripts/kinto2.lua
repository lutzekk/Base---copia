print("kinto2.lua script loaded.") -- Debug
local playerPositions = {}

function onSay(cid, words, param)
    local function savePlayerPosition(player)
        local playerID = player:getId()
        playerPositions[playerID] = player:getPosition()
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Your position has been saved.")
    end

    local function teleportToSavedPosition(player)
        local playerID = player:getId()
        if not playerPositions[playerID] then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "No saved position found.")
            return
        end
        if player:getMana() < player:getMaxMana() then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You need full mana to teleport.")
            return
        end
        player:teleportTo(playerPositions[playerID])
        player:addMana(-player:getMana())
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Teleported to your saved position.")
    end

    local window = ModalWindow {
        id = 20,
        title = "Kinto", -- <<<<<===========  Name title Window in the game
        message = "Select your action:"
    }
    window:addButton("Save My Position", function() savePlayerPosition(Player(cid)) end)
    window:addButton("Teleport to Saved Position", function() teleportToSavedPosition(Player(cid)) end)
    window:setDefaultEscapeButton("Close")
    window:sendToPlayer(Player(cid))
    
    return false -- Prevent the command from being visible in the chat
end
