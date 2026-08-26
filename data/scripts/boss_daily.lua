local raidBossInformation = {
    {
        position = Position(313, 243, 10),
        monsterName = "Dark Kefla",
        respawnTime = 1, -- hour
        messageOnSpawn = "The Plasmother is awakening... demonic entities are spawning in the Verminor's throneroom.",
        messageOnDeath = "The Plasmother has been defeated, this demonic spawn will reveal himself in Verminor's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5}, -- item, Chance del drop, Minomo y maximo que dara
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50} -- item, Chance del drop, Minomo y maximo que dara
        }
    },
    {
        position = Position(30, 290, 7),
        monsterName = "Super Trunks",
        respawnTime = 1, -- hour
        messageOnSpawn = "Countess Sorrow is awakening... demonic entities are spawning in the Bazir's throneroom.",
        messageOnDeath = "Countess Sorrow has been defeated, this demonic spawn will reveal himself in Bazir's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
    {
        position = Position(162, 334, 7),
        monsterName = "Super Vegetto",
        respawnTime = 1, -- hour
        messageOnSpawn = "Massacre is awakening... demonic entities are spawning in the Bazir's throneroom.",
        messageOnDeath = "Massacre has been defeated, this demonic spawn will reveal himself in Apocalypse's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
    {
        position = Position(13, 159, 15),
        monsterName = "Super C17",
        respawnTime = 1, -- hour
        messageOnSpawn = "Dracola is awakening... demonic entities are spawning in the Ashfalor's throneroom.",
        messageOnDeath = "Dracola has been defeated, this demonic spawn will reveal himself in Ashfalor's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
    {
        position = Position(235, 288, 5),
        monsterName = "Super Vegeta",
        respawnTime = 1, -- hour
        messageOnSpawn = "The Imperor is awakening... demonic entities are spawning in the Ashfalor's throneroom.",
        messageOnDeath = "The Imperor has been defeated, this demonic spawn will reveal himself in Ashfalor's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
    {
        position = Position(1024, 94, 7),
        monsterName = "Super Kaioshin",
        respawnTime = 1, -- hour
        messageOnSpawn = "The Handmaiden is awakening... demonic entities are spawning in the Pumin's throneroom.",
        messageOnDeath = "The Handmaiden has been defeated, this demonic spawn will reveal himself in Pumin's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
    {
        position = Position(146, 864, 7),
        monsterName = "Super Kefla",
        respawnTime = 1, -- hour
        messageOnSpawn = "Mr. Punish is awakening... demonic entities are spawning in the Tafariel's throneroom.",
        messageOnDeath = "Mr. Punish has been defeated, this demonic spawn will reveal himself in Tafariel's throneroom in 1 hour.",
        creatureId = 0, -- don't touch
        lastKilledTime = 0, -- don't touch
        rewards = {
            {itemid = 2160, chance = 50, minCount = 1, maxCount = 5},
            {itemid = 2152, chance = 75, minCount = 10, maxCount = 50}
        }
    },
}

local function respawnBoss(index)
    local spawn = raidBossInformation[index]
    local monster = Game.createMonster(spawn.monsterName, spawn.position, false, true)
    if monster then
        spawn.creatureId = monster:getId()
        monster:registerEvent("raidBossDeath")
        Game.broadcastMessage(spawn.messageOnSpawn, MESSAGE_EVENT_ADVANCE)
    else
        print("Failed to respawn index: " .. index .. " -> " .. spawn.monsterName)
    end
end

local globalevent = GlobalEvent("raidBosses")

function globalevent.onStartup()
    for index = 1, #raidBossInformation do
        respawnBoss(index)
    end
    return true
end

globalevent:register()

local function giveRewards(attacker, rewards)
    for _, reward in ipairs(rewards) do
        if math.random(100) <= reward.chance then
            local count = math.random(reward.minCount, reward.maxCount)
            attacker:addItem(reward.itemid, count)
        end
    end
end

local creatureevent = CreatureEvent("raidBossDeath")

function creatureevent.onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
    local bossId = creature:getId()
    for i = 1, #raidBossInformation do
        if raidBossInformation[i].creatureId == bossId then
            raidBossInformation[i].creatureId = 0
            raidBossInformation[i].lastKilledTime = os.time()
            Game.broadcastMessage(raidBossInformation[i].messageOnDeath, MESSAGE_EVENT_ADVANCE)
            local spectators = Game.getSpectators(creature:getPosition(), false, true, 10, 10, 10, 10)
            for _, spectator in ipairs(spectators) do
                if spectator:isPlayer() then
                    giveRewards(spectator, raidBossInformation[i].rewards)
                end
            end
            addEvent(respawnBoss, 1000 * 60 * 60 * raidBossInformation[i].respawnTime, i)
            return true
        end
    end
    print("Something went wrong in raidBossDeath script.")
    return true
end

creatureevent:register()

local talk = TalkAction("/bosscheck", "!bosscheck")

function talk.onSay(player, words, param)
    local text = ""
    for i = 1, #raidBossInformation do
        if text ~= "" then
            text = text .. "\n"
        end
        text = text .. raidBossInformation[i].monsterName .. " \n    "
        if raidBossInformation[i].creatureId == 0 then
            if raidBossInformation[i].lastKilledTime == 0 then
                text = text .. "Unavailable"
            else
                text = text .. "Dead -> respawning in " .. os.date("!%Hh %Mm %Ss", (raidBossInformation[i].lastKilledTime + (60 * 60 * raidBossInformation[i].respawnTime)) - os.time())
            end
        else
            text = text .. "Alive"
        end
    end
    player:showTextDialog(2239, text, false)
    return false
end

talk:separator(" ")
talk:register()
