-- FinalFantasylization by Darken5
-- Version 4.0.0
------------------------------------------------------------

-- FinalFantasylization requires this version of FFZlib:
local FinalFantasylizationFFZlibVersionRequired = 1.00
local block = 0
-- How often the OnUpdate code will run (in seconds)
local FinalFantasylization_UpdateInterval = 1.5 

-- LibBabble Zone and SubZone code --
BSZ = LibStub("LibBabble-SubZone-3.0")
BF = LibStub("LibBabble-Faction-3.0")
SZ = BSZ:GetLookupTable()
SZR = BSZ:GetReverseLookupTable()
F = BF:GetLookupTable()
FR = BF:GetReverseLookupTable()
-------------------------------------
local FinalFantasylization_RightClick = false;
local FinalFantasylization_LeftClick = false;
local FinalFantasylization_RightTurn = false;
local FinalFantasylization_LeftTurn = false;

local FinalFantasylization_IsPlaying = false

NUM_SOUND_PACKS = 0
for i = 1, GetNumAddOns() do
	local name = GetAddOnInfo(i)
	if strmatch(name, "SoundPack%d*") then
		print (GetAddOnInfo(i))
		NUM_SOUND_PACKS = NUM_SOUND_PACKS + 1
	end
end

LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("FinalFantasylization", {
	type = "launcher",
	icon = "Interface\\AddOns\\FinalFantasylization\\Textures\\icon.tga",
	OnClick = function(clickedframe, button)
		ToggleDropDownMenu(1, nil, FinalFantasylizationDropDownMenu, clickedframe, 0, 0)
	end,
})

function FinalFantasylization_OnLoad()
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEAVING_WORLD") -- Fires when the player logs out or exits a world area.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_ALIVE") -- This event fires after PLAYER_ENTERING_WORLD
	FinalFantasylizationFrame:RegisterEvent("WORLD_MAP_UPDATE") -- Fired when the world map should be updated. When entering a battleground, this event won't fire until the zone is changed (i.e. in WSG when you walk outside of Warsong Lumber Mill or Silverwing Hold)
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED") -- Fired when the player enters a new zone. Zones are the smallest named subdivions of the game world and are contained within areas (also called regions). Whenever the text over the minimap changes, this event is fired. 
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED_INDOORS") -- Fired when a player enters a new zone within a city. 
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA") -- Fired when the user enters a new zone and a new area. e.g. moving from Duskwood to Stranglethorn Vale.
	FinalFantasylizationFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	FinalFantasylizationFrame:RegisterEvent("PLAYER_ENTER_COMBAT") -- This event fires when the player initiates melee auto-attack.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEAVE_COMBAT") -- This event fires when the player stops melee auto-attack.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_REGEN_DISABLED") -- Fired whenever you enter combat, as normal regen rates are disabled during combat.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_REGEN_ENABLED") -- Fired after ending combat, as regen rates return to normal. Useful for determining when a player has left combat. 
	FinalFantasylizationFrame:RegisterEvent("PLAYER_XP_UPDATE") --Fired when the player's XP is updated (due quest completion or killing). 
	FinalFantasylizationFrame:RegisterEvent("PLAYER_PVP_KILLS_CHANGED") -- Fired when you slay another player.
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE") -- Fires when player's faction changes. ie: "Your reputation with Timbermaw Hold has very slightly increased."
	FinalFantasylizationFrame:RegisterEvent("PLAYER_UPDATE_RESTING") -- Fired when the player starts or stops resting, i.e. when entering/leaving inns/major towns. 
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CAMPING") -- Fired when the player is camping 
	FinalFantasylizationFrame:RegisterEvent("UNIT_AURA") -- Fires when a unit loses or gains a buff or debuff.
	FinalFantasylizationFrame:RegisterEvent("UNIT_HEALTH") -- Fired whenever a units health is affected.
	FinalFantasylizationFrame:RegisterEvent("UNIT_MODEL_CHANGED") -- Fired when the unit's 3d model changes. (Shapeshift, Polymorph, etc...)
	FinalFantasylizationFrame:RegisterEvent("UNIT_SPELLCAST_SENT") -- Fires when a request to cast a spell (on behalf of the player or a unit controlled by the player) is sent to the server
	FinalFantasylizationFrame:RegisterEvent("PLAYER_DEAD") -- Fired when the player has died. 
	FinalFantasylizationFrame:RegisterEvent("PLAYER_UNGHOST") -- Fired when the player is alive after being a ghost. Called after one of: Performing a successful corpse run and the player accepts the 'Resurrect Now' box. Accepting a resurrect from another player after releasing from a death. Zoning into an instance where the player is dead. When the player accept a resurrect from a Spirit Healer.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CONTROL_GAINED") -- Fires after the PLAYER_CONTROL_LOST event, when control has been restored to the player. (Recover from Mindcontrol, Taxi, etc...)
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CONTROL_LOST") -- Fires whenever the player is unable to control the character. Examples are when afflicted by fear or when using a taxi. (Mindcontrol, Taxi, etc...)
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL") -- Fired for non faction specific events in the battlegrounds such as the battle start announcement. 
	FinalFantasylizationFrame:RegisterEvent("UPDATE_BATTLEFIELD_STATUS") -- Fired whenever joining a queue, leaving a queue, battlefield to join is changed, when you can join a battlefield, or if somebody wins the battleground. 
	FinalFantasylizationFrame:RegisterEvent("UPDATE_WORLD_STATES") -- Fired within Battlefields when certain things occur such as a flag being captured. 
	FinalFantasylizationFrame:RegisterEvent("UPDATE_CHAT_WINDOWS") -- Fired when there's a reason to update the chat windows. 
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_CHANNEL") -- Fired when the client receives a channel message. 
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_BATTLEGROUND") -- Fired when a message is received through the battleground group channel.
	FinalFantasylizationFrame:RegisterEvent("UPDATE_MOUSEOVER_UNIT") -- Fires whenever you mouse over any NPC or PC
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE") -- Fires when you gain or are affected by a instant or ongoing spell or effect.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEVEL_UP") -- Fires when player levels up
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_TEXT_EMOTE") -- Fires when a chat emote is used (aka /dance)	
	FinalFantasylizationFrame:RegisterEvent("PLAYER_GAINS_VEHICLE_DATA") -- Fires when the player gains vehicle-related attributes without necessarily entering a vehicle.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LOSES_VEHICLE_DATA"); -- Fires when the player loses vehicle-related attributes without necessarily having been in a vehicle.
	
	hooksecurefunc("DoEmote", FinalFantasylization_DoEmote);	
	hooksecurefunc("MoveForwardStart"	, FinalFantasylization_PlayerMove);
	hooksecurefunc("MoveBackwardStart"	, FinalFantasylization_PlayerMove);
	hooksecurefunc("StrafeLeftStart"	, FinalFantasylization_PlayerMove);
	hooksecurefunc("StrafeRightStart"	, FinalFantasylization_PlayerMove);
	hooksecurefunc("JumpOrAscendStart"	, FinalFantasylization_JumpOrAscendStart);
	hooksecurefunc("ToggleAutoRun"		, FinalFantasylization_PlayerMove);	
	hooksecurefunc("TurnOrActionStart"			, FinalFantasylization_TurnOrActionStart);
	hooksecurefunc("TurnOrActionStop"			, FinalFantasylization_TurnOrActionStop);
	hooksecurefunc("CameraOrSelectOrMoveStart"	, FinalFantasylization_CameraOrSelectOrMoveStart);
	hooksecurefunc("CameraOrSelectOrMoveStop"	, FinalFantasylization_CameraOrSelectOrMoveStop);
	hooksecurefunc("TurnLeftStart"				, FinalFantasylization_TurnLeftStart);
	hooksecurefunc("TurnLeftStop"				, FinalFantasylization_TurnLeftStop);
	hooksecurefunc("TurnRightStart"				, FinalFantasylization_TurnRightStart);
	hooksecurefunc("TurnRightStop"				, FinalFantasylization_TurnRightStop);	

	playermodel = CreateFrame("PlayerModel")
	-- Check the current version of FFZlib.
	if (not FFZlib) or (not FFZlib.Version) or (FFZlib.Version < FinalFantasylizationFFZlibVersionRequired) then
		if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage("|cfffe8460" .. NeedNewerFFZlibMessage) end
		message(NeedNewerFFZlibMessage)
		return
	end
	
	-- Slash Commands
	SLASH_FinalFantasylizationCMD1 = "/ffsound"
	SLASH_FinalFantasylizationCMD2 = "/ffs"
	SlashCmdList["FinalFantasylizationCMD"] = FinalFantasylization_Command
	
	SLASH_Soundpack1 = "/ffsoundpack"
	SLASH_Soundpack2 = "/ffsp"
	SlashCmdList["Soundpack"] = FinalFantasylization_SPCommand
	
