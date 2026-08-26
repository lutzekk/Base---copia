-- Criado por Thalles Vitor --
-- Sistema de Passe de BATALHA --

PASS_OPENWINDOW_OPCODE = 230 -- enviar para o cliente que ele deve abrir o passe
PASS_COLLECT_OPCODE = 231 -- enviar para o cliente que ele pode resgatar uma recompensa
PASS_MONSTERSPASS_OPCODE = 240 -- enviar para o cliente a lista de monstros do passe
PASS_DESTROYINFO = 241 -- enviar para o cliente que ele deve destruir alguma informacao antiga

PASS_ITEMS = {
    -- todos os meses aqui: 01, 02, 03, 04 assim por diante, aqui s�o todos os meses q vc pode configurar
    [01] = {
        items = {2160, 2152}, -- lista de items (lista de items que vai ganhar a cada nivel desbloqueado)
        count = {10, 15}, -- quantidade de items (quantidade respectivas dos items, 2160 --> 10, 2152 --> 15)
        level = {1, 2}, -- nivel necessario para resgatar (nivel do passe requerido para resgatar cada recompensa, 2160 -> 1, 2152 --> 2)

        types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa (passe necessarios para desbloquear a recompensa: 2160 --> Basico, 2152 --> Elite)
        storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item (storages para sinalizar que desbloqueou o item, 2160 --> 4922, 2152 --> 4923)
    },
    -- outros meses seguem o mesmo padrão...
}

PASS_MONSTERS = {
    -- lista de missões dos monstros, configurável aqui
    [1] = {name = "Mouse", type = "kill", storage = 8894, completed_storage = 9998, count = 50, points = 50, image = 798, text = "Derrote 50 Mouse"},
    [2] = {name = "Mouse", type = "kill", storage = 8895, completed_storage = 9999, count = 100, points = 50, image = 798, text = "Derrote 100 Mouse"},
    -- outras missões seguem o mesmo padrão...
}

PASS_STARTDAY = 1 -- dia que vai começar o pass
PASS_STARTWEEK = 9 -- mês que vai começar o pass
PASS_STARTYEAR = 2023 -- ano que vai começar o pass

PASS_ENDDAY = 2 -- dia que vai acabar o pass
PASS_ENDWEEK = 10 -- mês que vai acabar o pass
PASS_FINISH = "Acaba em: " .. PASS_ENDDAY .. "/" .. PASS_ENDWEEK .. "/" .. PASS_STARTYEAR -- mensagem de término do pass

PASS_BUYCOIN = 2160 -- moeda usada no passe
PASS_BUYLEVELPRICE = 5 -- quantidade de item que vai precisar para comprar 1 nível
PASS_BUYMAXLEVEL = 5 -- máximo de níveis que se pode comprar
PASS_BUYPASSPRICE = 30 -- quantidade de item que vai precisar para comprar o passe de elite

-- Storages
PASS_TYPE = 93929 -- storage para sinalizar se o passe é Básico ou Elite
PASS_POINTS = 93930 -- storage para sinalizar quantos pontos o jogador tem no passe (exp)
PASS_LEVEL = 93931 -- storage para sinalizar o nível do passe do jogador

-- Funções auxiliares

function getPlayerPass(cid)
    local player = Player(cid)
    if not player then
        return "Basic"
    end

    local passType = player:getStorageValue(PASS_TYPE)
    if passType == -1 then
        player:setStorageValue(PASS_TYPE, "Basic")
        passType = "Basic"
    end

    return passType
end

function setPlayerPass(cid, pass)
    local player = Player(cid)
    if not player then
        return false
    end

    player:setStorageValue(PASS_TYPE, pass)
    return true
end

function addPlayerPassPoints(cid, points)
    local player = Player(cid)
    if not player then
        return false
    end

    local currentPoints = player:getStorageValue(PASS_POINTS)
    if currentPoints == -1 then
        currentPoints = 0
    end

    player:setStorageValue(PASS_POINTS, currentPoints + points)
    return true
end

function setPlayerPassPoints(cid, points)
    local player = Player(cid)
    if not player then
        return false
    end

    player:setStorageValue(PASS_POINTS, points)
    return true
end

function getPlayerPassPoints(cid)
    local player = Player(cid)
    if not player then
        return 0
    end

    local points = player:getStorageValue(PASS_POINTS)
    if points == -1 then
        points = 0
        player:setStorageValue(PASS_POINTS, points)
    end

    return points
end

function setPlayerPassLevel(cid, level)
    local player = Player(cid)
    if not player then
        return false
    end

    player:setStorageValue(PASS_LEVEL, level)
    return true
end

function addPlayerPassLevel(cid, level)
    local player = Player(cid)
    if not player then
        return false
    end

    local currentLevel = player:getStorageValue(PASS_LEVEL)
    if currentLevel == -1 then
        currentLevel = 0
    end

    player:setStorageValue(PASS_LEVEL, currentLevel + level)
    return true
end

function getPlayerPassLevel(cid)
    local player = Player(cid)
    if not player then
        return 0
    end

    local level = player:getStorageValue(PASS_LEVEL)
    if level == -1 then
        level = 0
        player:setStorageValue(PASS_LEVEL, level)
    end

    return level
end

function sendOpenPassWindow(cid)
    local player = Player(cid)
    if not player then
        return false
    end

    local day = tonumber(os.date("%d"))
    local week = tonumber(os.date("%m"))
    local year = tonumber(os.date("%Y"))

    if day >= PASS_STARTDAY and week == PASS_STARTWEEK and year == PASS_STARTYEAR and day ~= PASS_ENDDAY and week ~= PASS_ENDWEEK then
        local tabela = PASS_ITEMS[week]
        if tabela then
            player:sendExtendedOpcode(PASS_DESTROYINFO, "rewards@")
            for i = 1, #tabela.items do
                if player:getStorageValue(tabela.storagesUnlock[i]) == -1 then
                    player:setStorageValue(tabela.storagesUnlock[i], 0)
                end

                if player:getStorageValue(tabela.storagesUnlock[i]) == 0 and getPlayerPassLevel(cid) >= tabela.level[i] and getPlayerPass(cid) == tabela.types[i] then
                    player:sendExtendedOpcode(PASS_COLLECT_OPCODE, tabela.items[i] .. "@" .. tabela.count[i] .. "@" .. tabela.level[i])
                end
            end
        end
    end
end
