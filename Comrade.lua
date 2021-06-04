comrade = LibStub("AceAddon-3.0"):NewAddon("comrade", "AceConsole-3.0", "AceEvent-3.0", "AceComm-3.0", "AceSerializer-3.0")
local AceGUI = LibStub("AceGUI-3.0")
local ScrollingTable = LibStub("ScrollingTable");

-- Spell Data
local tradeSkillSpellData = {}
local comrade_expansionClassic = 1
local comrade_expansionBc = 2
local comrade_cooldownGroupNone = 0
local comrade_cooldownGroupAlchemy = 1
local comrade_cooldownGroupTailoring = 2
local comrade_cooldownGroupJewelcrafting = 3
local comrade_cooldownGroupSaltshaker = 4
local comrade_cooldownGroupTailoring_PrimalMooncloth = 5
local comrade_cooldownGroupTailoring_Spellcloth = 6
local comrade_cooldownGroupTailoring_Shadowcloth = 7

local comrade_iconWidth = 24
local comrade_iconHeight = 24
local comrade_iconSpacing = 12

-- Classic
tradeSkillSpellData["11479"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "11479",
	Name = "Transmute: Iron to Gold",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_ingot_03"
}

tradeSkillSpellData["11480"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "11480",
	Name = "Transmute: Mithril to Truesilver",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_ingot_08"
}

tradeSkillSpellData["17559"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17559",
	Name = "Transmute: Air to Fire",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_fire_volcano"
}

tradeSkillSpellData["17560"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17560",
	Name = "Transmute: Fire to Earth",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_strengthofearthtotem02"
}

tradeSkillSpellData["17561"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17561",
	Name = "Transmute: Earth to Water",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_acid_01"
}

tradeSkillSpellData["17562"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17562",
	Name = "Transmute: Water to Air",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_earthbind"
}

tradeSkillSpellData["17563"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17563",
	Name = "Transmute: Undeath to Water",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_acid_01"
}

tradeSkillSpellData["17564"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17564",
	Name = "Transmute: Water to Undeath",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_shadow_shadetruesight"
}

tradeSkillSpellData["17565"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17565",
	Name = "Transmute: Life to Earth",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_strengthofearthtotem02"
}

tradeSkillSpellData["17566"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17566",
	Name = "Transmute: Earth to Life",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_abolishmagic"
}

tradeSkillSpellData["17187"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "17187",
	Name = "Transmute: Arcanite",
	CooldownTimeInMinutes = 2880,
	CooldownTimeInMinutesBC = 0,
	CooldownGroup = comrade_cooldownGroupAlchemy,
	CooldownGroupBC = comrade_cooldownGroupNone,
	Icon = "Interface\\Icons\\inv_misc_stonetablet_05"
}

tradeSkillSpellData["18560"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "18560",
	Name = "Mooncloth",
	CooldownTimeInMinutes = 5760,
	CooldownTimeInMinutesBC = 0,
	CooldownGroup = comrade_cooldownGroupTailoring,
	CooldownGroupBC = comrade_cooldownGroupNone,
	Icon = "Interface\\Icons\\inv_fabric_moonrag_01"
}

tradeSkillSpellData["19566"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "19566",
	Name = "Salt Shaker",
	CooldownTimeInMinutes = 4320,
	CooldownTimeInMinutesBC = 4320,
	CooldownGroup = comrade_cooldownGroupSaltshaker,
	CooldownGroupBC = comrade_cooldownGroupSaltshaker,
	Icon = "Interface\\Icons\\inv_misc_dust_01"
}

tradeSkillSpellData["25146"] =
{
	Expansion = comrade_expansionClassic,
	SpellId = "25146",
	Name = "Transmute: Elemental Fire",
	CooldownTimeInMinutes = 10,
	CooldownTimeInMinutesBC = 10, --TODO: ???
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_fire_fire"
}

-- TBC
tradeSkillSpellData["26751"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "26751",
	Name = "Primal Mooncloth",
	CooldownTimeInMinutes = 5520,
	CooldownTimeInMinutesBC = 5520,
	CooldownGroup = comrade_cooldownGroupTailoring_PrimalMooncloth,
	Icon = "Interface\\Icons\\inv_fabric_moonrag_primal"
}

