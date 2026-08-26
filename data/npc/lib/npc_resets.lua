--[[Script made 100% by Nogard, Night Wolf and Linus.
   You can feel free to edit anything you want, but don't remove the credits]] 

config = {

	minlevel = 150, --- Level inical para resetar
	price = 10000, --- Preço inicial para resetar
	newlevel = 1, --- Level após reset
	resetOne = 8937, --- Preço acrescentado por reset
	resetTwo = 8938, --- Preço acrescentado por reset
	resetThird = 8939, --- Preço acrescentado por reset
	resetFourth = 8940, --- Preço acrescentado por reset
	resetFive	= 8941, --- Preço acrescentado por reset
	percent = 30, ---- Porcentagem da vida/mana que você terá ao resetar (em relação à sua antiga vida total)
	maxresets = 5, ---- Maximo de resets
	levelbyreset = 0 --- Quanto de level vai precisar a mais no próximo reset

}

function getResets(uid)
	resets = getPlayerStorageValue(uid, 378378)
		if resets < 0 then
	        resets = 0
	    end
	return resets
end

function addReset(cid)
	player = Player(cid)
	resets = getResets(cid)
	playerid = player:getGuid()
	player:setStorageValue(378378, resets+1) 
    player:remove()		
	description = resets+1
    db.query("UPDATE `players` SET `description` = ' [Reset: "..description.."]' WHERE `players`.`id`= ".. playerid .."")
	db.query("UPDATE `players` SET `level`="..config.newlevel..",`experience`= 0 WHERE `players`.`id`= ".. playerid .."")
    return true
end