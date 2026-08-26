local config = {
    positions = {
                
		["NEW"]        = {pos = {x = 1023, y = 1012, z = 6}, color = {100, 107}, effect = {87}},
	    
      
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(3, 260))
    end
    
    return TRUE
end  