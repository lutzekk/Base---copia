local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)    npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
    local player = Player(cid)
    local t = {"earth", "future namek","plant","makyo","vegeta","namek","lude","behey","konats"}

    local modalWindow = ModalWindow(341, "Travel list", "Pick your destination:")
    for i = 1, #t do
        modalWindow:addChoice(i, t[i])
    end

    modalWindow:addButton(1, "Select")
    modalWindow:setDefaultEnterButton(1)

    modalWindow:addButton(2, "Cancel")
    modalWindow:setDefaultEscapeButton(2)

    if isInArray({"travel", "sail"}, msg:lower()) then
        modalWindow:sendToPlayer(player)
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())