--		FinalFantasylizationMapIcon:Show()
	
	-- If they don't have any options set yet (no saved variable), reset them. If they upgraded
	-- from a previous version and are missing one or more options, fill them in with defaults.
	FinalFantasylizationFillMissingOptions()
	
	FinalFantasylization_ClearMusicState()
	
	-- Addon loaded message
	print("|cFF50C0FFFinalFantasylization |cFFFFA500"..GetAddOnMetadata("FinalFantasylization", "Version").."|cFF50C0FF loaded.")
end

------------------------------------------------------------
-- FinalFantasylization Events
------------------------------------------------------------
-- Called when an event that FinalFantasylization cares about is fired.
local startingFunc
local startFinalfantasylization = false
function FinalFantasylization_OnEvent(self, event, ...)
	if event == "PLAYER_ALIVE" then
		CoreSavedVariable = (CoreSavedVariable or "ff7")
		startingFunc = _G["SoundPack" .. CoreSavedVariable .. "_SetEnabled"]
		if startingFunc then
			startingFunc(true)
			FinalFantasylization_Msg("Loaded sound pack " .. CoreSavedVariable .. ".")
			startFinalfantasylization = true
		else
			FinalFantasylization_Msg("Can't find sound pack " .. CoreSavedVariable .. ".")
		end
	elseif event =="COMBAT_LOG_EVENT_UNFILTERED" and arg2 == "PARTY_KILL" and arg3 == UnitGUID("player") and FinalFantasylizationOptions.Enabled == true then
		if FinalFantasylization_PlayerIsCombat == true and FinalFantasylizationOptions.Enabled == true then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. TargetKilled)
			FinalFantasylization_KillSound()
			FinalFantasylization_RegenGain = true
		end
	elseif event == "SPELLS_CHANGED" then
	elseif event == "PLAYER_ALIVE" then
	elseif event == "WORLD_MAP_UPDATE" then
	elseif event == "PLAYER_REGEN_DISABLED" then
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. EnterCombat)
		if FinalFantasylizationOptions.Enabled == true then
			FinalFantasylization_CombatSound()
			FinalFantasylization_PlayerIsCombat = true
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		FinalFantasylization_PlayerIsCombat = false
		FinalFantasylization_RegenGain = true
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. LeaveCombat)
		FinalFantasylization_CurrentZone = nil
	elseif event == "UNIT_AURA" then
	elseif event == "ZONE_CHANGED" then
	elseif event == "ZONE_CHANGED_INDOORS" then
	elseif event == "ZONE_CHANGED_NEW_AREA" then
	elseif event == "PLAYER_UPDATE_RESTING" then
	elseif event == "PLAYER_CAMPING" then
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerCamping)
		if (DanceSongPlaying) then
			FinalFantasylization_StopDanceSong() 
		end
	elseif event == "CHAT_MSG_COMBAT_FACTION_CHANGE" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_XP_UPDATE" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_PVP_KILLS_CHANGED" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_DEAD" then
	elseif event == "CHAT_MSG_TEXT_EMOTE" then
	elseif event == "PLAYER_LEVEL_UP" then
		if ( FinalFantasylization_RegenGain == true or FinalFantasylization_RegenGain == false ) and FinalFantasylizationOptions.LevelUp == true then
			FinalFantasylization_RegenGain = false
			FinalFantasylization_LevelUpSong()
		end
	end
	FinalFantasylization_GetMusic()
end

function FinalFantasylization_ClearMusicState()
	-- PvP Type --
	FinalFantasylization_InContestedArea = false
	FinalFantasylization_InHostileArea = false
	FinalFantasylization_InFriendlyArea = false
	-- Zone
	FinalFantasylization_CurrentZone = nil
	-- General Events --
	FinalFantasylization_PlayerIsWorlding = false
	FinalFantasylization_PlayerIsSleeping = false
	FinalFantasylization_PlayerIsCombat = false
	FinalFantasylization_PlayerIsFlying = false
	FinalFantasylization_PlayerIsMounted = false
	FinalFantasylization_PlayerIsEscape = false
	FinalFantasylization_PlayerIsBattling = false
	FinalFantasylization_PlayerIsMounting = false
	FinalFantasylization_PlayerIsGhosting = false
	FinalFantasylization_PlayerIsTaxi = false
	FinalFantasylization_PlayerIsDead = false
	FinalFantasylization_PlayerIsHostileMounting = false
	FinalFantasylization_Dies = false
	FinalFantasylization_EventLoad = false
	FinalFantasylization_RegenGain = false
	-- Dungeons Events --
	FinalFantasylization_InInstance = false
end

function FinalFantasylization_Msg(msg)
	if( DEFAULT_CHAT_FRAME ) then
		FFZlib.Message(FFZlib.Color.White .. (msg))
	end
end

function FinalFantasylization_debugMsg(msg)
	if( DEFAULT_CHAT_FRAME ) and FinalFantasylizationOptions.Debug == true then
		FFZlib.Message(FFZlib.Color.Teal .. (msg))
	end
end

