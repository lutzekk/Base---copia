local t = {
[7] = {v = 259},

}

function onSay(cid, words, param)
local v = t[getPlayerVocation(cid)]
	if(v) then
		doCreatureChangeOutfit(cid, {lookType=v.v})
		return true
	end
    return true
end