tradeSkillSpellData["28566"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28566",
	Name = "Transmute: Primal Air to Fire",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_fire"
}

tradeSkillSpellData["28567"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28567",
	Name = "Transmute: Primal Earth to Water",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_ingot_03"
}

tradeSkillSpellData["28569"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28569",
	Name = "Transmute: Primal Water to Air",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_air"
}

tradeSkillSpellData["28580"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28580",
	Name = "Transmute: Primal Shadow to Water",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_water"
}

tradeSkillSpellData["28581"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28581",
	Name = "Transmute: Primal Water to Shadow",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_shadow"
}

tradeSkillSpellData["28582"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28582",
	Name = "Transmute: Primal Mana to Fire",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_fire"
}

tradeSkillSpellData["28583"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28583",
	Name = "Transmute: Primal Fire to Mana",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_mana"
}

tradeSkillSpellData["28585"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "28585",
	Name = "Transmute: Primal Earth to Life",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_elemental_primal_life"
}

tradeSkillSpellData["29688"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "29688",
	Name = "Transmute: Primal Might",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\spell_nature_lightningoverload"
}

tradeSkillSpellData["31373"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "31373",
	Name = "Spellcloth",
	CooldownTimeInMinutes = 5520,
	CooldownTimeInMinutesBC = 5520,
	CooldownGroup = comrade_cooldownGroupTailoring_Spellcloth,
	Icon = "Interface\\Icons\\inv_fabric_spellfire"
}

tradeSkillSpellData["32765"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "32765",
	Name = "Transmute: Earthstorm Diamond",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_misc_gem_diamond_04"
}

tradeSkillSpellData["32766"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "32766",
	Name = "Transmute: Skyfire Diamond",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200,
	CooldownGroup = comrade_cooldownGroupAlchemy, -- TODO
	Icon = "Interface\\Icons\\inv_misc_gem_diamond_05"
}

tradeSkillSpellData["36686"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "36686",
	Name = "Shadowcloth",
	CooldownTimeInMinutes = 5520,
	CooldownTimeInMinutesBC = 5520,
	CooldownGroup = comrade_cooldownGroupTailoring_Shadowcloth,
	Icon = "Interface\\Icons\\inv_fabric_felcloth_ebon"
}

tradeSkillSpellData["47280"] =
{
	Expansion = comrade_expansionBc,
	SpellId = "47280",
	Name = "Brilliant Glass",
	CooldownTimeInMinutes = 1200,
	CooldownTimeInMinutesBC = 1200, --TODO: Confirm
	CooldownGroup = comrade_cooldownGroupJewelcrafting, -- TODO
	Icon = "Interface\\Icons\\inv_misc_gem_diamond_03"
}

-- locals
local comrade_version = "1.0"
local comrade_prefix = "comrade_data"
local game_version = ""
local playerName

-- ui vars
local _frameCreated = false
local _frame
local _treeFrame
local _contentHeaderFrame
local _contentFrame
local _contentFrameLabel
local _contentFrameTable
local _tree

-- config defaults
local frameDefaultHeight = 400
local frameDefaultWidth = 600

function comrade:OnInitialize()
	--LibStub("AceConfig-3.0"):RegisterOptionsTable("Comrade", comrade_Config.options, nil)
	--LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Comrade"):SetParent(InterfaceOptionsFramePanelContainer)
end

function comrade:OnEnable()
	game_version = GetBuildInfo()
	comrade:RegisterComm(comrade_prefix, OnCommReceived)

	self:Print("|cffff00ff[Comrade]|r Addon enabled")
	self:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED')
	self:RegisterEvent('PLAYER_ENTERING_WORLD');
	self:RegisterEvent('TRADE_SKILL_SHOW');
	
	-- Initialize default config
	if not comrade_Config then
		comrade_Config =
		{
			height = frameDefaultHeight,
			width = frameDefaultWidth,
			options  = {
				selectedSpellId = "",
				selectedTreeValue = "",
			},
			Characters = {},
		}
	end
	
	if not comrade_Config.Characters then
		comrade_Config.Characters = {}
	end
	
	if not comrade_Config.height then
		comrade_Config.height = frameDefaultHeight
	end
	
	if not comrade_Config.width then
		comrade_Config.width = frameDefaultWidth
	end
	
	if not comrade_Config.options.selectedSpellId then
		 comrade_Config.options.selectedSpellId = ""
	end
	
	if not comrade_Config.options.selectedTreeValue then
		 comrade_Config.options.selectedTreeValue = ""
	end
	
	playerName = UnitName("player")
	
	comrade:CheckForSpells()
	comrade:CheckSpellCooldowns()
