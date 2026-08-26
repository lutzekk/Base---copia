local positions = {
	["Vocations"]        = {pos = {x = 1205, y = 1342, z = 7}, color = {100, 107}, effect = {}},
	["Blessing"]        = {pos = {x = 1023, y = 1015, z = 7}, color = {100, 107}, effect = {871}},
	["Aviso!"]        = {pos = {x = 1014, y = 1015, z = 7}, color = {100, 107}, effect = {871}},	
	["Boss!"]        = {pos = {x = 1030, y = 1024, z = 7}, color = {100, 107}, effect = {871}},
	["Task"]        = {pos = {x = 1031, y = 1012, z = 7}, color = {100, 107}, effect = {871}},
	["NEW"]        = {pos = {x = 1023, y = 1012, z = 6}, color = {100, 107}, effect = {87}},
    ["Stamina"]        = {pos = {x = 1018, y = 1013, z = 7}, color = {100, 107}, effect = {871}},
     [""]        = {pos = {x = 909, y = 1706, z = 7}, color = {100, 107}, effect = {616}},	
	 ["GLOVE"]        = {pos = {x = 1061, y = 974, z = 7}, color = {100, 107}, effect = {701}},
	 ["SWORD"]        = {pos = {x = 1052, y = 1081, z = 7}, color = {100, 107}, effect = {701}},
	 ["AXE"]        = {pos = {x = 915, y = 989, z = 7}, color = {100, 107}, effect = {701}},
	 ["DIST"]        = {pos = {x = 980, y = 1048, z = 7}, color = {100, 107}, effect = {701}},
	 ["LEGS"]        = {pos = {x = 1397, y = 654, z = 7}, color = {100, 107}, effect = {701}},
	 ["HELMET"]        = {pos = {x = 1602, y = 345, z = 6}, color = {100, 107}, effect = {701}},
	 ["ARMOR"]        = {pos = {x = 1576, y = 1286, z = 6}, color = {100, 107}, effect = {701}},
	 ["BOOTS"]        = {pos = {x = 1150, y = 1112, z = 7}, color = {100, 107}, effect = {701}},
	 ["QUEST"]        = {pos = {x = 1021, y = 1012, z = 6}, color = {100, 107}, effect = {818}},
	 ["VOC FARM"]        = {pos = {x = 1025, y = 1012, z = 6}, color = {100, 107}, effect = {818}},
	 ["MINING"]        = {pos = {x = 1038, y = 1028, z = 7}, color = {100, 107}, effect = {818}},
	 ["ARENA"]        = {pos = {x = 1018, y = 1014, z = 6}, color = {100, 107}, effect = {818}},
}

function onThink(cid, interval, lastExecution)
    for t, pos in pairs(positions) do
        for _, effect in ipairs(pos.effect) do
            if(#pos.effect > 0) then
                doSendMagicEffect(pos.pos, effect)
            end
        end
        doSendAnimatedText(pos.pos, t, #pos.color > 0 and pos.color[math.random(#pos.color)] or 215)
    end
    return true
end