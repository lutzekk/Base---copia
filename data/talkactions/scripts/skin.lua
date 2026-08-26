local config = {
    -- Itachi Uchiha ---
    ["itachi susano use comando !skinitachis "]    = {storage = 24590},
	["itachi anbu use comando !skinitachia "]    = {storage = 24591},
	["itachi uchiha use comando !skinitachiu "]    = {storage = 24592},
	["itachi lutador use comando !skinitachib "]    = {storage = 24593},
	["itachi tsukuyomi use comando !skinitachit "]    = {storage = 24577},
	-- Tobirama ---
	["tobirama anbu use comando !skintobiramaa "]    = {storage = 24579},
	["tobirama akatsuki use comando !skintobiramaak "]    = {storage = 24570},
	["tobirama thug use comando !skintobiramathug "]    = {storage = 24571},
	["tobirama flash use comando !skintobiramaflash "]    = {storage = 24572},
	["tobirama kage use comando !skintobiramakage "]    = {storage = 24579},
	["tobirama sennin use comando !skintobiramasennin "]    = {storage = 24575},
	-- Bills ---
	["bills akatsuki use comando !skinbillsak "]    = {storage = 24575},
	["bills joker use comando !skinbillsjoker "]    = {storage = 24581},
	["bills misterioso use comando !skinbillsmiste "]    = {storage = 24582},
	["bills zeno use comando !skinbillszeno "]    = {storage = 24583},
	["bills ultra use comando !skinbillsultra "]    = {storage = 24584},
	["bills wiper use comando !skinbillswiper "]    = {storage = 24585},
	-- Ichigo ---
	["ichigo akatsuki use comando !skinichigoak "]    = {storage = 24586},
	["ichigo anbu use comando !skinichigoa "]    = {storage = 24587},
	["ichigo shinigami use comando !skinichigoshi "]    = {storage = 24588},
	["ichigo deus use comando !skinichigodeus "]    = {storage = 24589},
	-- Zeldris ---
	["zeldris akatsuki use comando !skinzeldrisak "]    = {storage = 24594},
	["zeldris anbu use comando !skinzeldrisa "]    = {storage = 24595},
}

function onSay(cid, words, param)
    
    if param == '' then
        local texto = "Você possui as skins:\n"
        for i,k in pairs(config) do
            if ( getPlayerStorageValue(cid, config[i].storage) ~= -1 ) then 
			texto = texto..i.." \n"
            end    
        end
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, texto)
        return true
    end
	
    return false
end
