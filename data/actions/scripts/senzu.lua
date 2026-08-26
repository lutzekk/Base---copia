--[[
BH Corp.
100% wydajniej !
]]--
local t = {
    [2673] = {hp = 20000, ki = 20000, m = "I feel the best!", s = 6315, exh = 1}, -- senzu
    [2795] = {hp = 10000, ki = 10000, m = "I feel good!", s = 6316, exh = 1}, -- senzu leaf
    [2796] = {hp = 15000, ki = 15000, m = "I feel better!", s = 6317, exh = 1},  -- senzu root
    [3956] = {hp = 40000, ki = 40000, m = "My enchanted power!", s = 6318, exh = 1}  -- red senzu
}

function getItemType(item)
    if item.type > 1 then
        doChangeTypeItem(item.uid, item.type - 1)
    else
        doRemoveItem(item.uid, 1)
    end
end

function onUse(cid, item, frompos, item2, topos)
    local p = getPlayerPosition(cid)
    local getDane = t[item.itemid]
    
    if getDane then
        local additionalHealing = 0
        
        -- Verificar si el jugador tiene el storage 876567
        if getPlayerStorageValue(cid, 876567) == 1 then
            if item.itemid == 2673 or item.itemid == 3956 then
                additionalHealing = 5000
            end
        end

        if os.time() > getPlayerStorageValue(cid, getDane.s) then
            -- Añadir la curación con la cantidad adicional
            doCreatureAddMana(cid, getDane.hp + additionalHealing)
            doCreatureAddHealth(cid, getDane.ki + additionalHealing)
            
            -- Enviar mensaje animado o efecto mágico si lo deseas
            -- doSendAnimatedText(p, "+" .. rand, 18)
            doSendMagicEffect(p, 11)
            
            -- Decir algo al jugador
            doCreatureSay(cid, getDane.m, TALKTYPE_ORANGE_1)
            
            -- Establecer el tiempo de agotamiento
            setPlayerStorageValue(cid, getDane.s, os.time() + getDane.exh)
            
            -- Cambiar el tipo de item o eliminarlo
            getItemType(item)
        else
            doSendMagicEffect(p, CONST_ME_POFF)
            doPlayerSendCancel(cid, "You are exhausted.")
        end
    end
    
    return true
end
