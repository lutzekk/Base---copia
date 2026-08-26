-- Criado por Thalles Vitor --
-- Sistema de Passe de BATALHA --

PASS_OPENWINDOW_OPCODE = 230 -- enviar para o cliente que ele deve abrir o passe
PASS_COLLECT_OPCODE = 231 -- enviar para o cliente que ele pode resgatar uma recompensa
PASS_MONSTERSPASS_OPCODE = 240 -- enviar para o cliente a lista de monstros do passe
PASS_DESTROYINFO = 241 -- enviar para o cliente que ele deve destruir alguma informacao antiga
PASS_ITEMS = {
	-- todos os meses aqui: 01, 02, 03, 04 assim por diante, aqui s�o todos os meses q vc pode configurar
	[01] =
	{
		items = {2160, 2152}, -- lista de items (lista de items que vai ganhar a cada nivel desblloqueado)
		count = {10, 15}, -- quantidade de items (quantidade respectivas dos items, 2160 --> 10, 2152 --> 15)
		level = {1, 2}, -- nivel necessario para resgatar (nivel do passe requerido para resgatar cada recompensa, 2160 -> 1, 2152 --> 2)

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa (passe necessarios para desbloquear a recompensa: 2160 --> Basico, 2152 --> Elite)
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item (storages para sinalizar que desbloqueou o item, 2160 --> 4922, 2152 --> 4923)
	},

	[02] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[03] =
	{
		items = {19450, 17202, 19449, 17202, 19431, 17202, 19436, 17202, 19452, 17202, 19437, 17090, 17202, 17090, 17202, 17090, 17202, 16641, 17090, 19453, -- 20 Elite
				 19450, 18149, 19449, 18149, 19431, 18149, 19436, 18149, 19452, 18149, 19437, 18149, 18149, 17202, 18149, 17090, 17202, 16641, 17090, 19454, -- 20 Basic
		
		}, -- lista de items
		count = {100, 1, 100, 1, 30, 1, 30, 1, 100, 1, 50, 1, 1, 1, 1, 1, 1, 1, 1, 1, -- 20 Elite
		         100, 2, 100, 3, 30, 4, 30, 5, 100, 5, 50, 5, 5, 1, 5, 5, 1, 1, 1, 1 -- 20 Basic
		}, -- quantidade de items
		
		level = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, -- 20 Elite
				 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 -- 20 Basic
		}, -- nivel necessario para resgatar

		types = {"Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", -- 20 Elite
				 "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic" -- 20 Basic
		}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923, 4924, 4925, 4926, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939, 4940, 4941, -- 20
						  4942, 4943, 4944, 4945, 4946, 4947, 4948, 4949, 4950, 4951, 4952, 4953, 4954, 4955, 4956, 4957, 4958, 4959, 4960, 4961
		}, -- storages usadas para desbloquear o item
	},

	[04] =
	{
		items = {19450, 17202, 19449, 17202, 19431, 17202, 19436, 17202, 19452, 17202, 19437, 17090, 17202, 17090, 17202, 17090, 17202, 16641, 17090, 19453, -- 20 Elite
				 19450, 18149, 19449, 18149, 19431, 18149, 19436, 18149, 19452, 18149, 19437, 18149, 18149, 17202, 18149, 17090, 17202, 16641, 17090, 19454, -- 20 Basic
		
		}, -- lista de items
		count = {100, 1, 100, 1, 30, 1, 30, 1, 100, 1, 50, 1, 1, 1, 1, 1, 1, 1, 1, 1, -- 20 Elite
		         100, 2, 100, 3, 30, 4, 30, 5, 100, 5, 50, 5, 5, 1, 5, 5, 1, 1, 1, 1 -- 20 Basic
		}, -- quantidade de items
		
		level = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, -- 20 Elite
				 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 -- 20 Basic
		}, -- nivel necessario para resgatar

		types = {"Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", "Elite", -- 20 Elite
				 "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic", "Basic" -- 20 Basic
		}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923, 4924, 4925, 4926, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939, 4940, 4941, -- 20
						  4942, 4943, 4944, 4945, 4946, 4947, 4948, 4949, 4950, 4951, 4952, 4953, 4954, 4955, 4956, 4957, 4958, 4959, 4960, 4961
		}, -- storages usadas para desbloquear o item
	},
	
	[05] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[06] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[07] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[08] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[09] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},

	[10] =
	{
		items = {2673, 3956, 2160, 2160, 8962, 8963}, -- lista de items
		count = {100, 100, 10, 100, 1, 1}, -- quantidade de items
		level = {1, 1, 2, 2, 3, 3}, -- nivel necessario para resgatar

		types = {"Basic", "Elite", "Basic", "Elite", "Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {6000, 6001, 6002, 6003, 6004, 6005}, -- storages usadas para desbloquear o item
	},

	[11] =
	{
		items = {2160, 3956, 2160, 2160, 8962, 8963}, -- lista de items
		count = {100, 100, 10, 100, 1, 1}, -- quantidade de items
		level = {1, 1, 2, 2, 3, 3}, -- nivel necessario para resgatar

		types = {"Basic", "Elite", "Basic", "Elite", "Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {6000, 6001, 6002, 6003, 6004, 6005}, -- storages usadas para desbloquear o item
	},

	[12] =
	{
		items = {2160, 2152}, -- lista de items
		count = {10, 15}, -- quantidade de items
		level = {1, 2}, -- nivel necessario para resgatar

		types = {"Basic", "Elite"}, -- ranking necessario para desbloquear a recompensa
		storagesUnlock = {4922, 4923}, -- storages usadas para desbloquear o item
	},
}

PASS_MONSTERS = { -- aqui sao os monstros das missoe, voce pode configurar os nomes deles aqui, a storage sempre aumentando 1, a completed storage aumentando 1 tbm
-- points sao os pontos que a missao vai dar, e em imagem � a imagem do monstro que fica la no client, e em texto fica o texto que vai ficar embaixo do monstro la no client
-- lembrando que as miss�es n�o resetam, ent�o voc� tem que adicionar muitas, ou at� mesmo ficar mudando a storage.
	[1] = {name = "Wolf LvL 3", type = "kill", storage = 8894, completed_storage = 9998, count = 1, points = 50, image = 26, text = "1"},
	[2] = {name = "Wolf LvL 3", type = "kill", storage = 8895, completed_storage = 9999, count = 7, points = 50, image = 26, text = "2"},
	[3] = {name = "Wolf LvL 3", type = "kill", storage = 8896, completed_storage = 10000, count = 2, points = 50, image = 26, text = "3"},
	[4] = {name = "Wolf LvL 3", type = "kill", storage = 8897, completed_storage = 10001, count = 3, points = 50, image = 58, text = "4"},
	[5] = {name = "Wolf LvL 3", type = "kill", storage = 8898, completed_storage = 10002, count = 4, points = 50, image = 58, text = "5"},
	[6] = {name = "Wolf LvL 3", type = "kill", storage = 8899, completed_storage = 10003, count = 5, points = 50, image = 58, text = "6"},
	[7] = {name = "Wolf LvL 3", type = "kill", storage = 8900, completed_storage = 10004, count = 6, points = 50, image = 36, text = "7"},
	[8] = {name = "Wolf LvL 3", type = "kill", storage = 8901, completed_storage = 10005, count = 1500, points = 50, image = 36, text = "8"},
	[9] = {name = "Wolf LvL 3", type = "kill", storage = 8902, completed_storage = 10006, count = 2000, points = 50, image = 36, text = "9"},
}

PASS_STARTDAY = 1 -- dia que vai come�ar o pass -- aqui � o dia q come�a
PASS_STARTWEEK = 10 -- mes que vai come�ar o pass -- mes que come�a
PASS_STARTYEAR = 2024 -- ano que vai come�ar o pass -- ano que come�a e ano que acaba

PASS_ENDDAY = 1 -- dia que vai acabar o pass -- dia que acaba o passe
PASS_ENDWEEK = 11 -- mes que vai acabar o pass -- mes que acaba o passe
PASS_FINISH = "Expired: " .. PASS_ENDDAY .. "/" .. PASS_ENDWEEK .. "/" .. PASS_STARTYEAR -- lembrando que as datas precisam colidir com o mes, por exemplo: come�a no dia 01/02/2023 e acaba no dia 31/02/2023, se voce deixar por exemplo: 31/01/2023 pra come�ar e acabar em: 31/02/2023 n�o vai dar certo pq os meses s�o diferentes.

PASS_BUYCOIN = 2160 -- moeda usada no passe (atualizar passe, dar de presente, comprar level)
PASS_BUYLEVELPRICE = 5 -- quantidade de item que vai precisar pra comprar 1 nivel (diamond, sei la, a moeda que voce configurou acima)
PASS_BUYMAXLEVEL = 5 -- maximo de niveis que posso comprar
PASS_BUYPASSPRICE = 30 -- quantidade de item que vai precisar pra comprar o passe de elite (se for mexer aqui, mexe no texto do cliente tambem, pq l� ta 35)

-- Storages
PASS_TYPE = 93929 -- storage para sinalizar se o passe � Basico ou Elite
PASS_POINTS = 93930 -- storage para sinalizar quantos pontos eu tenho no passe (exp)
PASS_LEVEL = 93931 -- storage para sinalizar que nivel � o meu passe

-- quer configurar o script para voce  testar os dois e me retornar ? deixa comigo atualmente vou termina o shop ainda ah certo, eu vou comer aqui, qualquer coisa voce me chama? dmr!! obg :) tmj
function getPlayerPass(cid)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_TYPE)
	if storage == nil or storage == -1 then
		setPlayerStorageValue(cid, PASS_TYPE, "Basic")
	end
	
	return tostring(getPlayerStorageValue(cid, PASS_TYPE)) or "Basic"
