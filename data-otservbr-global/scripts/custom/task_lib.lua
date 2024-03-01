taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 2, -- rate bonus reward
	taskBoardPositions = {
      {x = 32200, y = 32293, z = 5}
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = true, -- do one task at a time
	uniqueTaskStorage = 65002
}

task_pt_br = {
	exitButton = "Close",
	confirmButton = "Accept",
	cancelButton = "Cancel",
	returnButton = "Back",
	title = "Task",
	missionError = "Misión en progreso o ya se ha completado.",
	uniqueMissionError = "Solo puedes realizar una misión a la vez.",
	missionErrorTwo = "Has completado esta misión",
	missionErrorTwoo = "\nAqui están tus recompensas:",
	choiceText = "- Experiencia: ",
	messageAcceptedText = "Aceptaste esta misión!",
	messageDetailsText = "Detalles de la misión:",
	choiceMonsterName = "Misión: ",
	choiceMonsterRace = "Criaturas: ",
	choiceMonsterKill = "Kills: ",
	choiceEveryDay = "Repetir: todos los días",
	choiceRepeatable = "Repetir: siempre",
	choiceOnce = "Repetir: solo una vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Ya has completado esta misión.",
	choiceCancelTask = "Cancelaste esta misión",
	choiceCancelTaskError = "No puedes cancelar esta misión, porque ya se completó o no se inició.",
	choiceBoardText = "Elije una misión y use los botones a continuación:",
	choiceRewardOnHold = "Canjear recompensa",
	choiceDailyConclued = "Diaria completada",
	choiceConclued = "Completada",
	messageTaskBoardError = "El tablero de misiones está demasiado lejos o este no es el tablero de misiones correcto.",
	messageCompleteTask = "Has completado esta misión! \nVuelve al tablero de misiones y reclama tu recompensa.",
}