-- Processes a FinalFantasylization slash command.
function FinalFantasylization_Command(Command)
	local Lower = strlower(Command)
	if Lower == "" or Lower == nil then
		FinalFantasylizationUI_Show()
	elseif Lower == EnabledCommand then
		FinalFantasylizationEnable(true)
		FinalFantasylization_ClearMusicState()
		FFZlib.Message(FFZlib.Color.Yellow .. EnabledMessage)
	elseif Lower == DisabledCommand then
		FinalFantasylizationEnable(false)
		FFZlib.Message(FFZlib.Color.Yellow .. DisabledMessage)
	elseif Lower == DebugCommand then
		if FinalFantasylizationOptions.Debug == false then
			FinalFantasylizationEnableDebug(true)
			FFZlib.Message(FFZlib.Color.Yellow .. DebugOnMessage)
		else
			FinalFantasylizationEnableDebug(false)
			FFZlib.Message(FFZlib.Color.Yellow .. DebugOffMessage)
		end
	elseif Lower == MusicCommand then
		if FinalFantasylizationOptions.Music == true then
			FinalFantasylizationEnableMusic(false)
			FinalFantasylization_ClearMusicState()
			StopMusic();
			FFZlib.Message(FFZlib.Color.Yellow .. MusicOffMessage)
		else
			FinalFantasylizationEnableMusic(true)
			FinalFantasylization_debugMsg(FFZlib.Color.Red .. "Enable Music...")
			FinalFantasylization_GetMusic()
			FFZlib.Message(FFZlib.Color.Yellow .. MusicOnMessage)
		end
	elseif Lower == SoundCommand then
		if FinalFantasylizationOptions.Sound == true then
			FinalFantasylizationEnableSound(false)
			FFZlib.Message(FFZlib.Color.Yellow .. SoundOffMessage)
		else
			FinalFantasylizationEnableSound(true)
			FFZlib.Message(FFZlib.Color.Yellow .. SoundOnMessage)
		end
	elseif Lower == DungeonCommand then
		if FinalFantasylizationOptions.Dungeon == true then
			FinalFantasylizationEnableDungeon(false)
			FFZlib.Message(FFZlib.Color.Yellow .. DungeonOffMessage)
		else
			FinalFantasylizationEnableDungeon(true)
			FFZlib.Message(FFZlib.Color.Yellow .. DungeonOnMessage)
		end
	elseif Lower == MountCommand then
		if FinalFantasylizationOptions.Mount == true then
			FinalFantasylizationEnableMount(false)
			FFZlib.Message(FFZlib.Color.Yellow .. MountOffMessage)
		else
			FinalFantasylizationEnableMount(true)
			FFZlib.Message(FFZlib.Color.Yellow .. MountOnMessage)
		end
	elseif Lower == SleepCommand then
		if FinalFantasylizationOptions.Sleep == true then
			FinalFantasylizationEnableSleep(false)
			FFZlib.Message(FFZlib.Color.Yellow .. SleepOffMessage)
		else
			FinalFantasylizationEnableSleep(true)
			FFZlib.Message(FFZlib.Color.Yellow .. SleepOnMessage)
		end
	elseif Lower == SwimCommand then
		if FinalFantasylizationOptions.Swim == true then
			FinalFantasylizationEnableSwim(false)
			FFZlib.Message(FFZlib.Color.Yellow .. SwimOffMessage)
		else
			FinalFantasylizationEnableSwim(true)
			FFZlib.Message(FFZlib.Color.Yellow .. SwimOnMessage)
		end
	elseif Lower == DeadCommand then
		if FinalFantasylizationOptions.Dead == true then
			FinalFantasylizationEnableDead(false)
			FFZlib.Message(FFZlib.Color.Yellow .. DeadOffMessage)
		else
			FinalFantasylizationEnableDead(true)
			FFZlib.Message(FFZlib.Color.Yellow .. DeadOnMessage)
		end
	elseif Lower == FlightCommand then
		if FinalFantasylizationOptions.Flight == true then
			FinalFantasylizationEnableFlight(false)
			FFZlib.Message(FFZlib.Color.Yellow .. FlightOffMessage)
		else
			FinalFantasylizationEnableFlight(true)
			FFZlib.Message(FFZlib.Color.Yellow .. FlightOnMessage)
		end
	elseif Lower == CapitalCommand then
		if FinalFantasylizationOptions.Capital == true then
			FinalFantasylizationEnableCapital(false)
			FFZlib.Message(FFZlib.Color.Yellow .. CapitalOffMessage)
		else
			FinalFantasylizationEnableCapital(true)
			FFZlib.Message(FFZlib.Color.Yellow .. CapitalOnMessage)
		end
	elseif Lower == CombatCommand then
		if FinalFantasylizationOptions.Combat == true then
			FinalFantasylizationEnableCombat(false)
			FFZlib.Message(FFZlib.Color.Yellow .. CombatOffMessage)
		else
			FinalFantasylizationEnableCombat(true)
			FFZlib.Message(FFZlib.Color.Yellow .. CombatOnMessage)
		end
	elseif Lower == FanfareCommand then
		if FinalFantasylizationOptions.Fanfare == true then
			FinalFantasylizationEnableFanfare(false)
			FFZlib.Message(FFZlib.Color.Yellow .. FanfareOffMessage)
		else
			FinalFantasylizationEnableFanfare(true)
			FFZlib.Message(FFZlib.Color.Yellow .. FanfareOnMessage)
		end
	elseif Lower == LevelUpCommand then
		if FinalFantasylizationOptions.LevelUp == true then
			FinalFantasylizationEnableLevelUp(false)
			FFZlib.Message(FFZlib.Color.Yellow .. LevelUpOffMessage)
		else
			FinalFantasylizationEnableLevelUp(true)
			FFZlib.Message(FFZlib.Color.Yellow .. LevelUpOnMessage)
		end
		elseif Lower == RaidCommand then
		if FinalFantasylizationOptions.Raid == true then
			FinalFantasylizationEnableRaid(false)
			FFZlib.Message(FFZlib.Color.Yellow .. RaidOffMessage)
		else
			FinalFantasylizationEnableRaid(true)
			FFZlib.Message(FFZlib.Color.Yellow .. RaidOnMessage)
		end
	elseif Lower == DanceCommand then
		if FinalFantasylizationOptions.Dance == true then
			FinalFantasylizationEnableDance(false)
			FFZlib.Message(FFZlib.Color.Yellow .. DanceOffMessage)
		else
			FinalFantasylizationEnableDance(true)
			FFZlib.Message(FFZlib.Color.Yellow .. DanceOnMessage)
		end
	elseif Lower == ChocoboKwehCommand then
		if FinalFantasylizationOptions.ChocoboKweh == true then
			FinalFantasylizationEnableChocoboKweh(false)
			FFZlib.Message(FFZlib.Color.Yellow .. ChocoboKwehOffMessage)
		else
			FinalFantasylizationEnableChocoboKweh(true)
			FFZlib.Message(FFZlib.Color.Yellow .. ChocoboKwehOnMessage)
		end
	elseif Lower == BattlegroundCommand then
		if FinalFantasylizationOptions.Battleground == true then
			FinalFantasylizationEnableBattleground(false)
			FFZlib.Message(FFZlib.Color.Yellow .. BattlegroundOffMessage)
		else
			FinalFantasylizationEnableBattleground(true)
			FFZlib.Message(FFZlib.Color.Yellow .. BattlegroundOnMessage)
		end
	elseif Lower == TestCommand then
		ZoneName = GetMapNameByID(GetCurrentMapAreaID());
		ZoneName2 = GetRealZoneText();
		MinimapZoneName = GetMinimapZoneText()
		SubZoneName = GetSubZoneText()
		areaID = GetCurrentMapAreaID()
		local realm = GetRealmName();
		local factionEnglish, factionLocale = UnitFactionGroup("player"); --'Horde, Alliance
		local pvpType, isFFA, faction = GetZonePVPInfo(); --'("friendly";"contested";"hostile";"sanctuary") (1;nil) ("Alliance";"Horde")
		ZoneText = GetZoneText()
		local inInstance, instanceType = IsInInstance();
		local classification = UnitClassification("target"); --'classification: "worldboss", "rareelite", "elite", "rare", "normal" or "trivial"
			FFZlib.Message(FFZlib.Color.Grey..TestMessage1..FFZlib.Color.Crimson.."|"..realm.."|")
			FFZlib.Message(FFZlib.Color.Grey..TestMessage2..FFZlib.Color.Crimson.."|"..factionEnglish.."|")
			if ZoneName2 ~= nil then
				FFZlib.Message(FFZlib.Color.Grey..TestMessage3..FFZlib.Color.Crimson.."|"..ZoneName.. "| or |"..ZoneName2.."|")
			else
				FFZlib.Message(FFZlib.Color.Grey..TestMessage3..FFZlib.Color.Crimson.."|"..ZoneName.. "|, ZoneName2 = nil")
			end
			FFZlib.Message(FFZlib.Color.Grey..TestMessage8..FFZlib.Color.Crimson.."|"..areaID.."|")
			FFZlib.Message(FFZlib.Color.Grey..TestMessage4..FFZlib.Color.Crimson.."|"..instanceType.."|")
			FFZlib.Message(FFZlib.Color.Grey..TestMessage5..FFZlib.Color.Crimson.."|"..SubZoneName.."|")
			FFZlib.Message(FFZlib.Color.Grey..TestMessage6..FFZlib.Color.Crimson.."|"..MinimapZoneName.."|")
			FFZlib.Message(FFZlib.Color.Grey..TestMessage7..FFZlib.Color.Crimson.."|"..classification.."|")
	else
		FinalFantasylizationUsage()
	end
end

function FinalFantasylization_SPCommand(Command)
	local Lower = strlower(Command)
	if Lower == "" or Lower == nil then
		FinalFantasylizationUISP_Show()
	else
		SwitchTo(Lower)
	end
end

function SwitchTo(soundPackID)
	soundPackID = (soundPackID)
	local func = _G["SoundPack" .. soundPackID .. "_SetEnabled"]
	if func then
		func(true)
		startingFunc = func
		FinalFantasylization_ClearMusicState()
		StopMusic()
		FinalFantasylization_debugMsg(FFZlib.Color.Red .. "SwitchTo...")
		FinalFantasylization_GetMusic()
		print("Loaded sound pack " .. soundPackID .. ".")
	elseif startingFunc then
		startingFunc(true)
		print("Can't find sound pack " .. soundPackID .. ".")
		print(CoreSavedVariable .. " still loaded.")
	else
		print("Can't find sound pack " .. soundPackID .. ".")
	end
