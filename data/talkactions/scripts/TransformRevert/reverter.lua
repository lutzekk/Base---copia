local config = {
--[vocation id] = { level, nova voc, looktype, efeito}
-- Goku
[2] = { 0, 1, 2, 118},
[3] = { 0, 1, 2, 116},
[4] = { 0, 1, 2, 116},
[5] = { 0, 1, 2, 121},
[6] = { 0, 1, 2, 116},

}
function onSay(cid, words, param, channel)
local voc = config[getPlayerVocation(cid)]
if voc then
if getPlayerLevel(cid) >= voc[1] then
doPlayerSetVocation(cid, voc[2])
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Voce reverteu!")
doCreatureSay(cid, "Reverter", 19)
local outfit = {lookType = voc[3]}
doCreatureChangeOutfit(cid, outfit)
doSendMagicEffect(getCreaturePosition(cid), voc[4])
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Voce precisa estar no level " .. voc[1] .. " para reverter.")
end
else
doPlayerSendCancel(cid, "Nao é possível reverter.")
end
return true
end