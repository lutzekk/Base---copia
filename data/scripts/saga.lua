local saga = {
    ['raditz saga'] = {storageValue = 1},
    ['monkey saga'] = {storageValue = 3},
    ['gregory saga'] = {storageValue = 5},
    ['saibaman saga'] = {storageValue = 9},
    ['nappa saga'] = {storageValue = 10},
    ['vegeta saga'] = {storageValue = 11},
    ['vegeta oozaru saga'] = {storageValue = 12},
    ['dodoria saga'] = {storageValue = 15},
    ['zarbon saga'] = {storageValue = 17},
    ['guldo saga'] = {storageValue = 19},
    ['reecome saga'] = {storageValue = 20},
    ['coopasa saga'] = {storageValue = 21},
    ['capitan ginyu saga'] = {storageValue = 22},
    ['Capitan Ginyu Goku saga'] = {storageValue = 23},
    ['freeza form one saga'] = {storageValue = 25},
    ['freeza form two saga'] = {storageValue = 25},
    ['freeza form tree saga'] = {storageValue = 25},
    ['freeza form four saga'] = {storageValue = 25},
    ['freeza form five saga'] = {storageValue = 25},
    ['freeza form five saga'] = {storageValue = 25},
    ['metal freeza saga'] = {storageValue = 27}, -- aca es el que cuenta debes tener el storage 27para poder atacaro
    ['c19 saga'] = {storageValue = 29},
    ['c20 saga'] = {storageValue = 30},
    ['Cell First Saga'] = {storageValue = 32},
    ['c17 saga'] = {storageValue = 33},
    ['Cell Second Form'] = {storageValue = 34},
    ['Cell jr saga'] = {storageValue = 35},
    ['cell third saga'] = {storageValue = 36}, 
    ['cell fourth saga'] = {storageValue = 37},
    ['majin vegeta saga'] = {storageValue = 41},
    ['fat buu saga'] = {storageValue = 43},
    ['evil buu saga'] = {storageValue = 45},
    ['desert Buu saga'] = {storageValue = 47},
    ['super Buu saga'] = {storageValue = 48},
    ['Cell From Buu Saga'] = {storageValue = 48},
    ['Kid Buu Saga'] = {storageValue = 50},--siempre coloca las comas
    ['Bebi Saga'] = {storageValue = 52},
    ['Bebi Oozaru Saga'] = {storageValue = 52},
    ['Super C17 Saga'] = {storageValue = 54},
    ['ryan shenlong saga'] = {storageValue = 56},
    ['Chii shenlong saga'] = {storageValue = 57},
    ['Uu shenlong saga'] = {storageValue = 58},
    ['Ryuu shenlong saga'] = {storageValue = 59},
    ['Suu shenlong saga'] = {storageValue = 60},
    ['San shenlong saga'] = {storageValue = 61},
    ['Li shenlong saga'] = {storageValue = 62},
    ['Omega shenlong saga'] = {storageValue = 63},
    











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
