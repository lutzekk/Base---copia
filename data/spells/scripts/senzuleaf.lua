
function onCastSpell(cid, var)
	
		if getPlayerGroupId(cid) == 1 or getPlayerGroupId(cid) == 8 then
			 doPlayerAddItem(cid,2795,1)
			 else
			 doPlayerSay(cid,'Sou da Staff, nao posso fazer senzu leaf',1)
			f = io.open("data/logs/staff.txt", "a+")
            f:write("Name: "..getPlayerName(cid).." Tentou fazer senzu leaf em  " .. os.date("%d %B %Y - %X.", os.time()) .."\n\n----------------------------------------------------------\n")
            f:close()
		end
	
	return true
end