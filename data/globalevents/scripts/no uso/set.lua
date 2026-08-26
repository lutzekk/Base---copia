local items = {
--[[[id] = {extraKi = 200, extraHealth = 200,
	equipItems = {
	{"armor", id}, 
	{"boots", id}
	}},
}, ]]-- // przykladowy
[2476] = {extraKi = 500, extraHealth = 500, extraRage = 0, extraExp = 0,
	equipItems = {
	{"legs", 2477}, 
	{"boots", 2645}
}},
[2658] = {extraKi = 900, extraHealth = 1200, extraRage = 0, extraExp = 0,
	equipItems = {
	{"helmet", 2471}, 
	{"legs", 2460}, 
	{"boots", 2643}
}},
[2489] = {extraKi = 1200, extraHealth = 600, extraRage = 0, extraExp = 0,
	equipItems = {
	{"helmet", 2475}, 
	{"legs", 2488}, 
	{"boots", 2644}
}},
[2523] = {extraKi = 300, extraHealth = 450, extraRage = 0, extraExp = 0,
	equipItems = {
	{"legs", 2521}, 
	{"boots", 2490}
}},
[2472] = {extraKi = 700, extraHealth = 600, extraRage = 5, extraExp = 300,
	equipItems = {
	{"legs", 2504}, 
	{"boots", 7457}
}},
}

local function getItems(cid, t) 
local l = 0
	for _,n in pairs(t) do
		if(n[1] == "helmet") then
			if(getPlayerSlotItem(cid, CONST_SLOT_HEAD).itemid == n[2]) then
				l = l+1
			end
		end
		if(n[1] == "armor") then
			if(getPlayerSlotItem(cid, CONST_SLOT_ARMOR).itemid == n[2]) then
				l = l+1
			end
		end
		if(n[1] == "legs") then
			if(getPlayerSlotItem(cid, CONST_SLOT_LEGS).itemid == n[2]) then
				l = l+1
			end
		end
		if(n[1] == "boots") then
			if(getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid == n[2]) then
				l = l+1
			end
		end
	end
	if(l == #t) then
		return true
	else
		return false
	end
end 

function onThink(interval, lastExecution, thinkInterval)
	for _,cid in ipairs(getPlayersOnline()) do
		if(isPlayer(cid)) then
			local var = items[getPlayerSlotItem(cid, CONST_SLOT_ARMOR).itemid]
			if(var and getItems(cid, var.equipItems)) then
				if(var.extraKi > 0) then
					doCreatureAddMana(cid, var.extraKi, false)
				end
				if(var.extraHealth > 0) then
					doHealthChange(cid, var.extraHealth)
				end
				if(var.extraExp > 0) then
					doPlayerAddExperience(cid, var.extraExp)
				end
				if(var.extraRage > 0) then
					doPlayerAddSoul(cid, var.extraRage)
				end
			end
		end
	end
	return true
end

