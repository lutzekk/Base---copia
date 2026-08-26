function onCastSpell(cid, var) 
local pos = getCreaturePosition(cid)
local effect = 11
    if getPlayerStorageValue(cid, CHARGE) == 1 then
        setPlayerStorageValue(cid, CHARGE, 0)
    elseif (getCreatureCondition(cid, CONDITION_INFIGHT) == true)then
        doPlayerSendCancel(cid, "Sorry, you are in fight.")
        doSendMagicEffect(pos, CONST_ME_POFF)
    elseif (getPlayerMana(cid) == getPlayerMaxMana(cid)) and (getCreatureHealth(cid) == getCreatureMaxHealth(cid)) then
        doPlayerSendCancel(cid, "Sorry, you are full.")
        doSendMagicEffect(pos, CONST_ME_POFF)
    else
        setPlayerStorageValue(cid, CHARGE, 1)
        doCreatureSetNoMove(cid, true)
        addEvent(dajmane, 0, cid)
    end
end   
function dajmane(cid)
local lvl = getPlayerLevel(cid)
local effect = 11 
  if (getPlayerMana(cid) < getPlayerMaxMana(cid) and getCreatureCondition(cid, CONDITION_INFIGHT) == false and getPlayerStorageValue(cid, CHARGE) == 1) or (getCreatureHealth(cid) < getCreatureMaxHealth(cid) and getCreatureCondition(cid, CONDITION_INFIGHT) == false and getPlayerStorageValue(cid, CHARGE) == 1) then 
    doPlayerAddMana(cid, lvl * 30)
    doCreatureAddHealth(cid, lvl * 32)
    addEvent(dajmane, 1000, cid) 
    doSendMagicEffect(getCreaturePosition(cid), effect) 
    else stopEvent(dajmane, true)
    doCreatureSetNoMove(cid, false)
    setPlayerStorageValue(cid, CHARGE, 0)
  end
end  