end

function FinalFantasylizationEnable(Enabled)
	FFZlib.Assert(Enabled == true or Enabled == false, "New value should be true or false.")
	FinalFantasylizationOptions.Enabled = Enabled
	if Enabled == true then
		FinalFantasylization_ClearMusicState()
		FinalFantasylization_debugMsg(FFZlib.Color.Red .. "FinalFantasylizationEnable...")
		FinalFantasylization_OnUpdate(self, elapsed)
	elseif Enabled == false then
		StopMusic()
		FinalFantasylization_ClearMusicState()
	end
end

function FinalFantasylizationEnableMusic(Music)
	FFZlib.Assert(Music == true or Music == false, "New value should be true or false.")
	FinalFantasylizationOptions.Music = Music
	if Music == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableDance(Dance)
	FFZlib.Assert(Dance == true or Dance == false, "New value should be true or false.")
	FinalFantasylizationOptions.Dance = Dance
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableCombat(Combat)
	FFZlib.Assert(Combat == true or Combat == false, "New value should be true or false.")
	FinalFantasylizationOptions.Combat = Combat
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableMount(Mount)
	FFZlib.Assert(Mount == true or Mount == false, "New value should be true or false.")
	FinalFantasylizationOptions.Mount = Mount
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableDungeon(Dungeon)
	FFZlib.Assert(Dungeon == true or Dungeon == false, "New value should be true or false.")
	FinalFantasylizationOptions.Dungeon = Dungeon
	if Dungeon == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableRaid(Raid)
	FFZlib.Assert(Raid == true or Raid == false, "New value should be true or false.")
	FinalFantasylizationOptions.Raid = Raid
	if Raid == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableBattleground(Battleground)
	FFZlib.Assert(Battleground == true or Battleground == false, "New value should be true or false.")
	FinalFantasylizationOptions.Battleground = Battleground
	if Battleground == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableSleep(Sleep)
	FFZlib.Assert(Sleep == true or Sleep == false, "New value should be true or false.")
	FinalFantasylizationOptions.Sleep = Sleep
	if Sleep == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableSwim(Swim)
	FFZlib.Assert(Swim == true or Swim == false, "New value should be true or false.")
	FinalFantasylizationOptions.Swim = Swim
	if Swim == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableDead(Dead)
	FFZlib.Assert(Dead == true or Dead == false, "New value should be true or false.")
	FinalFantasylizationOptions.Dead = Dead
	if Dead == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableFlight(Flight)
	FFZlib.Assert(Flight == true or Flight == false, "New value should be true or false.")
	FinalFantasylizationOptions.Flight = Flight
	if Flight == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableCapital(Capital)
	FFZlib.Assert(Capital == true or Capital == false, "New value should be true or false.")
	FinalFantasylizationOptions.Capital = Capital
	if Capital == false then StopMusic() end
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableSound(Sound)
	FFZlib.Assert(Sound == true or Sound == false, "New value should be true or false.")
	FinalFantasylizationOptions.Sound = Sound
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableFanfare(Fanfare)
	FFZlib.Assert(Fanfare == true or Fanfare == false, "New value should be true or false.")
	FinalFantasylizationOptions.Fanfare = Fanfare
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableChocoboKweh(ChocoboKweh)
	FFZlib.Assert(ChocoboKweh == true or ChocoboKweh == false, "New value should be true or false.")
	FinalFantasylizationOptions.ChocoboKweh = ChocoboKweh
	FinalFantasylization_ClearMusicState()
end

function FinalFantasylizationEnableLevelUp(LevelUp)
	FFZlib.Assert(LevelUp == true or LevelUp == false, "New value should be true or false.")
	FinalFantasylizationOptions.LevelUp = LevelUp
	FinalFantasylization_ClearMusicState()
end
	
function FinalFantasylizationEnableDebug(Debug)
	FFZlib.Assert(Debug == true or Debug == false, "New value should be true or false.")
	FinalFantasylizationOptions.Debug = Debug
	FinalFantasylization_ClearMusicState()
end

-- Displays FinalFantasylization usage information.
function FinalFantasylizationUsage()
	FFZlib.Message(" ")
	FFZlib.MultilineMessage(Usage, FFZlib.Color.green)
	FFZlib.Message(" ")
end

function FinalFantasylizationSoundpackUsage()
	FFZlib.Message(" ")
	FFZlib.MultilineMessage(SoundpackUsage, FFZlib.Color.green)
	FFZlib.Message(" ")
end

function FinalFantasylization_PlayMusic( file )
	if( FinalFantasylizationOptions.Enabled == true ) and ( FinalFantasylizationOptions.Music == true ) then
		if( file ~= nil ) then
			if Current_Song ~= file then
				Current_Song = file
				PlaySound("GAMEHIGHLIGHTFRIENDLYUNIT")
				PlayMusic( file )
				PlaySound("GAMEHIGHLIGHTFRIENDLYUNIT")
			end
		end
	end
end

function FinalFantasylization_PlayFile( file )
	if( FinalFantasylizationOptions.Enabled == true ) and ( FinalFantasylizationOptions.Sound == true ) then
		if( file ~= nil ) then
			--PlaySound("GAMEHIGHLIGHTFRIENDLYUNIT")
			PlaySoundFile( file )
			--PlaySound("GAMEHIGHLIGHTFRIENDLYUNIT")
		end
	end
end

function FinalFantasylization_GetMusic()

	if FinalFantasylizationOptions.Enabled == true and startFinalfantasylization == true then
		ZoneName = GetMapNameByID(GetCurrentMapAreaID());
		ZoneName2 = GetRealZoneText();
		MinimapZoneName = GetMinimapZoneText()
		SubZoneName = GetSubZoneText()
		factionEnglish, factionLocale = UnitFactionGroup("player"); --'Horde, Alliance
		classification = UnitClassification("target"); --'classification: "worldboss", "rareelite", "elite", "rare", "normal" or "trivial"
		pvpType, isFFA, faction = GetZonePVPInfo(); --'("friendly";"contested";"hostile";"sanctuary") (1;nil) ("Alliance";"Horde")
		ZoneText = GetZoneText()
		MapID = GetCurrentMapAreaID()

--'==========================================================================================
--'	Sounds
--'==========================================================================================
		if FinalFantasylization_PlayerIsCombat == false and FinalFantasylization_RegenGain == true and FinalFantasylizationOptions.Fanfare == true then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Victory)
			FinalFantasylization_Fanfare() -- Battle fanfare call
			FinalFantasylization_RegenGain = false
			if FinalFantasylization_PlayerIsCombat == true then
				StopMusic();
			end
		end
--'==========================================================================================
--'	Music
--'==========================================================================================
		FinalFantasylization_IsPlaying = false
--###########################################################################################
--###########################################################################################
--##
--##			WORLD EVENTS
--##
--###########################################################################################
--###########################################################################################
		
--'==========================================================================================
--'	World Event: Player is Ghost
--'==========================================================================================
		if ( UnitIsGhost("player") ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Dead == true then
			if FinalFantasylization_PlayerIsGhosting == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerGhost)
				FinalFantasylization_PlayerGhost() -- Music call when youre a ghost.
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsGhosting = true
			FinalFantasylization_RegenGain = false
		else
			FinalFantasylization_PlayerIsGhosting = false
		end
--'==========================================================================================
--'	World Event: Player is Dead
--'==========================================================================================
		if ( UnitIsDead("player") ) and FinalFantasylizationOptions.Dead == true then
			if FinalFantasylization_PlayerIsDead == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerDie)
				FinalFantasylization_PlayerDie() -- music call for when you die.
			end
			FinalFantasylization_IsPlaying = true
			
			FinalFantasylization_PlayerIsDead = true
			FinalFantasylization_RegenGain = false
		else
			FinalFantasylization_PlayerIsDead = false
		end
