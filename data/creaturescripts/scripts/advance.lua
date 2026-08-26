local config = {
    [0] = { "Fist skill UP", 31}, 
    [1] = { "Attack Speed UP", 31}, 
    [2] = { "Critical UP", 31}, 
    [3] = { "Strenght UP", 31}, 
    [4] = { "Ki Blast UP", 31}, 
    [5] = { "Defense UP", 31}, 
    [6] = { "Energy UP", 31},
    [7] = { "Magic level UP", 31}, 
    [8] = { "Level UP", 30} 
}


function onAdvance(cid, skill, oldlevel, newlevel)

local pos = getPlayerPosition(cid)
local effectPositions = {
{x = pos.x, y = pos.y - 3, z = pos.z},
{x = pos.x, y = pos.y + 3, z = pos.z},
{x = pos.x - 3, y = pos.y, z = pos.z},
{x = pos.x + 3, y = pos.y, z = pos.z},
{x = pos.x - 2, y = pos.y - 2, z = pos.z},
{x = pos.x + 2, y = pos.y - 2, z = pos.z},
{x = pos.x + 2, y = pos.y + 2, z = pos.z},
{x = pos.x - 2, y = pos.y + 2, z = pos.z}
}

        
    for type, variable in pairs(config) do
        if skill == type then
            doCreatureSay(cid, ""..variable[1].." ["..newlevel.."]", TALKTYPE_ORANGE_1)
	for _, ePos in ipairs(effectPositions) do
		doSendDistanceShoot(pos, ePos, 3)
		doSendMagicEffect(ePos,15)
            end

            
        end
    end    
return TRUE
end