end

function setPlayerPass(cid, pass)
	if not isPlayer(cid) then
		return true
	end

	setPlayerStorageValue(cid, PASS_TYPE, pass)
	return true
end

function addPlayerPassPoints(cid, points)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_POINTS)
	setPlayerStorageValue(cid, PASS_POINTS, storage+points)
	return true
end

function setPlayerPassPoints(cid, points)
	if not isPlayer(cid) then
		return true
	end

	setPlayerStorageValue(cid, PASS_POINTS, points)
	return true
end

function getPlayerPassPoints(cid)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_POINTS)
	if storage == nil or storage <= 0 then
		setPlayerStorageValue(cid, PASS_POINTS, 0)
	end

	return tonumber(getPlayerStorageValue(cid, PASS_POINTS)) or 0
end

function setPlayerPassLevel(cid, level)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_LEVEL)
	setPlayerStorageValue(cid, PASS_LEVEL, level)
	return true
end

function addPlayerPassLevel(cid, level)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_LEVEL)
	setPlayerStorageValue(cid, PASS_LEVEL, storage+level)
	return true
end

function getPlayerPassLevel(cid)
	if not isPlayer(cid) then
		return true
	end

	local storage = getPlayerStorageValue(cid, PASS_LEVEL)
	if storage == nil or storage <= 0 then
		setPlayerStorageValue(cid, PASS_LEVEL, 0)
	end

	return tonumber(getPlayerStorageValue(cid, PASS_LEVEL)) or 0