--'==========================================================================================
--'	World Event: Player is On Taxi "Horde and Alliance Varyiant"
--'==========================================================================================
		if ( UnitOnTaxi("player") ) and ( factionEnglish == "Horde" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true then
			if FinalFantasylization_PlayerIsTaxi == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. "Horde" .. " " .. Taxi)
				FinalFantasylization_HordeTaxi() -- music call for Taxi. ...
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsTaxi = true
		elseif ( UnitOnTaxi("player") ) and ( factionEnglish == "Alliance" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true then
			if FinalFantasylization_PlayerIsTaxi == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. "Alliance" .. " " .. Taxi)
				FinalFantasylization_AllianceTaxi() -- music call for Taxi. ...
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsTaxi = true
		else
			FinalFantasylization_PlayerIsTaxi = false
		end
--'==========================================================================================
--'	World Event: Player in Combat, Mounted
--'==========================================================================================
		if IsMounted("player") and FinalFantasylization_PlayerIsCombat == true and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and UnitAura("player", "Running Wild") == nil then
			if FinalFantasylization_PlayerIsEscape == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. MountedEscape)
				FinalFantasylization_MountedEscape()
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsEscape = true
		else
			FinalFantasylization_PlayerIsEscape = false
		end
--'==========================================================================================
--'	World Event: Player in Combat
--'==========================================================================================
		if FinalFantasylization_PlayerIsCombat == true and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Combat == true and UnitAffectingCombat("player") then
			--FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombat)
			local inInstance, instanceType = IsInInstance();
			if FinalFantasylization_PlayerIsBattling == false then
				if UnitExists("target") ~= nil then
					local GUID = UnitGUID("target")
					local name = UnitName("target")
					local mobID = tonumber(GUID:sub(9, 12), 16)
					if IsInInstance() then
						if instanceType == "party" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonBoss .. name)
								FinalFantasylization_DungeonBoss()
							else
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonPVE)
								FinalFantasylization_WorldNormalPVE()
							end
						elseif instanceType == "raid" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidBoss .. name)
								FinalFantasylization_RaidBoss()				-- <-- NEW	FinalFantasylization_RaidBoss()
							else
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidPVE)
								FinalFantasylization_WorldNormalPVE()
							end
						elseif instanceType == "pvp" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatBGBoss .. name)
								FinalFantasylization_BattlegroundBoss()
							elseif UnitIsPlayer("target") and UnitIsEnemy("player", "target") and UnitHealth("target") > 0 then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatBGPVP)
								FinalFantasylization_BattlegroundPVP()
							end
						end
					elseif LibStub("LibBossIDs-1.0").BossIDs[mobID] then
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldBoss .. name)
						FinalFantasylization_WorldBoss()
					elseif 	UnitIsPlayer("target") and UnitIsEnemy("player", "target") and UnitHealth("target") > 0 then
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVP)
						FinalFantasylization_WorldPVP()
					else
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVE)
						FinalFantasylization_WorldNormalPVE()
					end		
				else
					if IsInInstance() then
						if instanceType == "party" then
							FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonPVE)
							FinalFantasylization_WorldNormalPVE()
						elseif instanceType == "raid" then
							FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidPVE)
							FinalFantasylization_WorldNormalPVE()
						end
					else
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVE)
						FinalFantasylization_WorldNormalPVE()
					end
				end
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsBattling = true
		else
			FinalFantasylization_PlayerIsBattling = false
		end
--'==========================================================================================
--'	World Event: Player is Mounted in Hostile Zone
--'==========================================================================================
		if IsMounted("player") and ( pvpType == "hostile" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and UnitAura("player", "Running Wild") == nil then
			if FinalFantasylization_PlayerIsHostileMounting == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HostileEscape)
				FinalFantasylization_MountedEscape()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsHostileMounting = true
		else
			FinalFantasylization_PlayerIsHostileMounting = false
		end
--'==========================================================================================
--'	World Event: Player on Flying Mount "Horde and Alliance Varyiant"
--'==========================================================================================
		if IsFlying() and ( factionEnglish == "Horde" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true then
			if FinalFantasylization_PlayerIsFlying == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Flying .. "(" .. "Horde" .. ")")
				FinalFantasylization_HordeFlying()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsFlying = true 
		elseif IsFlying() and ( factionEnglish == "Alliance" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true then
			if FinalFantasylization_PlayerIsFlying == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Flying .. "(" .. "Alliance" .. ")")
				FinalFantasylization_AllianceFlying()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsFlying = true 
		else 
			FinalFantasylization_PlayerIsFlying = false 
		end
--'==========================================================================================
--'	World Event: Player is Mounted.. Chocobo!
--'==========================================================================================
		if IsMounted("player") and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and UnitAura("player", "Running Wild") == nil then
			if FinalFantasylization_PlayerIsMounting == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Mounted)
				FinalFantasylization_ClearMusicState()
				FinalFantasylization_Mounted()
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsMounting = true
		else			
			FinalFantasylization_PlayerIsMounting = false
		end

--###########################################################################################
--###########################################################################################
--##
--##			ZONES
--##
--###########################################################################################
--###########################################################################################
--'==========================================================================================
--' Eastern Kingdoms Zones
--'==========================================================================================
		if not ( ( FinalFantasylization_PlayerIsFlying == true ) or ( FinalFantasylization_PlayerIsMounting == true ) or ( FinalFantasylization_PlayerIsHostileMounting == true ) or ( FinalFantasylization_PlayerIsEscape == true ) or ( FinalFantasylization_PlayerIsTaxi == true ) or ( FinalFantasylization_PlayerIsGhosting == true ) ) then
		-- Abyssal Depths
			if ( MapID == 614 ) then
				FinalFantasylization_EasternKingdomsZones_AbyssalDepths(SubZoneName)
		-- Arathi Highlands
			elseif ( MapID == 16 ) then
				FinalFantasylization_EasternKingdomsZones_ArathiHighlands(SubZoneName)
		-- Badlands
			elseif ( MapID == 17 ) then
				FinalFantasylization_EasternKingdomsZones_Badlands(SubZoneName)
		-- Blasted Lands
			elseif ( MapID == 19 ) then
				FinalFantasylization_EasternKingdomsZones_BlastedLands(SubZoneName)
		-- Burning Steppes
			elseif ( MapID == 29 ) then
				FinalFantasylization_EasternKingdomsZones_BurningSteppes(SubZoneName)
		-- Deeprun Tram
			elseif ( MinimapZoneName == SZ["Deeprun Tram"] ) then
				FinalFantasylization_EasternKingdomsZones_DeeprunTram()
		-- Dun Morogh
			elseif ( MapID == 27 ) then
				FinalFantasylization_EasternKingdomsZones_DunMorogh(SubZoneName)
		-- Elwynn Forest
			elseif ( MapID == 30 ) then
				FinalFantasylization_EasternKingdomsZones_ElwynnForest(SubZoneName)
		-- Eversong Woods
			elseif ( MapID == 462  ) then
				FinalFantasylization_EasternKingdomsZones_EversongWoods(SubZoneName)
		-- Ghostlands
			elseif ( MapID == 463 ) then
				FinalFantasylization_EasternKingdomsZones_Ghostlands(SubZoneName)
		-- Gilneas
			elseif ( MapID == 545 ) then
				FinalFantasylization_EasternKingdomsZones_Gilneas(SubZoneName)
		-- Gilneas City
			elseif ( MapID == 611 ) then
				FinalFantasylization_EasternKingdomsZones_GilneasCity(SubZoneName)
		-- Loch Modan
			elseif ( MapID == 35 ) then
				FinalFantasylization_EasternKingdomsZones_LochModan(SubZoneName)
		-- Redridge Mountains
			elseif ( MapID == 36 ) then
				FinalFantasylization_EasternKingdomsZones_RedridgeMountains(SubZoneName)
		-- Ruins of Gilneas
			elseif ( MapID == 684 ) then
				FinalFantasylization_EasternKingdomsZones_RuinsofGilneas(SubZoneName)
		-- Silverpine Forest
			elseif ( MapID == 21 ) then
				FinalFantasylization_EasternKingdomsZones_SilverpineForest(SubZoneName)
		-- Silvermoon City
			elseif ( MapID == 480 ) then
				FinalFantasylization_EasternKingdomsZones_SilvermoonCity(SubZoneName)
		-- Stormwind City
			elseif ( MapID == 301 ) then
				FinalFantasylization_EasternKingdomsZones_StormwindCity(SubZoneName)
		-- Tirisfal Glades
			elseif ( MapID == 20 ) then
				FinalFantasylization_EasternKingdomsZones_TirisfalGlades(SubZoneName)
		-- Undercity
			elseif ( MapID == 382 ) then
				FinalFantasylization_EasternKingdomsZones_Undercity(SubZoneName)
		-- Westfall
			elseif ( MapID == 39 ) then
				FinalFantasylization_EasternKingdomsZones_Westfall(SubZoneName)