end

function comrade:OnDisable()
	self:Print("|cffff00ff[Comrade]|r Addon disabled")
end

function comrade:CheckSpellCooldowns()
	local spellsChecked = { }
	local _c = comrade_Config.Characters[playerName]
	
	if not _c then
		_c = { Name = playerName, Spells = { } }
		comrade_Config.Characters[playerName] = _c
	end
	
	for k, v in pairs(tradeSkillSpellData) do
		if not spellsChecked[v.SpellId] then
			table.insert(spellsChecked, v.SpellId)
			local cooldownStart, duration = GetCooldownInfo(v.SpellId)

			if cooldownStart > 0 and duration > 0 then
				-- Create the spell if it is not already in the character spell table
				if not _c.Spells[tostring(v.SpellId)] then
					-- we don't really know if the character has this recipe because it could be on cooldown from another recipe in the group
					_c.Spells[tostring(v.SpellId)] = { hasRecipe = nil }
				end
				
				-- These are in their own cooldown groups, so if they are on cooldown we know the character has them
				if v.Name == "Salt Shaker" or v.Name == "Mooncloth" then
					_c.Spells[tostring(v.SpellId)] = { hasRecipe = true }
				end
			
				_c.Spells[tostring(v.SpellId)].cooldownStart = cooldownStart
				_c.Spells[tostring(v.SpellId)].cooldownDuration = duration				
				
				-- trigger every additional spell in this group to cooldown			
				for k2, v2 in pairs(tradeSkillSpellData) do
					if not spellsChecked[v.SpellId] then
						if v2.CooldownGroup == v.CooldownGroup and v2.Name ~= v.Name then
						
							if not _c.Spells[k2] then
								_c.Spells[k2] = { hasRecipe = nil }
							end
						
							_c.Spells[k2].cooldownStart = cooldownStart
							_c.Spells[k2].cooldownDuration = duration
						end
						
						table.insert(spellsChecked, v.SpellId)
					end
				end
			end
		end		
	end

	-- if the frame is open and the spell is selected update the table immediately
	if _frameCreated and _frame:IsShown() and comrade_Config.options.selectedSpellId == tostring(spellId) then
		UpdateTableData()
	end
end

function comrade:PLAYER_ENTERING_WORLD(event)

end

