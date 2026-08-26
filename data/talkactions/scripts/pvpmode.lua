local msg = "%s."
function onSay(cid, words, param)
local _table = {
    ["on"] = {"activated", 1},
    ["off"] = {"deactivated", 0},
}
    if _table[param:lower()] then
        local mode = _table[param:lower()]
        setPlayerStorageValue(cid, 91821, mode[2])
        doPlayerSendTextMessage(cid, 27, "Your pvp was "..msg:format(mode[1]))
    end
    return true
end