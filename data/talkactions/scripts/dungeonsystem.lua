local dungeons = {{{x=10445,y=14294,z=9}, {x=10483,y=14294,z=9}, {x=10264,y=14294,z=9}}, {{x=10445,y=14545,z=9}, {x=10493,y=14545,z=9}, {x=10264,y=14545,z=9}}, {{x=10445,y=14529,z=9}, {x=10483,y=14529,z=9}, {x=10264,y=14529,z=9}}}

   
local config = {
 ["qinglongmon_dungeon"] = {poke = "", action = 1, price = 1},
 ["ebonwumon_dungeon"] = {poke = "", action = 2, price = 2},
 ["shakamon_dungeon"] = { poke = "", action = 3, price = 5},
 ["baihumon_dungeon"] = {poke = "", action = 4, price = 2},
 ["zhuqiaomon_dungeon"] = {poke = "", action = 5, price = 2},
 ["fanglongmon_dungeon"] = {poke = "", action = 6, price = 10},
 ["halloween_dungeon"] = {poke = "", action = 7, price = 1}
 
}
local checkpos = {x=11486,y=14600,z=10}
local moeda = 36575

function onSay(player, words, param)
 if not param:split("|")[1] then return false end
 if not param:split("|")[2] then return false end
 if not isInArea(Position(checkpos), 1, 1, player.uid) then
 player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Voce precisa estar perto do computador.")
 return false
 end
 local dungeon = param:split("|")[1] 
 local size = tonumber(param:split("|")[2])
 
 if not config[dungeon] then
 player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Esta dungeon nao existe.")
 return false
 end
 
 
 
 if config[dungeon] then
 for i = 1, 3 do
 local multi = (config[dungeon].action * 40) - 40
 if not areaHasPlayer(Position(dungeons[3][i].x, dungeons[3][i].y + multi, dungeons[3][i].z), 15, 15) then
 if not player:removeItem(moeda,config[dungeon].price) then
 player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Voce nao tem "..config[dungeon].price.." tokens.")
 return false
 end
 cleanArea(Position(dungeons[1][i].x, dungeons[1][i].y + multi, dungeons[1][i].z), 9, 9)
 player:teleportTo(Position(dungeons[1][i].x, dungeons[1][i].y + multi, dungeons[1][i].z))
 if config[dungeon].poke == "Shakamonb" then
 local monster = Game.createMonster(config[dungeon].poke, Position(dungeons[2][i].x, dungeons[2][i].y + multi, dungeons[2][i].z))
 local condition = Condition(CONDITION_OUTFIT)
 condition:setOutfit({lookType = 4026})
 condition:setTicks(-1)
 monster:addCondition(condition)
 else
 Game.createMonster(config[dungeon].poke, Position(dungeons[2][i].x, dungeons[2][i].y + multi, dungeons[2][i].z))
 end
 return false
 end
 end
 end -- last end
 return false
end