function comrade:UNIT_SPELLCAST_SUCCEEDED(event, unit, GUID, spellId)
	if unit == "player" then
		for k, v in pairs(tradeSkillSpellData) do
			if v.SpellId == tostring(spellId) then		
				local _c = comrade_Config.Characters[playerName]
				
				if not _c then
					_c = { Name = playerName, Spells = { } }
					comrade_Config.Characters[playerName] = _c
				end
				
				if not _c.Spells[tostring(spellId)] then
					_c.Spells[tostring(spellId)] = { }
				end
								
				local timeCasted = GetServerTime()
				local cooldownInSeconds
				
				if game_version == "2.5.1" then
					cooldownInSeconds = v.CooldownTimeInMinutesBC * 60
				else
					cooldownInSeconds = v.CooldownTimeInMinutes * 60
				end

				_c.Spells[tostring(spellId)].cooldownStart = timeCasted
				_c.Spells[tostring(spellId)].cooldownDuration = cooldownInSeconds
				_c.Spells[tostring(spellId)].hasRecipe = true
				
				if _c.Spells[tostring(spellId)].timesUsed then
					_c.Spells[tostring(spellId)].timesUsed = _c.Spells[tostring(spellId)].timesUsed + 1
				else
					_c.Spells[tostring(spellId)].timesUsed = 1
				end
				
				-- trigger every additional spell in this group to cooldown
				if cooldownInSeconds > 0 then
					for k2, v2 in pairs(tradeSkillSpellData) do
						if v2.CooldownGroup == v.CooldownGroup and v2.Name ~= v.Name then						
							if not _c.Spells[v2.SpellId] then
								_c.Spells[v2.SpellId] = { hasRecipe = nil }
							end
						
							_c.Spells[v2.SpellId].cooldownStart = timeCasted
							_c.Spells[v2.SpellId].cooldownDuration = cooldownInSeconds
						end
					end
					
					-- Send a message to guild
					SendChatMessage(string.format("[Comrade] %s just used %s. Next cooldown available in %s", playerName, v.Name, ConvertTimeInSecondsToString(cooldownInSeconds)), "guild")
					
					--Send the character update to the comms
					comrade:SendCommMessage(comrade_prefix, "UPDATE|"..comrade:Serialize(comrade_Config.Characters[playerName]), "GUILD", "")
					
					-- if the frame is open and the spell is selected update the table immediately
					if _frameCreated and _frame:IsShown() and comrade_Config.options.selectedSpellId == tostring(spellId) then
						UpdateTableData()
					end
				end
			end
		end
	end
end

-- Return the servertime the spell went on cooldown and also the duration of the cooldown
-- the duration can be different depending on which cooldown was used
-- returns 0 if the spell is not on cooldown
function GetCooldownInfo(spellId)
	local start, duration = GetSpellCooldown(spellId)
	local cooldownStart = 0
	
	-- if the start and duration are above 0 then the spell is on cooldown
	-- Do some math to figure out the server time the spell was originally casted
	if start > 0 and duration > 0 then		
		if (start > GetTime() + 2^31 / 1000) then
			-- from weak auras
			-- WORKAROUND WoW wraps around negative values with 2^32/1000
			-- So if we find a cooldown in the far future, then undo the wrapping
			start = start - 2^32 / 1000
		end
	
		local remainingSeconds = start + duration - GetTime()
		cooldownStart = GetServerTime() - (duration - remainingSeconds)
	end
	
	return cooldownStart, duration
end

function ResetOptions()
	comrade_Config =
	{
		height = frameDefaultHeight,
		width = frameDefaultWidth,
		selectedTreeValue = "",
			options  = {
				selectedSpellId = "",
				selectedTreeValue = "",
			},
		Characters = {}
	}
end

-- Look for the players trade skills and store the cooldowns into the character data
function comrade:TRADE_SKILL_SHOW()
	-- Wait a few seconds to scan because the window needs to be fully loaded
	--C_Timer.After(2, ScanTradeskillWindow)	
end

function comrade:CheckForSpells()
	-- Get the player entry in the config. If it is not there create it
	if not comrade_Config.Characters[playerName] then
		comrade_Config.Characters[playerName] = { Name = playerName, Spells = { } }
	end

	for k, v in pairs(tradeSkillSpellData) do
		-- Create the spell if it is not already in the character spell table
		if not comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)] then
			comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)] = { hasRecipe = false, cooldownStart = 0, cooldownDuration = 0 }
		end
		
		-- If this returns true, the player has the spell
		if IsPlayerSpell(k) then
			comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].hasRecipe = true
			comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownStart = 0
			comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownDuration = 0
		end
	end
	
	-- if the frame is open and the spell is selected update the table immediately
	if _frameCreated and _frame:IsShown() and comrade_Config.options.selectedSpellId == tostring(spellId) then
		UpdateTableData()
	end
end

