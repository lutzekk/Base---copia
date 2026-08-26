local function CheckPlayer_Items()
query = db.getResult("SELECT *, SUBSTRING( CONVERT( attributes USING latin1 ) FROM 22) AS  'serial' FROM player_items WHERE CONVERT( attributes USING latin1 ) LIKE  '%description%' GROUP BY SUBSTRING( CONVERT( attributes USING latin1 ) FROM 22) having count(*) > 1")
if (query:getID() == -1) then
textquery = "\n Check Items : Nenhum item encontrado. DBO Antares"
print(textquery)
return true 
end
if (query:getID() ~= -1) then
text = "\n[!] -> Deleting item player_items: [Player ID: " .. getPlayerNameByGUID(query:getDataInt("player_id")) .. " - Sid: "..(query:getDataInt("sid")).." - Pid: "..(query:getDataInt("pid")).." - Itemtype: "..(query:getDataInt("itemtype")).." - Serial: " .. query:getDataString("serial") ..""
db.query("DELETE FROM  `dbo`.`player_items` WHERE  `player_items`.`player_id` =" .. (query:getDataInt("player_id")) .. " AND  `player_items`.`sid` ="..(query:getDataInt("sid")).." AND  `player_items`.`pid` ="..(query:getDataInt("pid"))..";")
db.query("DELETE FROM  `dbo`.`player_depotitems` WHERE SUBSTRING(CONVERT(attributes USING latin1) FROM 22) = " .. db.escapeString(query:getDataString("serial")) .. ";")
db.query("DELETE FROM  `dbo`.`tile_items` WHERE SUBSTRING(CONVERT(attributes USING latin1) FROM 22) = " .. db.escapeString(query:getDataString("serial")) .. ";")
f = io.open("data/logs/AntiClone.txt", "a+")
f:write("Player: "..text.." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n\n----------------------------------------------------------\n")
f:close() 
print(text)
if (query:getID() == -1) then
textplayer_items = "\n Check Items : Todos os Items Foram Removidos. DBO Antares"
print(textplayer_items)
return true
end
CheckPlayer_Items()
end
return true
end

local function CheckPlayer_DepotItems()
query = db.getResult("SELECT *, SUBSTRING( CONVERT( attributes USING latin1 ) FROM 22) AS  'serial' FROM player_depotitems WHERE CONVERT( attributes USING latin1 ) LIKE  '%description%' GROUP BY SUBSTRING( CONVERT( attributes USING latin1 ) FROM 22) having count(*) > 1")
if (query:getID() == -1) then
textquery = "\n Check Items : Nenhum item encontrado. DBO Antares"
print(textquery)
return true 
end
if (query:getID() ~= -1) then
text = "\n[!] -> Deleting item player_depotitems: [Player ID: " .. getPlayerNameByGUID(query:getDataInt("player_id")) .. " - Sid: "..(query:getDataInt("sid")).." - Pid: "..(query:getDataInt("pid")).." - Itemtype: "..(query:getDataInt("itemtype")).." - Serial: " .. query:getDataString("serial") ..""
db.query("DELETE FROM  `dbo`.`player_items` WHERE  `player_items`.`player_id` =" .. (query:getDataInt("player_id")) .. " AND  `player_items`.`sid` ="..(query:getDataInt("sid")).." AND  `player_items`.`pid` ="..(query:getDataInt("pid"))..";")
db.query("DELETE FROM  `dbo`.`player_depotitems` WHERE SUBSTRING(CONVERT(attributes USING latin1) FROM 22) = " .. db.escapeString(query:getDataString("serial")) .. ";")
db.query("DELETE FROM  `dbo`.`tile_items` WHERE SUBSTRING(CONVERT(attributes USING latin1) FROM 22) = " .. db.escapeString(query:getDataString("serial")) .. ";")
f = io.open("data/logs/AntiClone.txt", "a+")
f:write("Player: "..text.." - " .. os.date("%d %B %Y - %X.", os.time()) .."\n\n----------------------------------------------------------\n")
f:close() 
print(text)
if (query:getID() == -1) then
textplayer_items = "\n Check Items : Todos os Items Foram Removidos. DBO Evolution"
print(textplayer_items)
return true
end
CheckPlayer_DepotItems()
end
return true
end
function onStartup()
CheckPlayer_Items()
CheckPlayer_DepotItems()
return true
end