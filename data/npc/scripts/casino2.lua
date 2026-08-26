local config2 = {
    min = 1,        -- Valor Minimo da Aposta
    max = 100,     -- Valor Máximo da Aposta
    multiplyby = 2,    -- Quanto o valor será multiplicado caso o jogador ganhe
    automatic = true,  -- O NPC irá falar com o player automáticamente
    delay = 2,         -- Tempo em segundos em que o player poderá falar com o NPC novamente 
    position = {
        player = Position(69, 127, 6),  -- Posição que o player deve estar
        money2 = Position(68, 128, 6),   -- Posição do dinheiro
        dice = Position(67, 128, 6)     -- Posição de onde estará o dado
    },
    effects = {
        win = CONST_ME_SOUND_RED, -- Efeito no player caso ele ganhe
        lose = CONST_ME_POFF      -- Efeito no player caso ele perca
    },
    direction = {
        talking = DIRECTION_WEST,  -- Posição na qual estara o NPC caso esteja conversando
        stopped = DIRECTION_SOUTH  -- Posição na qual estara o NPC caso esteja parado
    }
}

local dices2 = {
    [1] = 8955, -- Dado com número 1
    [2] = 8956, -- Dado com número 2
    [3] = 8957, -- Dado com número 3
    [4] = 8958, -- Dado com número 4
    [5] = 8959, -- Dado com número 5
    [6] = 8960  -- Dado com número 6
}

local coins2 = {
    [7528] = 1
}

local player = nil
local money2 = 0
local npc = nil
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink(cid)                       npcHandler:onThink(cid)                        end

local function greetCallback(cid)
    local player = Player(cid)

    if not playerIsInPosition2(player) then
        return false
    end

    return true
end

local function creatureSayCallback(cid, type, msg)
    if not player then
        player = Player(cid)
    end

    if not npcHandler:isFocused(cid) or player:getStorageValue(7239) >= os.time() then
        return false
    end
    
    player:setStorageValue(7239, os.time() + 2)

    local sorted = math.random(1, 6)
    local tile = Tile(config2.position.dice)
    local status = false

    if msg:lower() == "l" or msg:lower() == "low" then
        status = (sorted < 4 and true or false)
    elseif msg:lower() == "h" or msg:lower() == "high" then
        status = (sorted > 3 and true or false)
    else
        return false
    end

    if not removemoney2() then
        return false
    end

    if player then 
        npcHandler:say((status and "YOU WIN!" or "YOU LOSE!"), cid)
    end

    for i = 1, 6 do
        if tile:getItemById(dices2[i]) then
            local dice = tile:getItemById(dices2[i])
            dice:transform(dices2[sorted])
            config2.position.dice:sendMagicEffect(CONST_ME_CRAPS)
            break
        end
    end

    addEvent(function()
        sendRolledMsg(sorted)
    end, 800)

    addEvent(function()
        if status then 
            addmoney2()
            config2.position.player:sendMagicEffect(config2.effects.win)
        else
            config2.position.player:sendMagicEffect(config2.effects.lose)
        end
    end, 1000)

end

local function onAddFocus(cid)
    npc = Creature(getNpcCid())
    npc:setDirection(config2.direction.talking)
end

local function onReleaseFocus(cid)
    npc:setDirection(config2.direction.stopped)
    player = nil
    npc = nil
end

function onThink()
    if config2.automatic and not player then
        players = Tile(config2.position.player):getCreatures()

        for i = 1, #players do
            if players[i]:isPlayer() then
                npcHandler:addFocus(players[i].uid)
                npcHandler:greet(players[i].uid)
                player = players[i]
                break
            end
        end
    end

    if player then
        if not playerIsInPosition2(player) then
            npcHandler:say("Good bye " .. player:getName(), player.uid)
            npcHandler:releaseFocus(player.uid)
            player = nil
            return true
        end
    end
end

function playerIsInPosition2(player)
    local pos1 = player:getPosition()
    local pos2 = config2.position.player
    
    if (pos1.x == pos2.x) and (pos1.y == pos2.y) and (pos1.z == pos2.z) then
        return true
    end

    return false
end

function removemoney2()
    money2 = 0
    local tile = Tile(config2.position.money2)
    local items = tile:getItems()
    local torvm = {}

    for i = 1, #items do
        if coins2[items[i]:getId()] then
            local coin = items[i]
            money2 = money2 + (coins2[coin:getId()] * coin:getCount())
        end
    end

    if money2 < config2.min then
        npcHandler:say("You need " .. config2.min .. " cassino coins to use the cassino.", player.uid)
        return false
    elseif money2 > config2.max then
        npcHandler:say("You can only use " .. config2.max .. " cassino coins in the casino", player.uid)
        return false
    end

    for i = 1, #items do
        if coins2[items[i]:getId()] then
            items[i]:remove()
        end
    end

    return true
end

function addmoney2()
    local money2win = money2 * config2.multiplyby
    local ccoin = 0
    local pcoin = 0
    local gcoin = 0

    while money2win > 0 do
        if (money2win >= 1) then
            gcoin = money2win / 1;
            money2win = money2win - 1 * math.floor(gcoin);
        end
    end

    while gcoin > 0 do
        if gcoin >= 100 then
            Game.createItem(7528, 100, config2.position.money2)
            gcoin = gcoin - 100
        else
            Game.createItem(7528, math.floor(gcoin), config2.position.money2)
            gcoin = 0
        end
    end

end

function sendRolledMsg(sorted)
    local spectators = Game.getSpectators(config2.position.dice, false, true, 3, 3)
    for _, spectator in ipairs(spectators) do
        npc:say("Rolled a " .. sorted .. ".", TALKTYPE_MONSTER_SAY, false, spectator, config2.position.dice)
    end
end

npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|, you want to bet it cassino? Say L to 1-3, H to 4-6.')
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)
npcHandler:addModule(FocusModule:new())