function ScanTradeskillWindow()
	-- Get the player entry in the config. If it is not there create it
	if not comrade_Config.Characters[playerName] then
		comrade_Config.Characters[playerName] = { Name = playerName, Spells = { } }
	end
	
	local recipes = {}
	
	for i=1,GetNumTradeSkills() do
		local name = GetTradeSkillInfo(i)	
		table.insert(recipes, name)
	end		

	for k, v in pairs(tradeSkillSpellData) do
		for k2, v2 in pairs(recipes) do
			if v2 == v.Name then
				-- Create the spell if it is not already in the character spell table
				if not comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)] then
					comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)] = { }
				end
				
				comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].hasRecipe = true
				comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownStart = 0
				comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownDuration = 0
				
				local start, duration = GetSpellCooldown(v.SpellId)

				if start > 0 and duration > 0 then
					if (start > GetTime() + 2^31 / 1000) then
						-- from weak auras
						-- WORKAROUND WoW wraps around negative values with 2^32/1000
						-- So if we find a cooldown in the far future, then undo the wrapping
						start = start - 2^32 / 1000
					end
					
					local spellCooldownInSeconds
				
					if game_version == "2.5.1" then
						spellCooldownInSeconds = v.CooldownTimeInMinutesBC * 60
					else
						spellCooldownInSeconds = v.CooldownTimeInMinutes * 60
					end
				
					-- Do some math to figure out the server time the spell was originally casted
					local remainingSeconds = start + duration - GetTime()
					local cooldownStart = GetServerTime() - (spellCooldownInSeconds - remainingSeconds)
					
					comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownStart = cooldownStart
					comrade_Config.Characters[playerName].Spells[tostring(v.SpellId)].cooldownDuration = duration
				end
				
				break
			end 
		end
	end
	
	-- if the frame is open and the spell is selected update the table immediately
	if _frameCreated and _frame:IsShown() and comrade_Config.options.selectedSpellId == tostring(spellId) then
		UpdateTableData()
	end
end