--'==========================================================================================
--' Kalimdor Zones
--'==========================================================================================
		-- Ashenvale
			elseif ( MapID == 43 ) then
				FinalFantasylization_KalimdorZones_Ashenvale(SubZoneName)
		-- Azshara
			elseif ( MapID == 181 ) then
				FinalFantasylization_KalimdorZones_Azshara(SubZoneName)
		-- Azuremyst Isle
			elseif ( MapID == 464 ) then
				FinalFantasylization_KalimdorZones_AzuremystIsle(SubZoneName)
		-- Bloodmyst Isle
			elseif ( MapID == 476 ) then
				FinalFantasylization_KalimdorZones_BloodmystIsle(SubZoneName)
		-- Darkshore
			elseif ( MapID == 42 ) then
				FinalFantasylization_KalimdorZones_Darkshore(SubZoneName)
		-- Darnassus
			elseif ( MapID == 381 ) then
				FinalFantasylization_KalimdorZones_Darnassus(SubZoneName)
		-- Durotar
			elseif ( MapID == 4 ) then
				FinalFantasylization_KalimdorZones_Durotar(SubZoneName)
		-- The Exodar
			elseif ( MapID == 471 ) then
				FinalFantasylization_KalimdorZones_TheExodar(SubZoneName)
		-- Mulgore
			elseif ( MapID == 9 ) then
				FinalFantasylization_KalimdorZones_Mulgore(SubZoneName)
		-- Northern Barrens
			elseif ( MapID == 11 ) then
				FinalFantasylization_KalimdorZones_NorthernBarrens(SubZoneName)
		-- Teldrassil
			elseif ( MapID == 41 ) then
				FinalFantasylization_KalimdorZones_Teldrassil(SubZoneName)


--'==========================================================================================
--' Maelstrom Zones
--'==========================================================================================
		-- Kezan
			elseif ( MapID == 605 ) then
				FinalFantasylization_MaelstromZones_Kezan(SubZoneName)
		-- The Lost Isles
			elseif ( MapID == 544 ) then
				FinalFantasylization_MaelstromZones_TheLostIsles(SubZoneName)


	-- Debug: Zone Catch-all
			elseif not ( IsResting() ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Zone not in FinalFantasylization")
			end
		end
--###########################################################################################
--###########################################################################################
--##
--##			DUNGEONS EVENTS
--##
--###########################################################################################
--###########################################################################################

			-- 5 Man Dungeons
		if IsInInstance() and FinalFantasylization_IsPlaying == false then
			local inInstance, instanceType = IsInInstance();
			
			if instanceType == "party" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Dungeon == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInDungeon.. ZoneName)
					-- Vanilla WoW Dungeons
				if ( ZoneName == SZ["Ragefire Chasm"] ) then				-- Ragefire Chasm Instance
					FinalFantasylization_Dungeon_RagefireChasmSong()
				elseif ( ZoneName == SZ["Wailing Caverns"] ) then			-- Wailing Caverns Instance
					FinalFantasylization_Dungeon_WailingCavernsSong()
				elseif ( ZoneName == SZ["The Deadmines"] ) then				-- The Deadmines Instance
					FinalFantasylization_Dungeon_DeadminesSong()
				elseif ( ZoneName == SZ["Shadowfang Keep"] ) then			-- Shadowfang Keep Instance
					FinalFantasylization_Dungeon_ShadowfangKeepSong()
				elseif ( ZoneName == SZ["Blackfathom Deeps"] ) then			-- Blackfathom Deeps Instance
					FinalFantasylization_Dungeon_BlackfathomDeepsSong()
				elseif ( ZoneName == SZ["The Stockade"] ) then				-- Stormwind Stockade Instance (TEST THIS!)
					FinalFantasylization_Dungeon_StormwindStockadeSong()
				elseif ( ZoneName == SZ["Gnomeregan"] ) then				-- Gnomeregan Instance
					FinalFantasylization_Dungeon_GnomereganSong()
				elseif ( ZoneName == SZ["Razorfen Kraul"] ) then			-- Razorfen Kraul Instance
					FinalFantasylization_Dungeon_RazorfenKraulSong()
				elseif ( ZoneName == SZ["Scarlet Monastery"] ) then			-- Scarlet Monastery Instance (TEST if works for all 4)
					FinalFantasylization_Dungeon_ScarletMonasterySong()
				elseif ( ZoneName == SZ["Razorfen Downs"] ) then			-- Razorfen Downs Instance
					FinalFantasylization_Dungeon_RazorfenDownsSong()
				elseif ( ZoneName == SZ["Uldaman"] ) then					-- Uldaman Instance
					FinalFantasylization_Dungeon_UldamanSong()
				elseif ( ZoneName == SZ["Zul'Farrak"] ) then				-- Zul'Farrak Instance
					FinalFantasylization_Dungeon_ZulFarrakSong()
				elseif ( ZoneName == SZ["Maraudon"] ) then					-- Maraudon Instance
					FinalFantasylization_Dungeon_MaraudonSong()
				elseif ( ZoneName == SZ["The Temple of Atal'Hakkar"] ) then	-- The Temple of Atal'Hakkar Instance
					FinalFantasylization_Dungeon_TempleofAtalHakkarSong()
				elseif ( ZoneName == SZ["Blackrock Depths"] ) then			-- Blackrock Depths Instance
					FinalFantasylization_Dungeon_BlackrockDepthsSong()


