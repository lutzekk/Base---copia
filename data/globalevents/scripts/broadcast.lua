local text = {
	[1] = "Prepare yourself to official start! \nhttp://dbkmo.no-ip.org/index.php?subtopic=latestnews",
}
function onThink(interval, lastExecution)
	doBroadcastMessage("Broadcast: "..text[math.random(1, #text)])
        return true
end