function SetupMainWindow()
	_frame = AceGUI:Create("Frame")
	_frame:SetTitle("  Comrade")	
	_frame:SetHeight(comrade_Config.height)
	_frame:SetWidth(comrade_Config.width)
	
	_frame.frame:SetScript("OnSizeChanged", function(self)
		local h = self:GetHeight()
		local w = self:GetWidth()
		if h > self:GetParent():GetHeight() - 50 	then h = self:GetParent():GetHeight() - 50; self:SetHeight(h) end
		if w > self:GetParent():GetWidth() - 50 	then w = self:GetParent():GetWidth() - 50; self:SetWidth(w) end
		comrade_Config.height = h
		comrade_Config.width = w
	end)
		
	_frame.frame:SetMinResize(600, 400)
	_frame.frame:SetFrameStrata("HIGH")
	_frame:SetLayout("Flow")
	
	_tree = {
		{ 
		value = comrade_expansionClassic,
		text = "World of Warcraft",
		children = {},
	  },
	  { 
		value = comrade_expansionBc,
		text = "The Burning Crusade",
		children = {},
	  },
	}

	-- sort by name
	for k, v in spairs(tradeSkillSpellData, function(t,a,b) return t[b].Name > t[a].Name end) do
		local child = { value = v.SpellId,
						text = v.Name,
						icon = v.Icon }

		local cooldownInSeconds
				
		if game_version == "2.5.1" then
			cooldownInSeconds = v.CooldownTimeInMinutesBC
		else
			cooldownInSeconds = v.CooldownTimeInMinutes
		end
		
		-- Only add spells that have a cooldown. some spells lose cooldowns in BC
		if cooldownInSeconds > 0 then
			if v.Expansion == comrade_expansionClassic then
				table.insert(_tree[comrade_expansionClassic].children, child)
			elseif v.Expansion == comrade_expansionBc then
				table.insert(_tree[comrade_expansionBc].children, child)
			end
		end		
	end	

	_treeFrame = AceGUI:Create("TreeGroup")
	_treeFrame:SetTree(_tree)
	_treeFrame:SetLayout("Fill")
	_treeFrame:SetFullWidth(true)
	_treeFrame:SetFullHeight(true)
	_treeFrame:SetAutoAdjustHeight(false)
	_frame:AddChild(_treeFrame)	
	
	_treeFrame:SetCallback("OnGroupSelected", function(container, event, group)
		local st, le = string.find(group, "\001")
		comrade_Config.options.selectedTreeValue = group
		
		if st ~= nil then -- not a group
			local g = string.sub(group, st+1)
			if g ~= "" then
				SpellSelected(g)
			end
		end
	end)
	
	--_contentFrameLabel = AceGUI:Create("Label")
	--_contentFrameLabel:SetFullWidth(true)
	--_frame:AddChild(_contentFrameLabel)
	
	_contentFrame = AceGUI:Create("SimpleGroup")
	_contentFrame:SetFullWidth(true)
	_contentFrame:SetFullHeight(true)
	_contentFrame:SetLayout("Flow")
			
	_contentHeaderFrame = AceGUI:Create("SimpleGroup")
	_contentHeaderFrame:SetFullWidth(true)
	_contentHeaderFrame:SetLayout("Flow")
	_contentFrame:AddChild(_contentHeaderFrame)
	
	local contentTableFrame = AceGUI:Create("SimpleGroup")
	contentTableFrame:SetFullWidth(true)
	contentTableFrame:SetFullHeight(true)
	contentTableFrame:SetLayout("Flow")
	_contentFrame:AddChild(contentTableFrame)
	
	local tableCols = {  {	["name"] = "Character",
					["width"] = 100,
					["align"] = "LEFT",
					["color"] = { 
						["r"] = 1.0, 
						["g"] = 1.0, 
						["b"] = 1.0, 
						["a"] = 1.0 
					},
					["colorargs"] = nil,
					["bgcolor"] = {
						["r"] = 0.0, 
						["g"] = 0.0, 
						["b"] = 0.0, 
						["a"] = 0.0 
					},
					["defaultsort"] = "dsc",
					["sortnext"] = nil,
					["comparesort"] = nil,
					["DoCellUpdate"] = nil,
				},				
				{	["name"] = "Has Recipe",
					["width"] = 60,
					["align"] = "RIGHT",
					["color"] = { 
						["r"] = 1.0, 
						["g"] = 1.0, 
						["b"] = 1.0, 
						["a"] = 1.0 
					},
					["colorargs"] = nil,
					["bgcolor"] = {
						["r"] = 0.0, 
						["g"] = 0.0, 
						["b"] = 0.0, 
						["a"] = 0.0 
					},
					["defaultsort"] = "dsc",
					["sortnext"] = nil,
					["comparesort"] = nil,
					["DoCellUpdate"] = nil,
				},				
				{	["name"] = "Status",
					["width"] = 100,
					["align"] = "RIGHT",
					["color"] = { 
						["r"] = 1.0, 
						["g"] = 1.0, 
						["b"] = 1.0, 
						["a"] = 1.0 
					},
					["colorargs"] = nil,
					["bgcolor"] = {
						["r"] = 0.0, 
						["g"] = 0.0, 
						["b"] = 0.0, 
						["a"] = 0.0 
					},
					["defaultsort"] = "dsc",
					["sortnext"] = nil,
					["comparesort"] = nil,
					["DoCellUpdate"] = nil,
				},				
				{	["name"] = "Used",
					["width"] = 40,
					["align"] = "RIGHT",
					["color"] = { 
						["r"] = 1.0, 
						["g"] = 1.0, 
						["b"] = 1.0, 
						["a"] = 1.0 
					},
					["colorargs"] = nil,
					["bgcolor"] = {
						["r"] = 0.0, 
						["g"] = 0.0, 
						["b"] = 0.0, 
						["a"] = 0.0 
					},
					["defaultsort"] = "dsc",
					["sortnext"] = nil,
					["comparesort"] = nil,
					["DoCellUpdate"] = nil,
				}}
				
	_contentFrameTable = ScrollingTable:CreateST(tableCols, 20, nil, nil, contentTableFrame.frame);
	_contentFrameTable.frame:SetPoint("TOPLEFT", 0, -50)
	_contentFrameTable.frame:SetPoint("BOTTOM", 0, 0)
	--_contentFrameTable.frame:Hide()
	_treeFrame:AddChild(_contentFrame)
	
	if comrade_Config.options.selectedTreeValue and comrade_Config.options.selectedTreeValue ~= "" then
		_treeFrame:SelectByValue(comrade_Config.options.selectedTreeValue)
	end
	
	_frameCreated = true
end

