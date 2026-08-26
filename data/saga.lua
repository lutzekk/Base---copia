local saga = {
    ['raditz saga'] = {storageValue = 1},
    ['monkey'] = {storageValue = 3},
    ['gregory'] = {storageValue = 5},
    ['saibaman'] = {storageValue = 7},
    ['nappa'] = {storageValue = 8},
    ['vegeta'] = {storageValue = 9},
    ['vegeta oozaru'] = {storageValue = 9},
    -- ... (sigue con tu lista completa)
    ['fused zamasu'] = {storageValue = 83}
}

--  Creamos la instancia de EventCallback
local ec = EventCallback

function ec.onTargetCombat(creature, target)
    --NO ATTACK PET
    if target:getMaster() and creature:isPlayer() then
        return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
    end


    --  SECURE MODE BLOCK
    if creature:isPlayer() and target:isPlayer() and creature:hasSecureMode() then
        return RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER
    end

    --  SAGA CHECK
    for name, data in pairs(saga) do
        if name:lower() == target:getName():lower() then
            if creature:getStorageValue(8000) ~= data.storageValue then
                return RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE
            end
        end
    end

    return RETURNVALUE_NOERROR
end

--  Lo registramos correctamente como tipo 1 (onTargetCombat)
ec:register(1)