end

function sendOpenPassWindow(cid)
	if not isPlayer(cid) then
		return true
	end

	local day = tonumber(os.date("%d"))
	local week = tonumber(os.date("%m"))
	local year = tonumber(os.date("%Y"))
	if day >= PASS_STARTDAY and week == PASS_STARTWEEK and year == PASS_STARTYEAR and day ~= PASS_ENDDAY and week ~= PASS_ENDWEEK then
		local tabela = PASS_ITEMS[week]
		if tabela then
			cid:sendExtendedOpcode(PASS_DESTROYINFO, "rewards".."@")
			for i = 1, #tabela.items do -- sobre o tempo: enviar um g_game.getProtocolGame():sendExtendedOpcode do cliente para setar uma storage global com o tempo atual para nao ficar resetando
				if getPlayerStorageValue(cid, tabela.storagesUnlock[i]) == nil or getPlayerStorageValue(cid, tabela.storagesUnlock[i]) == -1 then
					setPlayerStorageValue(cid, tabela.storagesUnlock[i], 0)
				end
				
				if getPlayerStorageValue(cid, tabela.storagesUnlock[i]) >= 1 then
					cid:sendExtendedOpcode(PASS_OPENWINDOW_OPCODE, getItemDescriptions(tabela.items[i]).clientId.."@"..tabela.count[i].."@"..PASS_FINISH.."@".."unlocked".."@"..getPlayerPassPoints(cid).."@"..getPlayerPassLevel(cid).."@"..getPlayerPass(cid).."@"..tabela.types[i].."@"..getItemNameById(tabela.items[i]).."@")
				else
					cid:sendExtendedOpcode(PASS_OPENWINDOW_OPCODE, getItemDescriptions(tabela.items[i]).clientId.."@"..tabela.count[i].."@"..PASS_FINISH.."@".."locked".."@"..getPlayerPassPoints(cid).."@"..getPlayerPassLevel(cid).."@"..getPlayerPass(cid).."@"..tabela.types[i].."@"..getItemNameById(tabela.items[i]).."@")
				end

				if getPlayerStorageValue(cid, tabela.storagesUnlock[i]) <= 0 and getPlayerPassLevel(cid) >= tabela.level[i] then
					cid:sendExtendedOpcode(PASS_COLLECT_OPCODE, "collect".."@")
				end
			end
		else
			doPlayerPopupFYI(cid, "N�o existem meses para o passe de batalha.")
		end
	else
		doPlayerPopupFYI(cid, "Voc� ainda n�o pode fazer o passe por qu� ele n�o come�ou ou j� acabou.")
	end
	return true
