local tabelka = {
--[item id] = {skillId = SKILL_FIST, addSkill = 2},

[2265] = {skillId = SKILL_SWORD, addSkill = 1, say = "Sword Up!", storage = 8340},
[2262] = {skillId = SKILL_AXE, addSkill = 1, say = "Strenght Up!", storage = 8341},
[2264] = {skillId = SKILL_SHIELD, addSkill = 1, say = "Defense Up!", storage = 8342},
[2263] = {skillId = SKILL_DISTANCE, addSkill = 1, say = "Ki Blasting Up!", storage = 8343},

}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local index = tabelka[item.itemid]
	if(item.itemid == 2262) then
	return index and isPlayer(cid) and getPlayerStorageValue(cid,index.storage) <= 4 and setPlayerStorageValue(cid, index.storage, getPlayerStorageValue(cid,index.storage)+1) and doPlayerAddSkillTry(cid, SKILL_AXE, getPlayerRequiredSkillTries(cid, SKILL_AXE, getPlayerSkillLevel(cid, SKILL_AXE)+1)/ 5) and doPlayerSay(cid, "Strenght Up!!", 19) and doRemoveItem(item.uid, 1) and true or doPlayerSay(cid, "You can not use this more than 4 times.", 19) and false
	else
	return index and isPlayer(cid) and getPlayerStorageValue(cid,index.storage) <= 4 and setPlayerStorageValue(cid, index.storage, getPlayerStorageValue(cid,index.storage)+1) and doPlayerAddSkillTry(cid, index.skillId, getPlayerRequiredSkillTries(cid, index.skillId, getPlayerSkillLevel(cid, index.skillId)+index.addSkill)/ 2) and doPlayerSay(cid, index.say, 19) and doRemoveItem(item.uid, 1) and true or doPlayerSay(cid, "You can not use this more than 4 times.", 19) and false
	end
end