--				elseif ( ZoneName == Z["Lower Blackrock Spire"] ) then		-- Lower Blackrock Spire Instance
--					FinalFantasylization_Dungeon_LowerBlackrockSpireSong()
--				elseif ( ZoneName == Z["Upper Blackrock Spire"] ) then		-- Upper Blackrock Spire Instance
--					FinalFantasylization_Dungeon_UpperBlackrockSpireSong()


				elseif ( ZoneName == SZ["Dire Maul"] ) then					-- Dire Maul Instance
					FinalFantasylization_Dungeon_DireMaulSong()
				elseif ( ZoneName == SZ["Stratholme"] ) then				-- Stratholme Instance
					FinalFantasylization_Dungeon_StratholmeSong()
				elseif ( ZoneName == SZ["Scholomance"] ) then				-- Scholomance Instance
					FinalFantasylization_Dungeon_ScholomanceSong()

					-- Burning Crusade Dungeons
				elseif ( ZoneName == SZ["Hellfire Ramparts"] ) then			-- Hellfire Ramparts Instance
					FinalFantasylization_Dungeon_HellfireRampartsSong()
				elseif ( ZoneName == SZ["The Blood Furnace"] ) then			-- The Blood Furnace Instance
					FinalFantasylization_Dungeon_BloodFurnaceSong()
				elseif ( ZoneName == SZ["The Slave Pens"] ) then			-- The Slave Pens Instance
					FinalFantasylization_Dungeon_SlavePensSong()
				elseif ( ZoneName == SZ["The Underbog"] ) then				-- The Underbog Instance
					FinalFantasylization_Dungeon_UnderbogSong()
				elseif ( ZoneName == SZ["Mana-Tombs"] ) then				-- Mana-Tombs Instance
					FinalFantasylization_Dungeon_ManaTombsSong()
				elseif ( ZoneName == SZ["Auchenai Crypts"] ) then			-- Auchenai Crypts Instance
					FinalFantasylization_Dungeon_AuchenaiCryptsSong()
				elseif ( ZoneName == SZ["Sethekk Halls"] ) then				-- Sethekk Halls Instance
					FinalFantasylization_Dungeon_SethekkHallsSong()
				elseif ( ZoneName == SZ["The Steamvault"] ) then			-- The Steamvault Instance
					FinalFantasylization_Dungeon_SteamvaultSong()
				elseif ( ZoneName == SZ["The Shattered Halls"] ) then		-- The Shattered Halls Instance
					FinalFantasylization_Dungeon_ShatteredHallsSong()
				elseif ( ZoneName == SZ["Shadow Labyrinth"] ) then			-- Shadow Labyrinth Instance
					FinalFantasylization_Dungeon_ShadowLabyrinthSong()
				elseif ( ZoneName == SZ["Old Hillsbrad Foothills"] ) then	-- The Escape from Durnholde Keep Instance
					FinalFantasylization_Dungeon_EscapefromDurnholdeKeepSong()
				elseif ( ZoneName == SZ["The Mechanar"] ) then				-- The Mechanar Instance
					FinalFantasylization_Dungeon_MechanarSong()
				elseif ( ZoneName == SZ["The Botanica"] ) then				-- The Botanica Instance
					FinalFantasylization_Dungeon_BotanicaSong()
				elseif ( ZoneName == SZ["The Arcatraz"] ) then				-- The Arcatraz Instance
					FinalFantasylization_Dungeon_ArcatrazSong()
				elseif ( ZoneName == SZ["The Black Morass"] ) then			-- Opening the Dark Portal Instance
					FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
				elseif ( ZoneName == SZ["Magisters' Terrace"] ) then		-- Magisters' Terrace Instance
					FinalFantasylization_Dungeon_MagistersTerraceSong()
				
					-- Wrath of the Lich King Dungeons
				elseif ( ZoneName == SZ["Utgarde Keep"] ) then				-- Utgarde Keep Instance
					FinalFantasylization_Dungeon_UtgardeKeepSong()
				elseif ( ZoneName == SZ["The Nexus"] ) then					-- The Nexus Instance
					FinalFantasylization_Dungeon_TheNexusSong()
				elseif ( ZoneName == SZ["Azjol-Nerub"] ) then				-- Azjol-Nerub Instance
					FinalFantasylization_Dungeon_AzjolNerubSong()
				elseif ( ZoneName == SZ["Ahn'kahet: The Old Kingdom"] ) then	-- Ahn'kahet: The Old Kingdom Instance
					FinalFantasylization_Dungeon_AhnkahetTheOldKingdomSong()
				elseif ( ZoneName == SZ["Drak'Tharon Keep"] ) then			-- Drak'Tharon Keep Instance
					FinalFantasylization_Dungeon_DrakTharonKeepSong()
				elseif ( ZoneName == SZ["The Violet Hold"] ) then			-- The Violet Hold Instance
					FinalFantasylization_Dungeon_VioletHoldSong()
				elseif ( ZoneName == SZ["Gundrak"] ) then					-- Gundrak Instance
					FinalFantasylization_Dungeon_GundrakSong()
				elseif ( ZoneName == SZ["Halls of Stone"] ) then			-- Ulduar: Halls of Stone Instance
					FinalFantasylization_Dungeon_HallsofStoneSong()
				elseif ( ZoneName == SZ["Ulduar: Halls of Stone"] ) then	-- The Oculus Instance
					FinalFantasylization_Dungeon_TheOculusSong()
				elseif ( ZoneName == SZ["Halls of Lightning"] ) then		-- Ulduar: Halls of Lightning Instance
					FinalFantasylization_Dungeon_HallsofLightningSong()
				elseif ( ZoneName == SZ["Utgarde Pinnacle"] ) then			-- Utgarde Pinnacle Instance
					FinalFantasylization_Dungeon_UtgardePinnacleSong()
				elseif ( ZoneName == SZ["The Culling of Stratholme"] ) then	-- The Culling of Stratholme Instance
					FinalFantasylization_Dungeon_TheCullingofStratholmeSong()
				elseif ( ZoneName == SZ["Trial of the Champion"] ) then		-- Trial of the Champion Instance
					FinalFantasylization_Dungeon_TrialoftheChampionSong()
				elseif ( ZoneName == SZ["The Forge of Souls"] ) then		-- The Forge of Souls Instance
					FinalFantasylization_Dungeon_ForgeofSoulsSong()
				elseif ( ZoneName == SZ["Pit of Saron"] ) then				-- Pit of Saron Instance
					FinalFantasylization_Dungeon_PitofSaronSong()
				elseif ( ZoneName == SZ["Halls of Reflection"] ) then		-- Halls of Reflection Instance
					FinalFantasylization_Dungeon_HallsofReflectionSong()
-- More Instances go here

		-- Debug: Instance Catch-all
				else
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Instance not in FinalFantasylization")
				end

--###########################################################################################
--###########################################################################################
--##
--##			RAID EVENTS
--##
--###########################################################################################
--###########################################################################################

			elseif instanceType == "raid" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Raid == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInRaid.. ZoneName)
				FinalFantasylization_RaidSong()

--###########################################################################################
--###########################################################################################
--##
--##			BATTLEGROUNDS
--##
--###########################################################################################
--###########################################################################################			

			elseif instanceType == "pvp" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Battleground == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInBattleground.. ZoneName)
				if ( ZoneName == SZ["Alterac Valley"] ) then				-- Alterac Valley Battleground
					FinalFantasylization_AlteracValleyBG()
				elseif ( ZoneName == SZ["Arathi Basin"] ) then			-- Arathi Basin Battleground
					FinalFantasylization_ArathiBasinBG()
				elseif ( ZoneName == SZ["Eye of the Storm"] ) then		-- Eye of the Storm Battleground
					FinalFantasylization_EyeoftheStormBG()
				elseif ( ZoneName == SZ["Strand of the Ancients"] ) then	-- Strand of the Ancients Battleground
					FinalFantasylization_StrandsoftheAncientsBG()
				elseif ( ZoneName == SZ["Warsong Gulch"] ) then			-- Warsong Gulch Battleground
					FinalFantasylization_WarsongGulchBG()
				elseif ( ZoneName == SZ["Isle of Conquest"] ) then		-- Isle of Conquest Battleground
					FinalFantasylization_IsleOfConquestBG()
				else
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Battleground not in FinalFantasylization")
				end
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_InInstance = true
		else
			FinalFantasylization_InInstance = false
		end
	end
end

--###########################################################################################
--###########################################################################################
--##
--##			OTHER EVENTS
--##
--###########################################################################################
--###########################################################################################