end




local MAX_MONSTERS = 9  -- Número máximo de monstruos
local monstersActiveCount = 0  -- Contador de monstruos activos

function resetMonsters(cid)
    if not isPlayer(cid) then
        return true
    end

    local currentTime = os.time()
    local lastUpdateTime = getPlayerStorageValue(cid, LAST_UPDATE_STORAGE)

    -- Si el valor es -1, significa que nunca se ha actualizado
    if lastUpdateTime == -1 then
        lastUpdateTime = 0
    end

    -- Verificar si han pasado 24 horas (86400 segundos)
    if currentTime - lastUpdateTime >= 60 then
        -- Actualizar los monstruos
        if monstersActiveCount < MAX_MONSTERS then
            monstersActiveCount = monstersActiveCount + 5  -- Agregar 5 monstruos
        end
        
        -- Actualizar el tiempo del último reinicio
        setPlayerStorageValue(cid, LAST_UPDATE_STORAGE, currentTime)
        
        -- Mensaje de actualización
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Se han agregado nuevos monstruos.")
    else
        -- Calcular el tiempo restante para la próxima actualización
        local timeRemaining = 60 - (currentTime - lastUpdateTime)
        local hours = math.floor(timeRemaining / 3600)
        local minutes = math.floor((timeRemaining % 3600) / 60)
        local seconds = timeRemaining % 60

        -- Mensaje de tiempo restante
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, string.format("Tiempo restante para la próxima actualización: %02d:%02d:%02d", hours, minutes, seconds))
    end

    return true
end

