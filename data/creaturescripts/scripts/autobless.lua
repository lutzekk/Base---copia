function onLogin(cid)


if getPlayerLevel(cid) < 10 then

doPlayerAddExperience(cid, (getExperienceForLevel(10) - getPlayerExperience(cid)))

end

return TRUE

end