taskConfiguration = {

{name = "Amazon", color = 40, total = 150, type = "progressive", storage = 189988, storagecount = 189989, 
	rewards = { 
	{3043, 1},
	{"exp", 2000},
	},
	races = {
		"Amazon",
		"Valkyrie",
	},
},

{name = "Orc", color = 40, total = 500, type = "progressive", storage = 189990, storagecount = 189991, 
	rewards = { 
	{3043, 8},
	{"exp", 3500},
	},
	races = {
		"Orc",
		"Orc Berserker",
		"Orc Cult Fanatic",
		"Orc Rider",
		"Orc Marauder",
		"Orc Cultist",
		"Orc Cult Priest",
		"Orc Shaman",
		"Orc Warrior",
	},
},

{name = "Rotworm", color = 40, total = 100, type = "repeatable", storage = 189992, storagecount = 189993, 
	rewards = {
	{3043, 1},
	{"exp", 3000},
	},
	races = {
		"Rotworm",
		"Carrion Worm",
		"White Pale",
		"Rotworm Queen",
	},
},

{name = "Minotaur", color = 40, total = 150, type = "repeatable", storage = 189994, storagecount = 189995, 
	rewards = {
	{3043, 2},
	{"exp", 5000},
	},
	races = {
		"Minotaur",
		"Minotaur Archer",
		"Minotaur Mage",
	},
},

{name = "Dwarf", color = 40, total = 150, type = "repeatable", storage = 189996, storagecount = 189997, 
	rewards = {
	{3043, 3},
	{"exp", 5000},
	},
	races = {
		"Dwarf",
		"Dwarf Soldier",
		"Dwarf Guard",
		"Dwarf Geomancer",
	},
},

{name = "Skeleton", color = 40, total = 450, type = "repeatable", storage = 189998, storagecount = 189999, 
	rewards = { 
	{3043, 7},
	{"exp", 8000},
	},
	races = {
		"Demon Skeleton",
		"Brittle Skeleton",
		"Skeleton Warrior",
		"Skeleton",
		"Skeleton Elite Warrior",
	},
},

{name = "Elf", color = 40, total = 150, type = "repeatable", storage = 190000, storagecount = 190001, 
	rewards = {
	{3043, 2},
	{"exp", 7000},
	},
	races = {
		"Elf",
		"Elf Scout",
		"Elf Arcanist",
	},
},

{name = "Nomad", color = 40, total = 300, type = "repeatable", storage = 190002, storagecount = 190003, 
	rewards = { 
	{3043, 5},
	{"exp", 12000},
	},
	races = {
		"Nomad",
	},
},

{name = "Scarab", color = 40, total = 250, type = "repeatable", storage = 190004, storagecount = 190005, 
	rewards = { 
	{3043, 3},
	{"exp", 30000},
	},
	races = {
		"Scarab",
	},
},

{name = "Corym", color = 40, total = 250, type = "repeatable", storage = 190006, storagecount = 190007, 
	rewards = {
	{"Prey Wildcards", 3},
	{"exp", 30000},
	},
	races = {
		"Corym Charlatan",
		"Corym Skirmisher",
		"Corym Vanguard",
	},
},
		
{name = "Behemoth", color = 40, total = 350, type = "repeatable", storage = 190008, storagecount = 190009, 
	rewards = { 
	{3043, 10},
	{"exp", 35000},
	},
	races = {
		"Scarab",
	},
},

{name = "Gargoyle", color = 40, total = 150, type = "repeatable", storage = 190010, storagecount = 190011, 
	rewards = { 
	{"exp", 25000},
	},
	races = {
		"Gargoyle",
	},
},

{name = "Cyclops", color = 40, total = 250, type = "repeatable", storage = 190012, storagecount = 190013, 
	rewards = { 
	{3043, 3},
	{"exp", 30000},
	},
	races = {
		"Cyclops",
		"Cyclops Smith",
		"Cyclops Drone",
	},
},

{name = "Stonerefiner", color = 40, total = 300, type = "repeatable", storage = 190014, storagecount = 190015, 
	rewards = { 
	{3043, 5},
	},
	races = {
		"Stonerefiner",
	},
},

{name = "Tortoise", color = 40, total = 250, type = "repeatable", storage = 190016, storagecount = 190017, 
	rewards = { 
	{"exp", 35000},
	},
	races = {
		"Tortoise",
	},
},

{name = "Mutated Human", color = 40, total = 200, type = "repeatable", storage = 190018, storagecount = 190019, 
	rewards = { 
	{"exp", 40000},
	},
	races = {
		"Mutated Human",
	},
},

{name = "Kongra", color = 40, total = 400, type = "repeatable", storage = 190020, storagecount = 190021, 
	rewards = { 
	{3043, 10},
	{"exp", 80000},
	},
	races = {
		"Kongra",
		"Sibang",
		"Merlkin",
	},
},

{name = "Pirate", color = 40, total = 500, type = "repeatable", storage = 190022, storagecount = 190023, 
	rewards = { 
	{6099, 1},
	{60100, 1},
	{60101, 1},
	{60102, 1},
	},
	races = {
		"Pirate Marauder",
		"Pirate Cutthroat",
		"Pirate Corsair",
		"Pirate Buccaneer",
	},
},

{name = "Barbarian", color = 40, total = 500, type = "repeatable", storage = 190024, storagecount = 190025, 
	rewards = { 
	{7290, 1},
	{"exp", 50000},
	},
	races = {
		"Barbarian Bloodwalker",
		"Barbarian Brutetamer",
		"Barbarian Headsplitter",
		"Barbarian Skullhunter",
	},
},

{name = "Vampire", color = 40, total = 300, type = "repeatable", storage = 190026, storagecount = 190027, 
	rewards = { 
	{"exp", 200000},
	},
	races = {
		"Vampire",
		"Vampire Bride",
		"Vampire Viscount",
	},
},

{name = "Dragon", color = 40, total = 600, type = "repeatable", storage = 190028, storagecount = 190029, 
	rewards = { 
	{10326, 1},
	{"exp", 300000},
	},
	races = {
		"Dragon",
		"Dragon Hatchling",
	},
},

{name = "Giant Spider", color = 40, total = 600, type = "repeatable", storage = 190030, storagecount = 190031, 
	rewards = { 
	{3043, 30},
	{"exp", 500000},
	},
	races = {
		"Giant Spider",
	},
},

{name = "Oramond", color = 40, total = 800, type = "repeatable", storage = 190032, storagecount =190033, 
	rewards = { 
	{"exp", 1000000},
	},
	races = {
		"Minotaur Hunter",
        "Mooh'Tah Warrior",
         "Minotaur Amazon",
         "Worm Priestess",
         "Execowtioner",
          "Moohtant",
	},
},

{name = "Wereboar", color = 40, total = 1000, type = "repeatable", storage = 190034, storagecount = 190035, 
	rewards = { 
	{3043, 25},
	{"exp", 1200000},
	},
	races = {
		"Werebadger",
		"Wereboar",
		"Werebear",
		"Werewolf",
	},
},

{name = "Wyrm", color = 40, total = 2000, type = "repeatable", storage = 190036, storagecount = 190037, 
	rewards = { 
	{3043, 20},
	{"exp", 1000000},
	},
	races = {
		"Wyrm",
		"Elder Wyrm",
	},
},

{name = "Demon", color = 40, total = 666, type = "once", storage = 190038, storagecount = 190039, 
	rewards = { 
	{3043, 15},
	{"exp", 66666},
	},
	races = {
		"Demon",
	},
},

{name = "Yielothax", color = 40, total = 1000, type = "repeatable", storage = 190040, storagecount = 190041, 
	rewards = { 
	{3043, 40},
	{"exp", 900000},
	},
	races = {
		"Yielothax",
	},
},

{name = "Hero", color = 40, total = 1000, type = "repeatable", storage = 190042, storagecount = 190043, 
	rewards = {   
	{3658, 1},
	{3659, 1},
	{3660, 1},
	{"Prey Wildcard", 4},
	},
	races = {
		"Hero",
	},
},

{name = "Cults", color = 40, total = 2000, type = "repeatable", storage = 190044, storagecount = 190045, 
	rewards = { 
	{3043, 35},
	},
	races = {
		"Cult Believer",
        "Vicious Squire",
        "Cult Enforcer",
        "Renegade Knight",
        "Vile Grandmaster",
        "Cult Scholar",
	},
},
		
{name = "Dragon Lord", color = 40, total = 2000, type = "repeatable", storage = 190046, storagecount = 190047, 
	rewards = {   
	{3043, 50},
	{5919, 1},
	},
	races = {
		"Dragon Lord",
		"Dragon Lord Hatchling",
	},
},
		
{name = "Nightmare", color = 40, total = 1000, type = "repeatable", storage = 190048, storagecount = 190049, 
	rewards = {   
	{37110, 1},
	{22721, 20},
	},
	races = {
		"Nightmare",
		"Nightmare Scion",
	},
},
		
{name = "Draken Warmaster", color = 40, total = 3000, type = "repeatable", storage = 190050, storagecount = 190051, 
	rewards = {   
	{18339, 1},
	{"exp", 2000000},
	},
	races = {
	"Draken Abomination",
    "Draken Elite",
    "Draken Spellweaver",
    "Draken Warmaster",
    "Lizard Legionnaire",
    "Lizard Magistratus",
    "Lizard Noble",
    "Lizard Chosen",
    "Lizard Dragon Priest",
    "Lizard High Guard",
	},
},
		
{name = "Medusa", color = 40, total = 2000, type = "repeatable", storage = 190052, storagecount = 190053, 
	rewards = {   
	{"exp", 5000000},
	},
	races = {
		"Medusa",
	},
},
		
{name = "The Hive", color = 40, total = 3500, type = "repeatable", storage = 190054, storagecount = 190055, 
	rewards = {   
	{3043, 150},
	},
	races = {
	    "Waspoid",
        "Crawler",
        "Spitter",
        "Kollos",
        "Spidris",
        "Spidris Elite",
        "Hive Overseer",
	},
},
		
{name = "Hydra", color = 40, total = 2000, type = "repeatable", storage = 190056, storagecount = 190057, 
	rewards = {
     {12045, 1},	
	{"exp", 2500000},
	},
	races = {
		"Hydra",
	},
},
		
{name = "Werehyaena", color = 40, total = 1000, type = "repeatable", storage = 190057, storagecount = 190058, 
	rewards = {
     {3043, 20},	
	{"exp", 250000},
	},
	races = {
		"Werehyaena",
		"Werehyaena Shaman",
	},
},
		
{name = "Frost Dragon", color = 40, total = 3000, type = "repeatable", storage = 190059, storagecount = 190060, 
	rewards = {
     {3043, 70},	
	{"exp", 4000000},
	},
	races = {
		"Frost Dragon",
		"Frost Dragon Hatchling",
	},
},
		
{name = "Glooth", color = 40, total = 3000, type = "repeatable", storage = 190061, storagecount = 190062, 
	rewards = {
    {22721, 20},	
	{22516, 20},
	},
	races = {
		"Glooth Bandit",
		"Glooth Brigand",
	},
},
		
{name = "Mino Cult", color = 40, total = 3000, type = "repeatable", storage = 190063, storagecount = 190064, 
	rewards = {	
	{22516, 5},
	},
	races = {
		"Minotaur Cult Follower",
		"Minotaur Cult Prophet",
		"Minotaur Cult Zealot",
	},
},
		
{name = "Fury", color = 40, total = 2000, type = "repeatable", storage = 190065, storagecount = 190066, 
	rewards = {	
	{"exp", 3000000},
	},
	races = {
		"Fury",
	},
},
		
{name = "Deathlings", color = 40, total = 4000, type = "repeatable", storage = 190067, storagecount = 190068, 
	rewards = {	
	{3043, 100},
	},
	races = {
		"Deepling Scout",
        "Deepling Warrior",
        "Deepling Guard",
        "Deathling Scout",
        "Deathling Spellsinger",
	},
},
		
{name = "Roshamuul", color = 40, total = 5000, type = "repeatable", storage = 190069, storagecount = 190070, 
	rewards = {	
	{20062, 100},
	{22516, 10},
	},
	races = {
		"Guzzlemaw",
        "Frazzlemaw",
        "Choking Fear",
		"Silencer",
        "Retching Horror",
	},
},
		
{name = "Lycanthropes", color = 40, total = 5000, type = "repeatable", storage = 190071, storagecount = 190072, 
	rewards = {	
    {"exp", 5000000},
	},
	races = {
		"Werelion",
        "Werelioness",
	},
},
		
{name = "Asuras", color = 40, total = 8000, type = "repeatable", storage = 190073, storagecount = 190074, 
	rewards = {	
	{3043, 50},
    {"exp", 3000000},
	},
	races = {
		"Dawnfire Asura",
        "Midnight Asura",
		"Frost Flower Asura",
		},
},
		
{name = "Grim Reaper", color = 40, total = 5000, type = "repeatable", storage = 190075, storagecount = 190076, 
	rewards = {	
	{3043, 50},
    {"exp", 5000000},
	},
	races = {
		"Grim Reaper",
        "Hellspawn",
	},
},
		
{name = "Exotic Spider", color = 40, total = 6000, type = "repeatable", storage = 190077, storagecount = 190078, 
	rewards = {	
	{28486, 1},
	{28484, 1},
	{28485, 1},
    {"exp", 4000000},
	},
	races = {
		"exotic cave spider",
        "Exotic Bat",
	},
},
		
{name = "Hellhound", color = 40, total = 1000, type = "repeatable", storage = 190079, storagecount = 190080, 
	rewards = {	
	{3043, 80},
    {"exp", 4000000},
	},
	races = {
		"Hellhound",
        "Nightmare",
	},
 },
		
{name = "Earth Library", color = 40, total = 6500, type = "repeatable", storage = 190081, storagecount = 190082, 
	rewards = {	
	{3043, 100},
    {"exp", 6000000},
	},
	races = {
		"Cursed Book",
        "Ink Blob",
	},
 },
		
{name = "Ice Library", color = 40, total = 7000, type = "repeatable", storage = 190083, storagecount = 190084, 
	rewards = {	
	{3043, 100},
	{45020, 1},
    {"exp", 6000000},
	},
	races = {
		"Icecold Book",
        "Squid Warden",
		"Animated Feather",
	},
 },
		
{name = "Energy Library", color = 40, total = 8000, type = "repeatable", storage = 190085, storagecount = 190086, 
	rewards = {	
	{3043, 100},
	{45010, 1},
    {"exp", 6000000},
	},
	races = {
		"Energetic Book",
        "Brain Squid",
		"Energuardian Of Tales",
	},
 },
		
{name = "Fire Library", color = 40, total = 8500, type = "repeatable", storage = 190087, storagecount = 190088, 
	rewards = {	
	{3043, 100},
	{45018, 1},
	{28791, 1},
    {"exp", 6000000},
	},
	races = {
		"Burning Book",
        "Rage Squid",
		"Guardian Of Tales",
		"Ink Blob",
	},
},
}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
local player = self
	if not player then
		return false
	end
local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
		if dataList:lower() == name:lower() then
			return data
		end
		end
	end
	return false
end

function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end