function sendPassMonsters(cid)
    if not isPlayer(cid) then
        return true
    end

    -- Llamar a la función para reiniciar los monstruos
    resetMonsters(cid)

    local monsterCount = math.min(monstersActiveCount, MAX_MONSTERS)
    local indices = {}

    -- Llenar la tabla de índices de los monstruos activos
    for i = 1, monsterCount do
        table.insert(indices, i)
    end

    -- Enviar información sobre los monstruos activos
    cid:sendExtendedOpcode(PASS_DESTROYINFO, "monsters".."@")
    for i = 1, monsterCount do
        local index = indices[i]

        -- Enviar información sobre el progreso de la misión
        if getPlayerStorageValue(cid, PASS_MONSTERS[index].storage) >= PASS_MONSTERS[index].count then
            cid:sendExtendedOpcode(PASS_MONSTERSPASS_OPCODE, PASS_MONSTERS[index].name.."@"..PASS_MONSTERS[index].count.."@"..getPlayerStorageValue(cid, PASS_MONSTERS[index].storage).."@".."done".."@"..PASS_MONSTERS[index].image.."@"..PASS_MONSTERS[index].text.."@"..PASS_MONSTERS[index].points.."@")
        else
            cid:sendExtendedOpcode(PASS_MONSTERSPASS_OPCODE, PASS_MONSTERS[index].name.."@"..PASS_MONSTERS[index].count.."@"..getPlayerStorageValue(cid, PASS_MONSTERS[index].storage).."@".."notdone".."@"..PASS_MONSTERS[index].image.."@"..PASS_MONSTERS[index].text.."@"..PASS_MONSTERS[index].points.."@")
        end
    end

    return true
end






function collectRecompensePass(cid)
    if not isPlayer(cid) then
        return true
    end

    -- Verificar el tipo de pase del jugador
    local playerPassType = getPlayerStorageValue(cid, 93929)

    -- Obtener el número de la semana
    local week = tonumber(os.date("%m"))
    local tabela = PASS_ITEMS[week]
    if tabela then
        cid:sendExtendedOpcode(PASS_DESTROYINFO, "hideAll".."@")
        for i = 1, #tabela.items do
            -- Verificar si la recompensa es para el pase básico
            if tabela.types[i] == "Basic" and getPlayerStorageValue(cid, tabela.storagesUnlock[i]) <= 0 and getPlayerPassLevel(cid) >= tabela.level[i] then
                -- Dar ítems de recompensa básica
                if getItemDescriptions(tabela.items[i]).stackable then
                    doPlayerAddItem(cid, tabela.items[i], tabela.count[i])
                else
                    for it = 1, tabela.count[i] do
                        doPlayerAddItem(cid, tabela.items[i], 1)
                    end
                end

                -- Marcar recompensa como reclamada
                setPlayerStorageValue(cid, tabela.storagesUnlock[i], 1)
                doPlayerPopupFYI(cid, "Has reclamado tus recompensas básicas.")
            end

            -- Verificar si la recompensa es para el pase élite
            if tabela.types[i] == "Elite" then
                if playerPassType == 1 and getPlayerStorageValue(cid, tabela.storagesUnlock[i]) <= 0 and getPlayerPassLevel(cid) >= tabela.level[i] then
                    -- Dar ítems de recompensa élite
                    if getItemDescriptions(tabela.items[i]).stackable then
                        doPlayerAddItem(cid, tabela.items[i], tabela.count[i])
                    else
                        for it = 1, tabela.count[i] do
                            doPlayerAddItem(cid, tabela.items[i], 1)
                        end
                    end

                    -- Marcar recompensa como reclamada
                    setPlayerStorageValue(cid, tabela.storagesUnlock[i], 1)
                    doPlayerPopupFYI(cid, "Has reclamado tus recompensas élite.")
                elseif playerPassType ~= 1 then
                    -- Mensaje si no tiene el pase élite
                    doPlayerPopupFYI(cid, "No tienes el pase élite para reclamar estas recompensas.")
                end
            end
        end

        -- Actualizar la ventana del pase
        cid:sendExtendedOpcode(PASS_COLLECT_OPCODE, "notcollect".."@")
        sendOpenPassWindow(cid)
    end

    return true
