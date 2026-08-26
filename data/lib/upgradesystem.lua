--[[

PERFECT UPGRADE SYSTEM
2.0

Criado por Oneshot

É proibido a venda ou a cópia sem os devidos créditos desse script.

]]--

UpgradeHandler = {
	levels = {
		[1] = {20, false, true},
		[2] = {15, false, true},
		[3] = {6, false, true},
		[4] = {4, false, true},
		[5] = {2, false, true},
		[6] = {1, false, true}		
	},
	broadcast = 3,
	attributes = {
		["attack"] = 70,
		["defense"] = 15,
		["armor"] = 15,
	},
	message = {
		console = "Tentando refinar %s ao nivel +%s com %s%% taxa de sucesso.",
		success = "Você refinou %s ao nivel +%s",
		fail = "Você falhou na refinação de %s ao nivel +%s",
		downgrade = "O nível de refinação %s rebaixou a +%s",
		erase = "O nível de refinação %s foi apagada.",
		maxlevel = "O item %s já está no nível máximo de refinação.",
		notupgradeable = "Este item não pode ser refinado.",
		broadcast = "O item %s foi refinado do nivel %s ao nivel +%s.\nParabéns!!",
		invalidtool = "Este item não é refinavel. .",
		toolrange = "O Seus Itens so pode refinar itens entre os nivel +%s e +%s"
	},
	tools = {
		[8303] = {range = {0, 6}, info = {chance = 0, removeable = true}},
		[8306] = {range = {0, 10}, info = {chance = 5, removeable = true}},
	},
	
	isEquipment = function(self)
		local weaponType = self:getItemWeaponType()
		return ((weaponType > 0 and weaponType < 7) or self.item.armor ~= 0)
	end,
	
	setItemName = function(self, name)
		return doItemSetAttribute(self.item.uid, "name", name)
	end,
	
	chance = function(self)
		local chances = {}
		chances.upgrade = (self.levels[self.item.level + 1][1] or 100)
		chances.downgrade = (self.item.level * 5)
		chances.erase = (self.item.level * 11)
		
		return chances
	end
}

function UpgradeHandler:new(item)
	local obj, ret = {}
	obj.item = {}
	
	obj.item.level = 0
	obj.item.uid = item.uid
	for key, value in pairs(getItemInfo(item.itemid)) do
		obj.item[key] = value
	end
	
	ret = setmetatable(obj, {__index = function(self, index)
			if _G[index] then
					return (setmetatable({callback = _G[index]}, {__call = function(self, ...)
						return self.callback(item.uid, ...)
				end}))
			else
				return UpgradeHandler[index]
			end
	end})
	
	if ret:isEquipment() then
		ret:update()
		return ret
	end
	return false
end

function UpgradeHandler:update()
	self.item.level = (tonumber(self:getItemName():match("%+(%d+)")) or 0)
end

function UpgradeHandler:refine(uid, item)
	if not self.item then
		doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_BLUE, self.message.notupgradeable)
		return "miss"
	end
	
	local tool = self.tools[item.itemid]
	
	if(tool == nil) then
		doPlayerSendTextMessage(uid, MESSAGE_EVENT_DEFAULT, self.message.invalidtool)
		return "miss"
	end
	
	if(self.item.level > #self.levels) then
		doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_RED, self.message.maxlevel:format(self.item.name))
		return "miss"
	end
	
	if(self.item.level < tool.range[1] or self.item.level >= tool.range[2]) then
		doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_RED, self.message.toolrange:format(unpack(tool.range)))
		return "miss"
	end
	
	local chance = (self:chance().upgrade + tool.info.chance)
	doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_BLUE, self.message.console:format(self.item.name, (self.item.level + 1), math.min(100, chance)))
	
	if(tool.info.removeable == true) then
		doRemoveItem(item.uid, 1)
	end
	
	if chance * 100 > math.random(1, 10000) then
		doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_ORANGE, self.message.success:format(self.item.name, (self.item.level + 1)))
		if (self.item.level + 1) >= self.broadcast then
		end
		
		self:setItemName((self.item.level > 0 and self:getItemName():gsub("%+(%d+)", "+".. (self.item.level + 1)) or (self:getItemName() .." +1")))
		for key, value in pairs(self.attributes) do
			if getItemAttribute(self.item.uid, key) ~= nil or self.item[key] ~= 0 then
				doItemSetAttribute(self.item.uid, key, (self.item.level > 0 and getItemAttribute(self.item.uid, key) or self.item[key]) + value)
			end
		end
		return "success"
	elseif item.itemid == 8300 then
		doPlayerSendTextMessage(uid, MESSAGE_STATUS_CONSOLE_RED, self.message.downgrade:format(self.item.name, (self.item.level - 1)))
		self:setItemName((self.item.level == 1 and self.item.name or self:getItemName():gsub("%+(%d+)", "+".. (self.item.level - 1))))
		for key, value in pairs(self.attributes) do
			if getItemAttribute(self.item.uid, key) ~= nil or self.item[key] ~= 0 then
				doItemSetAttribute(self.item.uid, key, (self.item[key] + value * (self.item.level - 1)))
			end
		end
		return "fail"
	end
end