local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local teleportPosition = {x = 89, y = 227, z = 7}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function greetCallback(cid)
    local player = Player(cid)
    if not player then return true end

    -- Puedes ajustar estos valores según tu saga
    local stage = player:getStorageValue(8000)
    local dialogText = ""
    local buttons = "Close&Yes"

    if stage == 2 then
        dialogText = "Are you ready to start the missionss? First you must catch my monkey!"
    elseif stage == 4 then
        dialogText = "Ready for the next challenge? Now you must catch Gregory."
    elseif stage == 8 then
        dialogText = "You're progressing well! Return to Earth and fight the Saiyans."
    elseif stage == 55 then
        dialogText = "Danger ahead! Seven monsters from the Dragon Balls have attacked Earth."
    elseif stage >= 56 then
        dialogText = "You have already completed this saga. Thank you again!"
        buttons = "Close"
    else
        dialogText = "Hi there! Do you want to start the saga?"
    end

    openNpcDialog(player, Npc():getId(), dialogText, buttons)
    return true
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then return false end

    local player = Player(cid)
    if not player then return false end

    local stage = player:getStorageValue(8000)

    if msg:lower() == "yes" then
        local message = ""
        if stage == 2 then
            player:setStorageValue(8000, 3)
            message = "Good luck! Catch my monkey."

        elseif stage == 4 then
            player:setStorageValue(8000, 5)
            message = "Now go and find Gregory!"

        elseif stage == 8 then
            player:setStorageValue(8000, 9)
            message = "You have been teleported to Earth to fight the Saiyans!"
            player:teleportTo(teleportPosition)

        elseif stage == 55 then
            player:setStorageValue(8000, 56)  -- Avanza al siguiente stage
            message = "Prepare yourself for the seven monsters!"
        
        elseif stage >= 56 then
            message = "You've already finished this saga. Well done!"
        
        end

        openNpcDialog(player, Npc():getId(), message, "Close")

    elseif msg:lower() == "close" then
        closeNpcDialog(player)
        npcHandler:unGreet(cid)
    end

    return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