end


function resetPass(cid)
	if not isPlayer(cid) then
		return true
	end
	
	local day = tonumber(os.date("%d"))
	local week = tonumber(os.date("%m"))
	local year = tonumber(os.date("%Y"))
	if day >= PASS_ENDDAY and week >= PASS_ENDWEEK and year == PASS_ENDYEAR then
		for i = 1, 12 do
			local tabela = PASS_ITEMS[i]
			if tabela then
				for it = 1, #tabela.storagesUnlock do
					setPlayerStorageValue(cid, tabela.storagesUnlock[it], 0)
				end
			end
		end

		for i = 1, #PASS_MONSTERS do
			setPlayerStorageValue(cid, PASS_MONSTERS[i].storage, 0)
			setPlayerStorageValue(cid, PASS_MONSTERS[i].completed_storage, 0)
		end

		doPlayerSendTextMessage(cid, 25, "O passe de batalha foi resetado!")
		setPlayerPassLevel(cid, 0)
		setPlayerPassPoints(cid, 0)
	end
	return true
end

function buyPassElite(cid)
	if not isPlayer(cid) then
		return true
	end

	if getPlayerPass(cid) == "1" then
		doPlayerPopupFYI(cid, "Voc� j� tem o passe de elite.")
		return true
	end

    if getZnotePoints(cid, PASS_BUYCOIN, -1) < PASS_BUYPASSPRICE then
		doPlayerPopupFYI(cid, "Voc� n�o tem dinheiro suficiente para comprar o passe.")
		return true
	end

	cid:sendExtendedOpcode(PASS_DESTROYINFO, "hideAll".."@")
	doPlayerPopupFYI(cid, "Voc� comprou o passe de elite!")
	removeZnotePoints(cid, PASS_BUYPASSPRICE)

	-- Caso queira que reseta o level e a exp so desmarcar as linhas
	-- addPlayerPassLevel(cid, 1)
	-- setPlayerPassPoints(cid, 0)

	setPlayerPass(cid, 1)
	sendOpenPassWindow(cid)
	return true
end

function buyPassElite(cid)
    if not isPlayer(cid) then
        return true
    end

    -- Verificar si el jugador ya tiene el pase élite
    if getPlayerStorageValue(cid, 93929) == 1 then
        doPlayerPopupFYI(cid, "Ya tienes el pase de elite.")
        return true
    end

    -- Obtener los puntos premium actuales del jugador
    local playerAccountId = getPlayerAccountId(cid)
    local query = db.storeQuery("SELECT `premium_points` FROM `accounts` WHERE `id` = " .. playerAccountId)
    local premiumPoints = 0
    if query ~= false then
        premiumPoints = result.getDataInt(query, "premium_points")
        result.free(query)
    end

    -- Verificar si el jugador tiene suficientes puntos premium
    if premiumPoints < 30 then
        doPlayerPopupFYI(cid, "No tienes suficientes puntos premium para comprar el pase de elite.")
        return true
    end

    -- Restar 30 puntos premium al jugador
    db.query("UPDATE `accounts` SET `premium_points` = `premium_points` - 30 WHERE `id` = " .. playerAccountId)

    -- Mostrar mensaje de confirmación de compra
    cid:sendExtendedOpcode(PASS_DESTROYINFO, "hideAll".."@")
    doPlayerPopupFYI(cid, "Has comprado el pase de elite!")

    -- Asignar el pase élite (storage 93930 = 1)
    setPlayerStorageValue(cid, 93929, 1)

    -- Abrir la ventana del pase
    sendOpenPassWindow(cid)
    return true
end