--'==========================================================================================
--'	World Event: /DANCE
--'==========================================================================================
function FinalFantasylization_DoEmote(emote, msg)
	FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. 'FinalFantasylization_DoEmote: '..emote);

	--emote is DANCE when "/dance" is used.
	
	if (emote=="DANCE" and UnitIsDeadOrGhost("player")==nil ) and FinalFantasylizationOptions.Dance == true then
		DanceSongPlaying = true
		FinalFantasylization_IsPlaying = true
		DanceOnMount = false;
		playermodel:SetUnit("player");
		modelname = playermodel:GetModel();
		savedname = modelname;
		race = UnitRace("player");

		revmodel = strrev(modelname);
		namestart = strlen(modelname) - strfind(revmodel,'\\') +2;
		songname = strsub(modelname,namestart);

		songname = gsub(songname,'scourgefemale','undeadfemale');
		songname = gsub(songname,'scourgemale','undeadmale');
	
		if (strmatch(songname,'druidbear') ~= nil) then
			songname = 'druidbear';
		elseif (strmatch(songname,'druidcat') ~= nil or strmatch(songname,'tiger') ~= nil) then
			songname = 'druidcat';
		elseif (strmatch(songname,'druidowlbear') ~= nil) then
			songname = 'druidowlbear';
		end

		FinalFantasylization_DanceSong = gsub(songname,'.m2','');
	
		FinalFantasylization_debugMsg(FinalFantasylization_DanceSong);

		if FinalFantasylization_DanceSong == "bloodelffemale" then FinalFantasylization_BloodElfFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "bloodelfmale" then FinalFantasylization_BloodElfMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "draeneifemale" then FinalFantasylization_DraeneiFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "draeneimale" then FinalFantasylization_DraeneiMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "dwarffemale" then FinalFantasylization_DwarfFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "dwarfmale" then FinalFantasylization_DwarfMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "gnomefemale" then FinalFantasylization_GnomeFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "gnomemale" then FinalFantasylization_GnomeMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "goblinfemale" then FinalFantasylization_GoblinFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "goblinmale" then FinalFantasylization_GoblinMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "humanfemale" then FinalFantasylization_HumanFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "humanmale" then FinalFantasylization_HumanMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "nightelffemale" then FinalFantasylization_NightElfFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "nightelfmale" then FinalFantasylization_NightElfMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "orcfemale" then FinalFantasylization_OrcFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "orcmale" then FinalFantasylization_OrcMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "taurenfemale" then FinalFantasylization_TaurenFemaleDanceSong()
		elseif FinalFantasylization_DanceSong == "taurenmale" then FinalFantasylization_TaurenMaleDanceSong()
		elseif FinalFantasylization_DanceSong == "trollfemale" then FinalFantasylization_TrollFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "trollmale" then FinalFantasylization_TrollMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "undeadfemale" then FinalFantasylization_UndeadFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "undeadmale" then FinalFantasylization_UndeadMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "worgenfemale" then FinalFantasylization_WorgenFemaleDanceSong();
		elseif FinalFantasylization_DanceSong == "worgenmale" then FinalFantasylization_WorgenMaleDanceSong();
		elseif FinalFantasylization_DanceSong == "druidbear" then FinalFantasylization_DruidBearDanceSong();
		elseif FinalFantasylization_DanceSong == "druidcat" then FinalFantasylization_DruidCatDanceSong();
		elseif FinalFantasylization_DanceSong == "druidowlbear" then FinalFantasylization_DruidOwlBearDanceSong();
		elseif FinalFantasylization_DanceSong == "druidtreeform" then FinalFantasylization_DruidTreeFormDanceSong()
		elseif FinalFantasylization_DanceSong == "wolf" then FinalFantasylization_WolfDanceSong();
		else FinalFantasylization_debugMsg("Dance Music error");
		end
	end
end

function FinalFantasylization_PlayerMove()
	if (DanceSongPlaying) then
		DanceOnMount = false
		DanceSongLastMove = GetTime();
		FinalFantasylization_StopDanceSong();
	end
end

function FinalFantasylization_TurnOrActionStart()
	FinalFantasylization_RightClick = true;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_TurnOrActionStop()
	FinalFantasylization_RightClick = false;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_CameraOrSelectOrMoveStart()
	FinalFantasylization_LeftClick = true;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_CameraOrSelectOrMoveStop()
	FinalFantasylization_LeftClick = false;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_TurnLeftStart()
	FinalFantasylization_LeftTurn = true;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_TurnLeftStop()
	FinalFantasylization_LeftTurn = false;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_TurnRightStart()
	FinalFantasylization_RightTurn = true;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_TurnRightStop()
	FinalFantasylization_RightTurn = false;
	FinalFantasylization_MouseMove();
end

function FinalFantasylization_MouseMove()
	if (DanceSongPlaying) then
		if (FinalFantasylization_LeftClick and FinalFantasylization_RightClick) then
			FinalFantasylization_StopDanceSong();
		elseif (FinalFantasylization_RightClick and FinalFantasylization_RightTurn) then
			FinalFantasylization_StopDanceSong();
		elseif (FinalFantasylization_RightClick and FinalFantasylization_LeftTurn) then
			FinalFantasylization_StopDanceSong();
		elseif (FinalFantasylization_RightTurn) then
			FinalFantasylization_StopDanceSong();
		elseif (FinalFantasylization_LeftTurn) then
			FinalFantasylization_StopDanceSong();
		end
	end
end

function FinalFantasylization_JumpOrAscendStart()
	if (DanceSongPlaying) then
		DanceOnMount = false
		DanceSongLastMove = GetTime();
		FinalFantasylization_StopDanceSong();
	end
--'==========================================================================================
--'	World Event: Chocobo Kweh!!
--'==========================================================================================	
	if IsMounted("player") and FinalFantasylizationOptions.ChocoboKweh == true then
		if UnitAura("player", "Running Wild") == nil then
			local mountcount = GetNumCompanions("MOUNT")
			local mountName = nil
			i = 1
			repeat 
				local creatureID, creatureName, spellID, icon, active, mountFlags = GetCompanionInfo("MOUNT", i)
				i = i + 1
				mountName = strlower(creatureName)
			until ( active ~= nil ) 
			if string.match(mountName,'strider') then
				FinalFantasylization_ChocoboKweh();
			end
		end
	end
end

-- Stop the music
function FinalFantasylization_StopDanceSong()
	--FinalFantasylization_Debug('Stop song when playing');

	-- Only stop the music when DanceSong was playing
	if (DanceSongPlaying == true) then
		StopMusic();
		DanceSongPlaying = false;
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. 'Dance music is stopped');
		FinalFantasylization_ClearMusicState()
		FinalFantasylization_debugMsg(FFZlib.Color.Red .. "StopDanceSong...")
		FinalFantasylization_GetMusic()
	end
end

--'==========================================================================================
--'		END OF EVENTS
--'==========================================================================================

-- Initializes FinalFantasylization after all saved variables have been loaded.

-- Handles timer updates. Called once per video frame.
function FinalFantasylization_OnUpdate(self, elapsed)
	TimeSinceLastUpdate = (TimeSinceLastUpdate or 0) + (elapsed or 0); 	

	if (TimeSinceLastUpdate > FinalFantasylization_UpdateInterval) then
		FinalFantasylization_GetMusic()

		TimeSinceLastUpdate = 0;
	end
end

------------------------------------------------------------
-- FinalFantasylization methods
------------------------------------------------------------
-- Resets all FinalFantasylization options. Used to set the saved variable to a default state.
function FinalFantasylizationResetOptions()
	FinalFantasylizationOptions = {}
	FinalFantasylizationFillMissingOptions()
end

-- Adds default values for any FinalFantasylization options that are missing. This can happen after an upgrade.
function FinalFantasylizationFillMissingOptions()
	if not FinalFantasylizationOptions then FinalFantasylizationOptions = {} end
	
	if FinalFantasylizationOptions.Enabled == nil then FinalFantasylizationOptions.Enabled = true end
	if FinalFantasylizationOptions.Music == nil then FinalFantasylizationOptions.Music = true end
	if FinalFantasylizationOptions.Combat == nil then FinalFantasylizationOptions.Combat = true end
	if FinalFantasylizationOptions.Mount == nil then FinalFantasylizationOptions.Mount = true end
	if FinalFantasylizationOptions.Dungeon == nil then FinalFantasylizationOptions.Dungeon = true end
	if FinalFantasylizationOptions.Raid == nil then FinalFantasylizationOptions.Raid = true end
	if FinalFantasylizationOptions.Battleground == nil then FinalFantasylizationOptions.Battleground = true end
	if FinalFantasylizationOptions.Sleep == nil then FinalFantasylizationOptions.Sleep = true end
	if FinalFantasylizationOptions.Swim == nil then FinalFantasylizationOptions.Swim = true end
	if FinalFantasylizationOptions.Dance == nil then FinalFantasylizationOptions.Dance = true end
	if FinalFantasylizationOptions.Dead == nil then FinalFantasylizationOptions.Dead = true end
	if FinalFantasylizationOptions.Flight == nil then FinalFantasylizationOptions.Flight = true end
	if FinalFantasylizationOptions.Capital == nil then FinalFantasylizationOptions.Capital = true end
	if FinalFantasylizationOptions.Sound == nil then FinalFantasylizationOptions.Sound = true end
	if FinalFantasylizationOptions.Fanfare == nil then FinalFantasylizationOptions.Fanfare = true end
	if FinalFantasylizationOptions.ChocoboKweh == nil then FinalFantasylizationOptions.ChocoboKweh = true end
	if FinalFantasylizationOptions.LevelUp == nil then FinalFantasylizationOptions.LevelUp = true end
	if FinalFantasylizationOptions.Debug == nil then FinalFantasylizationOptions.Debug = false end
end