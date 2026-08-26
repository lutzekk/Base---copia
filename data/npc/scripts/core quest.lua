local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end

function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end

function onThink()
    npcHandler:onThink()
end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)
    local storageValue = player:getStorageValue(8002) -- Obtén el valor de almacenamiento actual del jugador

    if msgcontains(msg, "mission") then
    if storageValue == -1 then
            -- Si el valor de almacenamiento es -1, significa que el jugador aún no ha iniciado la misión
       player:setStorageValue(8002, 301)
	   
	local newPowerCoreID = 9191 -- Cambia esto al ID del nuevo ítem que deseas dar al jugador en la segunda etapa de la misión.
	   player:addItem(newPowerCoreID, 1)
            selfSay("Good Luke!", cid)
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Excellent! I have a mission for you. Capture me a janemba that escaped to the north and I will reward you")

		player:setStorageValue(8002, 302)
    elseif storageValue == 301 then
			 selfSay("I have given you the artifact. Now go capture what I asked for!", cid)
    elseif storageValue == 302 then
    local itemID = 9188 -- Cambia esto al ID del ítem que deseas quitar al jugador

            -- Verifica si el jugador tiene el ítem que deseas quitar y si es así, se lo quitas.
    if player:removeItem(itemID, 1) then
                -- Establece el valor de almacenamiento en 303 para indicar que el jugador ha entregado el ítem anterior.
           player:setStorageValue(8002, 303)

			 doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Thank you for capturing the janemba. The search is complete")
	local newPowerCoreeID = 9188 -- Cambia esto al ID del nuevo ítem que deseas dar al jugador en la segunda etapa de la misión.
	   player:addItem(newPowerCoreeID, 1)

        else
           selfSay("You haven't returned the item yet. Please come back when you have it.", cid)
            end
    elseif storageValue == 303 then
		   player:setStorageValue(8002, 304)

            -- El jugador ya ha completado la misión primaria
           selfSay("Thank you for helping! The mission is complete. Now you can trade me materials for a power core.", cid)
        else
            -- El jugador no ha completado las misiones anteriores, debe completarlas primero
           selfSay("Thank you for helping! The mission is complete. Now you can trade me materials for a power core.", cid)
        	end
    elseif storageValue == 304 then
       	 -- El jugador ya ha completado la quest
		local node1 = keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = '¿Deseas cambiar tus {God Legs} y {God Helmet} por un {Power Core}?.   {change}'})
		  node1:addChildKeyword({'change'}, function()
    	local godLegsID = 1234 -- Reemplaza 1234 con el ID del God Legs que quieres que el jugador entregue
    	local godHelmetID = 5678 -- Reemplaza 5678 con el ID del God Helmet que quieres que el jugador entregue
    	local powerCoreID = 9191 -- Reemplaza 9191 con el ID del Power Core que quieres dar al jugador
	if player:removeItem(godLegsID, 1) and player:removeItem(godHelmetID, 1) then
             -- Agrega el Power Core al inventario del jugador
           player:addItem(powerCoreID, 1)

           npcHandler:say("Has hecho un cambio sabio. Aquí tienes tu {Power Core}.", cid)
        else
           npcHandler:say("Necesitas tener ambos {God Legs} y {God Helme} para hacer este intercambio.", cid)
            end
        		end)
           node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = '¿No estás interesado entonces?'})
    	else
        -- Si el valor del storageValue no coincide con ninguna de las condiciones anteriores, puede que haya un error o que el jugador ya haya completado todas las misiones.
        npcHandler:say("¡Aún no has completado mis misiones anteriores! ¡Vuelve cuando las hayas completado!", cid)
    		end

    			return true
			end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. My name is Zeus, A Janemba prototype escaped, he went north. If you catch him with this item I will give you a sample and teach you my knowledge. {Mission} or {Trade}")
npcHandler:addModule(FocusModule:new())