function SpellSelected(spellId)
	comrade_Config.options.selectedSpellId = spellId
	
	UpdateContentFrame()
end

function UpdateContentFrame()
	local count = 0

	for k, v in pairs(comrade_Config.Characters) do
		count = count + 1
	end

	-- Only update the frame if there are characters and a spell is selected
	if count > 0 and comrade_Config.options.selectedSpellId ~= "" then
		_contentHeaderFrame:ReleaseChildren()
		
		local label = AceGUI:Create("Label")		
		label:SetText(tradeSkillSpellData[comrade_Config.options.selectedSpellId].Name)
		label:SetImage(tradeSkillSpellData[comrade_Config.options.selectedSpellId].Icon)
		label:SetFont(GameFontHighlightSmall:GetFont(), 20)
		label:SetImageSize(24,24)
		label:SetRelativeWidth(0.9)
		_contentHeaderFrame:AddChild(label)

		UpdateTableData();
	end
end

function UpdateTableData()
	local data = {}
		
	for k, v in pairs(comrade_Config.Characters) do	
		if v.Spells[comrade_Config.options.selectedSpellId] and v.Spells[comrade_Config.options.selectedSpellId].hasRecipe then
			table.insert(data, CreateDataRow(v, comrade_Config.options.selectedSpellId))
		end
	end
	
	_contentFrameTable:SetData(data)	
end

function CreateDataRow(character, spellId)
	local row = {	cols = { },
					color = { r = 1.0,
							g = 1.0,
							b = 1.0,
							a = 1.0},
					colorargs = nil,
					DoCellUpdate = nil }
	
	-- Create the character name cell
	local nameCell = {  value = character.Name,
						args = nil,
						color = { r = 1.0,
								g = 1.0,
								b = 1.0,
								a = 1.0},
						colorargs = nil,
						DoCellUpdate = nil }
					
	table.insert(row.cols, nameCell)
	
	-- Create the has recipe cell
	local hasRecipe = "Unknown"
	if character.Spells[spellId].hasRecipe then
		hasRecipe = "Yes"
	elseif character.Spells[spellId].hasRecipe == false then
		hasRecipe = "No"
	end
	
	local hasRecipeCell = {  value = hasRecipe,
						args = nil,
						color = { r = 1.0,
								g = 1.0,
								b = 1.0,
								a = 1.0},
						colorargs = nil,
						DoCellUpdate = nil }
					
	table.insert(row.cols, hasRecipeCell)
	
	local statusCell = {  value = "No data",
						args = nil,
						color = { r = 0.5,
								g = 0.5,
								b = 0.5,
								a = 1.0},
						colorargs = nil,
						DoCellUpdate = nil }
	
	local now = GetServerTime()
	
	local spellReady = character.Spells[spellId].cooldownStart + character.Spells[spellId].cooldownDuration

	if (now > spellReady) then
		statusCell.value = "Ready"
		statusCell.color = { r = 0.0,
							g = 1.0,
							b = 0.0,
							a = 1.0 }
	else			
		-- spell cooldown is over 24 hours
		if (spellReady - now)  > 86400 then
			statusCell.color = { r = 1.0,
							g = 0.7,
							b = 0.0,
							a = 1.0 }
		else
			statusCell.color = { r = 1.0,
							g = 1.0,
							b = 0.0,
							a = 1.0 }
		end
	
		statusCell.value = ConvertTimeInSecondsToString(spellReady - now)			
	end
			
	table.insert(row.cols, statusCell)
	
	-- Create the times casted cell
	local timesUsed
	if not character.Spells[spellId].timesUsed then
		timesUsed = 0
	else
		timesUsed = character.Spells[spellId].timesUsed
	end
	
	local timesUsedCell = {  value = timesUsed,
						args = nil,
						color = { r = 1.0,
								g = 1.0,
								b = 1.0,
								a = 1.0},
						colorargs = nil,
						DoCellUpdate = nil }
					
	table.insert(row.cols, timesUsedCell)
	
	return row
end

