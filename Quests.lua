-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			location = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(9635,	Z.ZANGARMARSH,			34.0,	50.8,	"Horde")
	AddQuest(9636,	Z.ZANGARMARSH,			68.6,	50.2,	"Alliance")
	AddQuest(12889,	Z.THE_STORM_PEAKS,		37.7,	46.5,	"Neutral")
	AddQuest(40858,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40859,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40861,	Z.VALSHARAH,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40862,	Z.VALSHARAH,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40863,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40864,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40868,	Z.STORMHEIM,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40869,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40870,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40872,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40873,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40875,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40876,	Z.AZSUNA,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40877,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40878,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40879,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40880,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(40881,	Z.TANARIS,			0.0,	 0.0,	"Neutral") -- Needs updating
	AddQuest(41680,	Z.DALARAN_BROKENISLES,		0.0,	 0.0,	"Neutral") -- Needs updating

	self.InitializeQuests = nil
end
