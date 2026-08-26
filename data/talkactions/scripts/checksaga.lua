function onSay(cid, words, param)
    local storage = {8000}
    local players = getPlayersOnline()
    local checkPlayers = {}
    

    for _, saga in pairs(storage) do
        for _, pid in pairs(players) do
            if true then
                local string = "\n Rank: ".. getCreatureName(cid) .. ""
                if getPlayerStorageValue(pid, saga) then
                    table.insert(checkPlayers, saga)
                end
            end
        end    
    end
    doShowTextDialog(cid, 2160, string)
    return true
end