function ConvertTimeInSecondsToString(timeInSeconds)
	local hours = 0
	local minutes = 0
	local seconds = 0
	
	if timeInSeconds >= 3600 then
		hours = math.floor(timeInSeconds / 3600)
		timeInSeconds = timeInSeconds % 3600		
	end
	
	if timeInSeconds >= 60 then
		minutes = math.floor(timeInSeconds / 60)
		timeInSeconds = timeInSeconds % 60		
	end
	
	if timeInSeconds > 0 then
		seconds = math.floor(timeInSeconds)
	end

	local s = ""
	
	if hours > 0 then
		s = tostring(hours) .. "h"
	end
	
	if minutes > 0 then
		local _m
		
		if minutes > 9 then
			_m = tostring(minutes)
		else
			_m = "0"..tostring(minutes)
		end
	
		s = s .. " " .._m.. "m"
	end
	
	local _s
	
	if seconds > 9 then
		_s = tostring(seconds)
	else
		_s = "0"..tostring(seconds)
	end

	return s.." ".._s.. "s"
end

function comrade:OnCommReceived(prefix, message, distribution, sender)
	if prefix == comrade_prefix then	
		local originalMessage = message
	
		local amount = 0 
		if string.find(message, "|") then 
			local amess = comrade_split(message, "|")
			message = amess[1]
			amount = tonumber(amess[2])
		end

		if message == 'REQUEST' then
			if playerName ~= sender then		
				comrade_SendCharacterData(sender)
			end
		elseif message == 'SURVEY' then
			if playerName ~= sender then				
				local split = comrade_split(originalMessage, "|")
				message = split[1]
				data = split[2]			
			
				local result, sentCharacterData = comrade:Deserialize(data)
				
				comrade_Config.Characters[sentCharacterData.Name] = sentCharacterData
				
				-- update the content frame if it is open
				C_Timer.After(1, function()
					if _frameCreated and _frame:IsShown() then
						UpdateContentFrame()					
					end
				end)
			end
		elseif message == 'UPDATE' then
			if playerName ~= sender then
				local split = comrade_split(originalMessage, "|")
				message = split[1]
				data = split[2]
			
				local result, sentCharacterData = comrade:Deserialize(data)

				comrade_Config.Characters[sentCharacterData.Name] = sentCharacterData
				
				-- update the content frame if it is open
				C_Timer.After(1, function()
					if _frameCreated and _frame:IsShown() then
						UpdateContentFrame()					
					end
				end)
			end			
		end
	end
end 

function comrade_SurveyGuild()
	comrade:SendCommMessage(comrade_prefix, "REQUEST", "GUILD", "")
end

-------------------------------------------------------------------------
-- Send personal cooldown information to the requestor
-- If there is no data then nothing is sent
-------------------------------------------------------------------------
function comrade_SendCharacterData(surveyRequestor)
	local character = comrade_Config.Characters[playerName]
	
	if character then		
		comrade:SendCommMessage(comrade_prefix, "SURVEY|"..comrade:Serialize(character), "WHISPER", surveyRequestor)
	end
end

function comrade_split(str, sep)
	local t = {}
	local ind = string.find(str, sep)
	while (ind ~= nil) do
		table.insert(t, string.sub(str, 1, ind-1))
		str = string.sub(str, ind+1)
		ind = string.find(str, sep, 1, true)
	end
	if (str ~="") then table.insert(t, str) end
	return t
end

function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function comradeSlash(msg)
	if (msg == 'help' or msg == '?') then
		print('|cffff00ff[Comrade]|r')
		print('|cffff00ff[/comrade]|r open the main window')
		print('|cffff00ff[/comrade help]|r display this help menu')		
		print('|cffff00ff[/comrade survey]|r survey your guild and receive each characters cooldown data')
		print('|cffff00ff[/comrade reset]|r clear all of your config and history data (use with caution)')
	elseif (msg == 'reset') then
		ResetOptions()
	elseif (msg == 'survey') then
		comrade_SurveyGuild()
	elseif _frameCreated and _frame:IsShown() then
		_frame:Hide()	
	else
		if not _frameCreated then
			SetupMainWindow()
		end	
		
		UpdateContentFrame()
		_frame:Show()		
	end
end

SlashCmdList["comrade"] = comradeSlash
SLASH_comrade1 = "/comrade"