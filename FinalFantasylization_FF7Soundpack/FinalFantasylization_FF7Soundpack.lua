--#######################################
--##
--##	   FinalFantasylization 4.0.0
--##
--##	     Final Fantasy 7 
--##
--##	        Soundpack
--##
--##     		By: Darken5
--##
--#######################################

local flag = false -- off: used in the Code to determine which sound pack is enabled
local soundPackID = "ff7" -- Specific /ffsoundpack <command> for this soundpack, must be 1 word/acronym, and lowercase (example: "Final Fantasy Mix Project" would be "ffmix"  or similar)
_G["SoundPack" .. soundPackID  .. "_SetEnabled"] = function(enabled)
    flag = enabled
    if enabled then
		-- set all the sound effects variables for this pack (you know... the ones passed to PlaySoundFile())
		--#######################################
		--##
		--##		Song List
		--##
		--#######################################

		S = "Interface\\AddOns\\FinalFantasylization_FF7Soundpack\\Sounds\\"
		SS = "Interface\\AddOns\\FinalFantasylization_FF7Soundpack\\Dance\\"
		
		-- Capital Cities Events --
		OrgrimmarSong = "OrgrimmarSong.mp3" -- 
		SilvermoonCitySong = "SilvermoonCitySong.mp3" -- 
		ThunderBluffSong = "ThunderbluffSong.mp3" -- 
		UndercitySong = "UndercitySong.mp3" -- 

		DarnassusSong = "DarnassusSong.mp3" -- 
		ExodarSong = "ExodarSong.mp3" -- 
		IronforgeSong = "IronforgeSong.mp3" -- 
		StormwindCitySong = "StormwindCitySong.mp3" -- 

		ShattrathCitySong = "ShattrathCitySong.mp3" -- 
		DalaranSong = "DalaranSong.mp3" -- 
		EbonHoldSong = "EbonHoldSong.mp3" -- 

		-- Horde Towns Events --
		Horde1Town = "Horde1Town.mp3" -- 
		Horde2Town = "Horde2Town.mp3" -- 
		Horde3Town = "Horde3Town.mp3" -- 
		Horde4Town = "Horde4Town.mp3" -- 
		Horde5Town = "Horde5Town.mp3" --
		Horde6Town = "Horde6Town.mp3" -- 
		Horde7Town = "Horde7Town.mp3" -- 
		Horde8Town = "Horde8Town.mp3" -- 
		Horde9Town = "Horde9Town.mp3" -- 
		Horde10Town = "Horde10Town.mp3" --

		-- Alliance Towns Events --
		Alliance1Town = "Alliance1Town.mp3" -- 
		Alliance2Town = "Alliance2Town.mp3" -- 
		Alliance3Town = "Alliance3Town.mp3" -- 
		Alliance4Town = "Alliance4Town.mp3" -- 
		Alliance5Town = "Alliance5Town.mp3" -- 
		Alliance6Town = "Alliance6Town.mp3" -- 
		Alliance7Town = "Alliance7Town.mp3" -- 
		Alliance8Town = "Alliance8Town.mp3" -- 
		Alliance9Town = "Alliance9Town.mp3" -- 
		Alliance10Town = "Alliance10Town.mp3" --

		-- PvP Type Zones Events --
		FriendlySong = "FriendlySong.mp3" -- 
		ContestedSong = "ContestedSong.mp3" -- 
		HostileSong = "HostileSong.mp3" -- 

		ForestSong = "ForestSong.mp3" -- 
		LandSong = "LandSong.mp3" -- 
		PlagueSong = "PlagueSong.mp3" -- 
		SandSong = "SandSong.mp3" -- 
		SnowSong = "SnowSong.mp3" -- 
		SwampSong = "SwampSong.mp3" -- 
		BeachSong = "BeachSong.mp3" -- 
		LakeSong = "LakeSong.mp3" -- 
		WaterSong = "WaterSong.mp3" -- 
		CaveSong = "Horde4Town.mp3" --
		WarySong = "WarySong.mp3" --

		-- Battlegrounds Events --
		BattleGround1 = "BattleGround1.mp3" -- 
		BattleGround2 = "BattleGround2.mp3" -- 
		BattleGround3 = "BattleGround3.mp3" -- 
		BattleGround4 = "BattleGround4.mp3" -- 
		BattleGround5 = "BattleGround5.mp3" --

		-- Normal Mount Events --
		Mounted1Song = "Mounted1Song.mp3" -- 
		Mounted2Song = "Mounted2Song.mp3" -- 
		Mounted3Song = "Mounted3Song.mp3" -- 

		Escape1Song = "Escape1Song.mp3" -- 
		Escape2Song = "Escape2Song.mp3" -- 
		Escape3Song = "Escape3Song.mp3" -- 
		Escape4Song = "Escape4Song.mp3" -- 
	
		-- Flying Mount Events --
		Flying1Song = "Flying1Song.mp3" -- 
		Flying2Song = "Flying2Song.mp3" -- 

		-- Dead/Ghost Events --
		DeadSong = "Dead1Song.mp3" -- 
		DieSong = "DieSong.mp3" -- 

		-- Fighting Events --
		Fanfare = "Fanfare.mp3" -- Fanfare
		Fighting1Song = "Fighting1Song.mp3" -- 
		Fighting2Song = "Fighting2Song.mp3" -- 
		Fighting3Song = "Fighting3Song.mp3" -- 
		Fighting4Song = "Fighting4Song.mp3" -- 
		
		-- Dance Event --
		BloodElfFemaleDanceSong = "BloodElfFemale.mp3" -- 
		BloodElfMaleDanceSong = "BloodElfMale.mp3" -- 
		DraeneiFemaleDanceSong = "DraeneiFemale.mp3" -- 
		DraeneiMaleDanceSong = "DraeneiMale.mp3" -- 
		DwarfFemaleDanceSong = "DwarfFemale.mp3" -- 
		DwarfMaleDanceSong = "DwarfMale.mp3" -- 
		GnomeFemaleDanceSong = "GnomeFemale.mp3" -- 
		GnomeMaleDanceSong = "GnomeMale.mp3" -- 
		GoblinFemaleDanceSong = "GoblinFemale.mp3" -- 
		GoblinMaleDanceSong = "GoblinMale.mp3" -- 
		HumanFemaleDanceSong = "HumanFemale.mp3" -- 
		HumanMaleDanceSong = "HumanMale.mp3" -- 
		NightElfFemaleDanceSong = "NightElfFemale.mp3" -- 
		NightElfMaleDanceSong = "NightElfMale.mp3" -- 
		OrcFemaleDanceSong = "OrcFemale.mp3" -- 
		OrcMaleDanceSong = "OrcMale.mp3" -- 
		TaurenFemaleDanceSong = "TaurenFemale.mp3" -- 
		TaurenMaleDanceSong = "TaurenMale.mp3" -- 
		TrollFemaleDanceSong = "TrollFemale.mp3" -- 
		TrollMaleDanceSong = "TrollMale.mp3" -- 
		UndeadFemaleDanceSong = "UndeadFemale.mp3" -- 
		UndeadMaleDanceSong = "UndeadMale.mp3" -- 
		WorgenFemaleDanceSong = "WorgenFemale.mp3"
		WorgenMaleDanceSong = "WorgenMale.mp3"
		DruidBearDanceSong = "DruidBear.mp3" -- 
		DruidCatDanceSong = "DruidCat.mp3" -- 
		DruidOwlBearDanceSong = "DruidOwlBear.mp3" -- 
		DruidTreeFormDanceSong = "DruidTreeForm.mp3" -- 
		WolfDanceSong = "Wolf.mp3" -- 

		-- Misc Events --
		WorgenHowl = "Howl.mp3" -- Worgen Howl Sound
		ChocoboKweh = "kweh.mp3" -- Chocobo Kweh Sound
		SwimSong = "SwimSong.mp3" -- 
		DarkSwimSong = "DarkSwimSong.mp3"
		SleepSong = "SleepSong.mp3" -- 
		KillSound = "Kill.wav" -- Leave combat sound
		CombatSound = "Combat.wav" -- Enter combat sound
		LevelUpSong = "LevelUpSong.mp3" -- Level Up song
		
		-- Misc Songs --
		Misc1Song = "Misc1Song.mp3" -- 

		
	--#######################################
	--##
	--##	MUSIC /SOUND CALLS
	--##
	--#######################################

	--#############
	--## SOUNDS
	--#############
	function FinalFantasylization_KillSound()
		FinalFantasylization_PlayFile(S .. KillSound );
		FinalFantasylization_debugMsg("KillSound")
	end
	function FinalFantasylization_CombatSound()
		FinalFantasylization_PlayFile(S .. CombatSound );
		FinalFantasylization_debugMsg("CombatSound")
	end
	function FinalFantasylization_LevelUpSong()
		FinalFantasylization_PlayFile(S .. LevelUpSong );
		FinalFantasylization_debugMsg("LevelUpSong")
	end
	function FinalFantasylization_ChocoboKweh()
		FinalFantasylization_PlayFile( S ..  ChocoboKweh );
		FinalFantasylization_debugMsg("Chocobo Kweh!")
	end
	function FinalFantasylization_WorgenHowl()
		FinalFantasylization_PlayFile( S ..  WorgenHowl );
		FinalFantasylization_debugMsg("Worgen Howl!")
	end
	
	--########################
	--## BATTLEGROUNDS
	--########################
	function FinalFantasylization_AlteracValleyBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_ArathiBasinBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_EyeoftheStormBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_StrandsoftheAncientsBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_WarsongGulchBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_IsleOfConquestBG()
		FinalFantasylization_BattleGround();
	end
--###########################################################################################
--##   EASTERN KINGDOMS ZONES
--###########################################################################################
--'==========================================================================================
--' Eastern Kingdoms Capital: Ironforge : Alliance
--'==========================================================================================
--	Zone: Ironforge
	function FinalFantasylization_EasternKingdoms_Ironforge()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdoms_IronforgeResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdoms_IronforgeSwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	The Commons
	function FinalFantasylization_Ironforge_SubzoneTheCommons()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		Vault of Ironforge
	function FinalFantasylization_Ironforge_SubzoneVaultofIronforge()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	The Forlorn Cavern
	function FinalFantasylization_Ironforge_SubzoneTheForlornCavern()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	The Gates of Ironforge
	function FinalFantasylization_Ironforge_SubzoneTheGatesofIronforge()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	The Great Forge
	function FinalFantasylization_Ironforge_SubzoneTheGreatForge()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		The High Seat
	function FinalFantasylization_Ironforge_SubzoneTheHighSeat()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	Hall of Explorers
	function FinalFantasylization_Ironforge_SubzoneHallofExplorers()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		The Library
	function FinalFantasylization_Ironforge_SubzoneTheLibrary()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	The Military Ward
	function FinalFantasylization_Ironforge_SubzoneTheMilitaryWard()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		Hall of Arms
	function FinalFantasylization_Ironforge_SubzoneHallofArms()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	The Mystic Ward
	function FinalFantasylization_Ironforge_SubzoneTheMysticWard()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		Hall of Mysteries
	function FinalFantasylization_Ironforge_SubzoneHallofMysteries()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--	Tinker Town
	function FinalFantasylization_Ironforge_SubzoneTinkerTown()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		Deeprun Tram
	function FinalFantasylization_Ironforge_SubzoneDeeprunTram()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--'==========================================================================================
--' Eastern Kingdoms Capital: Silvermoon City : Horde
--'==========================================================================================
--	Zone: SilvermoonCity
	function FinalFantasylization_EasternKingdoms_SilvermoonCity()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdoms_SilvermoonCityResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdoms_SilvermoonCitySwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	The Bazaar
	function FinalFantasylization_SilvermoonCity_SubzoneTheBazaar()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--		The Sanctum
	function FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Court of the Sun
	function FinalFantasylization_SilvermoonCity_SubzoneCourtoftheSun()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--		Sunfury Spire
	function FinalFantasylization_SilvermoonCity_SubzoneSunfurySpire()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--			Inner Sanctum
	function FinalFantasylization_SilvermoonCity_SubzoneInnerSanctum()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Farstriders' Square
	function FinalFantasylization_SilvermoonCity_SubzoneFarstridersSquare()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Murder Row
	function FinalFantasylization_SilvermoonCity_SubzoneMurderRow()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--		The Sanctum
	function FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	The Royal Exchange
	function FinalFantasylization_SilvermoonCity_SubzoneTheRoyalExchange()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	The Shepherd's Gate
	function FinalFantasylization_SilvermoonCity_SubzoneTheShepherdsGate()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Walk of Elders
	function FinalFantasylization_SilvermoonCity_SubzoneWalkofElders()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--'==========================================================================================
--' Eastern Kingdoms Capital: Stormwind City : Alliance
--'==========================================================================================
--	Zone: Stormwind City
	function FinalFantasylization_EasternKingdoms_StormwindCity()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdoms_StormwindCityResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdoms_StormwindCitySwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	The Canals
	function FinalFantasylization_StormwindCity_SubzoneTheCanals()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Cathedral Square
	function FinalFantasylization_StormwindCity_SubzoneCathedralSquare()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Cathedral of Light
	function FinalFantasylization_StormwindCity_SubzoneCathedralofLight()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Dwarven District
	function FinalFantasylization_StormwindCity_SubzoneDwarvenDistrict()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Cut-Throat Alley
	function FinalFantasylization_StormwindCity_SubzoneCutThroatAlley()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Mage Quarter
	function FinalFantasylization_StormwindCity_SubzoneMageQuarter()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		The Slaughtered Lamb
	function FinalFantasylization_StormwindCity_SubzoneTheSlaughteredLamb()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Wizard's Sanctum
	function FinalFantasylization_StormwindCity_SubzoneWizardsSanctum()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	The Old Barracks
	function FinalFantasylization_StormwindCity_SubzoneTheOldBarracks()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Old Town
	function FinalFantasylization_StormwindCity_SubzoneOldTown()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Champions' Hall
	function FinalFantasylization_StormwindCity_SubzoneChampionsHall()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Command Center
	function FinalFantasylization_StormwindCity_SubzoneCommandCenter()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		SI:7
	function FinalFantasylization_StormwindCity_SubzoneSI7()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Stormwind City Cemetery
	function FinalFantasylization_StormwindCity_SubzoneStormwindCityCemetery()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Stormwind City Outskirts
	function FinalFantasylization_StormwindCity_SubzoneStormwindCityOutskirts()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Olivia's Pond
	function FinalFantasylization_StormwindCity_SubzoneOliviasPond()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		The Wollerton Stead
	function FinalFantasylization_StormwindCity_SubzoneTheWollertonStead()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		The Eastern Earthshrine
	function FinalFantasylization_StormwindCity_SubzoneTheEasternEarthshrine()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Stormwind Harbor
	function FinalFantasylization_StormwindCity_SubzoneStormwindHarbor()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Stormwind Keep
	function FinalFantasylization_StormwindCity_SubzoneStormwindKeep()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Petitioner's Chamber
	function FinalFantasylization_StormwindCity_SubzonePetitionersChamber()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Royal Gallery
	function FinalFantasylization_StormwindCity_SubzoneRoyalGallery()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Royal Library
	function FinalFantasylization_StormwindCity_SubzoneRoyalLibrary()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		War Room
	function FinalFantasylization_StormwindCity_SubzoneWarRoom()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Stormwind Lake
	function FinalFantasylization_StormwindCity_SubzoneStormwindLake()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Trade District
	function FinalFantasylization_StormwindCity_SubzoneTradeDistrict()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--		Gryphon Roost
	function FinalFantasylization_StormwindCity_SubzoneGryphonRoost()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--	Valley of Heroes
	function FinalFantasylization_StormwindCity_SubzoneValleyofHeroes()
		FinalFantasylization_PlayMusic(S .. StormwindCitySong);
		FinalFantasylization_debugMsg("StormwindCitySong")
	end
--'==========================================================================================
--' Eastern Kingdoms Capital: Undercity
--'==========================================================================================
--	Zone: Undercity
	function FinalFantasylization_EasternKingdoms_Undercity()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdoms_UndercityResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdoms_UndercitySwimming()
		FinalFantasylization_Swimming(2)
	end
--	SUBZONES:
--	Apothecarium
	function FinalFantasylization_Undercity_SubzoneTheApothecarium()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Canals
	function FinalFantasylization_Undercity_SubzoneCanals()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Magic Quarter
	function FinalFantasylization_Undercity_SubzoneMagicQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Rogues' Quarter
	function FinalFantasylization_Undercity_SubzoneRoguesQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Royal Quarter
	function FinalFantasylization_Undercity_SubzoneRoyalQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Ruins of Lordaeron
	function FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Sewers
	function FinalFantasylization_Undercity_SubzoneSewers()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Trade Quarter
	function FinalFantasylization_Undercity_SubzoneTradeQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	War Quarter
	function FinalFantasylization_Undercity_SubzoneWarQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end

--'==========================================================================================
--' Eastern Kingdoms Zone: Abyssal Depths
--'==========================================================================================
--	Zone: Abyssal Depths
	function FinalFantasylization_EasternKingdomsAbyssalDepths()
		local x = math.random(1, 4);
			if x == 1 then
				FinalFantasylization_LakeSong();
			elseif x == 2 then
				FinalFantasylization_WaterSong();
			elseif x == 3 then
				FinalFantasylization_Swimming(0);
			else
				FinalFantasylization_Swimming(1);
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsAbyssalDepthsResting()
		FinalFantasylization_Sleeping()
	end
--	TOWNS:
--	Alliance:
--		Darkbreak Cove
	function FinalFantasylization_AllianceTownDarkbreakCove()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Tenebrous Cavern
	function FinalFantasylization_HordeTownTenebrousCavern()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Abandoned Reef
	function FinalFantasylization_SubzoneAbandonedReef()

	end
--	Abyssal Breach
	function FinalFantasylization_SubzoneAbyssalBreach()

	end
--		The Abyssal Maw
	function FinalFantasylization_SubzoneTheAbyssalMaw()

	end
--	The Cerebrillum
	function FinalFantasylization_SubzoneTheCerebrillum()

	end
--	Coldlight Chasm
	function FinalFantasylization_SubzoneColdlightChasm()
	
	end
--	Deepfin Ridge
	function FinalFantasylization_SubzoneDeepfinRidge()
	
	end
--	Fireplume Trench
	function FinalFantasylization_SubzoneFireplumeTrench()
	
	end
--	Korthun's End
	function FinalFantasylization_SubzoneKorthunsEnd()
	
	end
--	L'ghorek
	function FinalFantasylization_SubzoneLghorek()
	
	end
--	The Lightless Reaches
	function FinalFantasylization_SubzoneTheLightlessReaches()
	
	end
--	Nightmare Depths
	function FinalFantasylization_SubzoneNightmareDepths()
	
	end
--	The Overlook
	function FinalFantasylization_SubzoneTheOverlook()
	
	end
--	Promontory Point
	function FinalFantasylization_SubzonePromontoryPoint()
	
	end
--	The Scalding Chasm
	function FinalFantasylization_SubzoneTheScaldingChasm()
	
	end
--	Seabrush
	function FinalFantasylization_SubzoneSeabrush()
	
	end
--	Sira'kess Front
	function FinalFantasylization_SubzoneSirakessFront()
	
	end
--	Thermal Vents
	function FinalFantasylization_SubzoneThermalVents()
	
	end
--	Underlight Canyon
	function FinalFantasylization_SubzoneUnderlightCanyon()
	
	end
--	The Undershell
	function FinalFantasylization_SubzoneTheUndershell()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Arathi Highlands
--'==========================================================================================
--	Zone: Arathi Highlands
	function FinalFantasylization_EasternKingdomsArathiHighlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsArathiHighlandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsArathiHighlandsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance: Refuge Pointe
	function FinalFantasylization_AllianceTownRefugePointe()
		FinalFantasylization_AllianceTowns();
	end
--	Horde: Hammerfall
	function FinalFantasylization_HordeTownHammerfall()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Blackwater Shipwrecks
	function FinalFantasylization_SubzoneBlackwaterShipwrecks()
	
	end
--	Boulder'gor
	function FinalFantasylization_SubzoneBouldergor()
	
	end
--		Boulderfist Outpost
	function FinalFantasylization_SubzoneBoulderfistOutpost()
	
	end
--	Boulderfist Hall
	function FinalFantasylization_SubzoneBoulderfistHall()
	
	end
--	Circle of East Binding
	function FinalFantasylization_SubzoneCircleofEastBinding()
	
	end
--	Circle of Inner Binding
	function FinalFantasylization_SubzoneCircleofInnerBinding()
	
	end
--	Circle of Outer Binding
	function FinalFantasylization_SubzoneCircleofOuterBinding()
	
	end
--	Circle of West Binding
	function FinalFantasylization_SubzoneCircleofWestBinding()
	
	end
--	Dabyrie's Farmstead
	function FinalFantasylization_SubzoneDabyriesFarmstead()
	
	end
--	The Drowned Reef
	function FinalFantasylization_SubzoneTheDrownedReef()
	
	end
--	Drywhisker Gorge
	function FinalFantasylization_SubzoneDrywhiskerGorge()
	
	end
--	Faldir's Cove
	function FinalFantasylization_SubzoneFaldirsCove()
	
	end
--	The Forbidding Sea
	function FinalFantasylization_SubzoneTheForbiddingSea()
	
	end
--	Galen's Fall
	function FinalFantasylization_SubzoneGalensFall()
	
	end
--	Go'Shek Farm
	function FinalFantasylization_SubzoneGoShekFarm()
	
	end
--	Northfold Manor
	function FinalFantasylization_SubzoneNorthfoldManor()
	
	end
--	O'Breen's Camp
	function FinalFantasylization_SubzoneOBreensCamp()
	
	end
--	Stromgarde Keep
	function FinalFantasylization_SubzoneStromgardeKeep()
	
	end
--		Crypt
	function FinalFantasylization_SubzoneCrypt()
	
	end
--		The Sanctum
	function FinalFantasylization_SubzoneTheSanctum()
	
	end
--		The Tower of Arathor
	function FinalFantasylization_SubzoneTheTowerofArathor()
	
	end
--	Thandol Span
	function FinalFantasylization_SubzoneThandolSpan()
	
	end
--	Thoradin's Wall
	function FinalFantasylization_SubzoneThoradinsWall()
	
	end
--	Witherbark Caverns
	function FinalFantasylization_SubzoneWitherbarkCaverns()
		FinalFantasylization_CaveSong();
	end
--	Witherbark Village
	function FinalFantasylization_SubzoneWitherbarkVillage()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Badlands
--'==========================================================================================
--	Zone: Badlands
	function FinalFantasylization_EasternKingdomsBadlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsBadlandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsBadlandsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Dragon's Mouth
	function FinalFantasylization_AllianceTownDragonsMouth()
		FinalFantasylization_AllianceTowns();
	end
--		Dustwind Dig
	function FinalFantasylization_AllianceTownDustwindDig()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Bloodwatcher Point
	function FinalFantasylization_HordeTownBloodwatcherPoint()
		FinalFantasylization_HordeTowns();
	end
--		New Kargath
	function FinalFantasylization_HordeTownNewKargath()
		FinalFantasylization_HordeTowns();
	end
--	Neutral:
--		Fuselight
	function FinalFantasylization_NeutralTownFuselight()
		FinalFantasylization_NeutralTowns();
	end
--		Fuselight-by-the-Sea
	function FinalFantasylization_NeutralTownFuselightbytheSea()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Agmond's End
	function FinalFantasylization_SubzoneAgmondsEnd()
	
	end
--	Angor Fortress
	function FinalFantasylization_SubzoneAngorFortress()
	
	end
--	Apocryphan's Rest
	function FinalFantasylization_SubzoneApocryphansRest()
	
	end
--	Camp Boff
	function FinalFantasylization_SubzoneCampBoff()
	
	end
--	Camp Cagg
	function FinalFantasylization_SubzoneCampCagg()
	
	end
--	Camp Kosh
	function FinalFantasylization_SubzoneCampKosh()
	
	end
--	Camp Wurg
	function FinalFantasylization_SubzoneCampWurg()
	
	end
--	Dustbelch Grotto
	function FinalFantasylization_SubzoneDustbelchGrotto()
	
	end
--	The Dustbowl
	function FinalFantasylization_SubzoneTheDustbowl()
	
	end
--	Dustwind Gulch
	function FinalFantasylization_SubzoneDustwindGulch()
	
	end
--	Hammertoe's Digsite
	function FinalFantasylization_SubzoneHammertoesDigsite()
	
	end
--	The Hidden Clutch
	function FinalFantasylization_SubzoneTheHiddenClutch()
	
	end
--	Lethlor Ravine
	function FinalFantasylization_SubzoneLethlorRavine()
	
	end
--	The Maker's Terrace
	function FinalFantasylization_SubzoneTheMakersTerrace()
	
	end
--	Mirage Flats
	function FinalFantasylization_SubzoneMirageFlats()
	
	end
--	Rhea's Camp
	function FinalFantasylization_SubzoneRheasCamp()
	
	end
--	Ruins of Kargath
	function FinalFantasylization_SubzoneRuinsofKargath()
	
	end
--	Scar of the Worldbreaker
	function FinalFantasylization_SubzoneScaroftheWorldbreaker()
	
	end
--	Tomb of the Watchers
	function FinalFantasylization_SubzoneTomboftheWatchers()
	
	end
--	Uldaman
	function FinalFantasylization_SubzoneUldaman()
	
	end
--		Uldaman Entrance
	function FinalFantasylization_SubzoneUldamanEntrance()
	
	end
--	Valley of Fangs
	function FinalFantasylization_SubzoneValleyofFangs()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Blasted Lands
--'==========================================================================================
--	Zone: Blasted Lands
	function FinalFantasylization_EasternKingdomsBlastedLands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsBlastedLandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsBlastedLandsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance: 
--		Nethergarde Keep
	function FinalFantasylization_AllianceTownNethergardeKeep()
		FinalFantasylization_AllianceTowns();
	end
--		Surwich
	function FinalFantasylization_AllianceTownSurwich()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Dreadmaul Hold
	function FinalFantasylization_HordeTownDreadmaulHold()
		FinalFantasylization_HordeTowns();
	end
--		Sunveil Excursion
	function FinalFantasylization_HordeTownSunveilExcursion()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Altar of Storms
	function FinalFantasylization_SubzoneAltarofStorms()
	
	end
--	The Dark Portal
	function FinalFantasylization_SubzoneTheDarkPortal()
	
	end
--	Dreadmaul Post
	function FinalFantasylization_SubzoneDreadmaulPost()
	
	end
--	Garrison Armory
	function FinalFantasylization_SubzoneGarrisonArmory()
	
	end
--	The Red Reaches
	function FinalFantasylization_SubzoneTheRedReaches()
	
	end
--		Bloodwash Fighting Pits
	function FinalFantasylization_SubzoneBloodwashFightingPits()
	
	end
--		Bloodwash Shrine
	function FinalFantasylization_SubzoneBloodwashShrine()
	
	end
--		Rockpool Village
	function FinalFantasylization_SubzoneRockpoolVillage()
	
	end
--		Shattershore
	function FinalFantasylization_SubzoneShattershore()
	
	end
--	Rise of the Defiler
	function FinalFantasylization_SubzoneRiseoftheDefiler()
	
	end
--	Serpent's Coil
	function FinalFantasylization_SubzoneSerpentsCoil()
	
	end
--	The Tainted Forest
	function FinalFantasylization_SubzoneTheTaintedForest()
	
	end
--		Maldraz
	function FinalFantasylization_SubzoneMaldraz()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Burning Steppes
--'==========================================================================================
--	Zone: Burning Steppes
	function FinalFantasylization_EasternKingdomsBurningSteppes()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsBurningSteppesResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsBurningSteppesSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Morgan's Vigil
	function FinalFantasylization_AllianceTownMorgansVigil()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Flame Crest
	function FinalFantasylization_HordeTownFlameCrest()
		FinalFantasylization_HordeTowns();
	end
--	Neutral:
--		Chiselgrip
	function FinalFantasylization_NeutralTownChiselgrip()
		FinalFantasylization_NeutralTowns();
	end
--		Flamestar Post
	function FinalFantasylization_NeutralTownFlamestarPost()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Altar of Storms
	function FinalFantasylization_SubzoneAltarofStorms()
	
	end
--	Blackrock Mountain
	function FinalFantasylization_SubzoneBlackrockMountain()
	
	end
--	Blackrock Pass
	function FinalFantasylization_SubzoneBlackrockPass()
	
	end
--	Blackrock Stronghold
	function FinalFantasylization_SubzoneBlackrockStronghold()
	
	end
--	Black Tooth Hovel
	function FinalFantasylization_SubzoneBlackToothHovel()
	
	end
--		The Pillar of Ash
	function FinalFantasylization_SubzoneThePillarofAsh()
	
	end
--	Dreadmaul Rock
	function FinalFantasylization_SubzoneDreadmaulRock()
	
	end
--		Firegut Furnace
	function FinalFantasylization_SubzoneFiregutFurnace()
	
	end
--		The Skull Warren
	function FinalFantasylization_SubzoneTheSkullWarren()
	
	end
--	Fields of Honor
	function FinalFantasylization_SubzoneFieldsofHonor()
	
	end
--	Redridge Highway
	function FinalFantasylization_SubzoneRedridgeHighway()
	
	end
--	Ruins of Thaurissan
	function FinalFantasylization_SubzoneRuinsofThaurissan()
	
	end
--	Slither Rock
	function FinalFantasylization_SubzoneSlitherRock()

	end
--	Terror Wing Path
	function FinalFantasylization_SubzoneTerrorWingPath()

	end
--	Valley of Ashes
	function FinalFantasylization_SubzoneValleyofAshes()

	end
--	The Whelping Downs
	function FinalFantasylization_SubzoneTheWhelpingDowns()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Deeprun Tram : Alliance
--'==========================================================================================
--	Zone: Deeprun Tram
	function FinalFantasylization_EasternKingdoms_DeeprunTram()
		FinalFantasylization_FriendlySong();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Cape of Stranglethorn
--'==========================================================================================
--	Zone: Cape of Stranglethorn
	function FinalFantasylization_EasternKingdomsCapeofStranglethorn()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsCapeofStranglethornResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsCapeofStranglethornSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Explorers' League Digsite
	function FinalFantasylization_AllianceTownExplorersLeagueDigsite()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Hardwrench Hideaway
	function FinalFantasylization_HordeTownHardwrenchHideaway()
		FinalFantasylization_HordeTowns();
	end
--	Neutral:
--		Booty Bay
	function FinalFantasylization_NeutralTownBootyBay()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Blackwater Cove
	function FinalFantasylization_SubzoneBlackwaterCove()
	
	end
--	Brashtide Attack Fleet
	function FinalFantasylization_SubzoneBrashtideAttackFleet()
	
	end
--	The Crimson Veil
	function FinalFantasylization_SubzoneTheCrimsonVeil()
	
	end
--	The Crystal Shore
	function FinalFantasylization_SubzoneTheCrystalShore()
	
	end
--	Crystalvein Mine
	function FinalFantasylization_SubzoneCrystalveinMine()
	
	end
--	The Damsel's Luck
	function FinalFantasylization_SubzoneTheDamselsLuck()
	
	end
--	Gurubashi Arena
	function FinalFantasylization_SubzoneGurubashiArena()
	
	end
--		Battle Ring
	function FinalFantasylization_SubzoneBattleRing()
	
	end
--	Jaguero Isle
	function FinalFantasylization_SubzoneJagueroIsle()
	
	end
--	Janeiro's Point
	function FinalFantasylization_SubzoneJaneirosPoint()
	
	end
--	Mistvale Valley
	function FinalFantasylization_SubzoneMistvaleValley()
	
	end
--	Nek'mani Wellspring
	function FinalFantasylization_SubzoneNekmaniWellspring()
	
	end
--	The Riptide
	function FinalFantasylization_SubzoneTheRiptide()
	
	end
--	Ruins of Aboraz
	function FinalFantasylization_SubzoneRuinsofAboraz()
	
	end
--	Ruins of Jubuwal
	function FinalFantasylization_SubzoneRuinsofJubuwal()
	
	end
--	Southern Savage Coast
	function FinalFantasylization_SubzoneSouthernSavageCoast()
	
	end
--	Spirit Den
	function FinalFantasylization_SubzoneSpiritDen()
	
	end
--	Wild Shore
	function FinalFantasylization_SubzoneWildShore()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Dun Morogh : Alliance
--'==========================================================================================
--	Zone: Dun Morogh
	function FinalFantasylization_EasternKingdomsDunMorogh()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SnowSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsDunMoroghResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsDunMoroghSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Dwarf Start:
--		Anvilmar
	function FinalFantasylization_Dwarf_Start_Anvilmar()
		FinalFantasylization_AllianceTowns();
	end
--		Coldridge Pass
	function FinalFantasylization_Dwarf_Start_ColdridgePass()
		FinalFantasylization_SnowSong();
	end
--		Coldridge Valley
	function FinalFantasylization_Dwarf_Start_ColdridgeValley()
		FinalFantasylization_SnowSong();
	end
--		Whitebeard's Encampment
	function FinalFantasylization_Dwarf_Start_WhitebeardsEncampment()
		FinalFantasylization_SnowSong();
	end
--	Gnome Start:
--		Gnomeregan
	function FinalFantasylization_Gnome_Start_Gnomeregan()

	end
--			Loading Room
	function FinalFantasylization_Gnome_Start_LoadingRoom()

	end
--			The Old Dormitory
	function FinalFantasylization_Gnome_Start_TheOldDormitory()

	end
--			Train Depot
	function FinalFantasylization_Gnome_Start_TrainDepot()

	end
--			Workshop Entrance
	function FinalFantasylization_Gnome_Start_WorkshopEntrance()

	end
--		New Tinkertown
	function FinalFantasylization_Gnome_Start_NewTinkertown()
		FinalFantasylization_AllianceTowns();
	end
--		Crushcog's Arsenal
	function FinalFantasylization_Gnome_Start_CrushcogsArsenal()

	end
--		Frostmane Hold
	function FinalFantasylization_Gnome_Start_FrostmaneHold()

	end
--		Iceflow Lake
	function FinalFantasylization_Gnome_Start_IceflowLake()
		FinalFantasylization_SnowSong();
	end
--		The Toxic Airfield
	function FinalFantasylization_Gnome_Start_TheToxicAirfield()
		FinalFantasylization_PlagueSong();
	end
--	Alliance:
--		Brewnall Village
	function FinalFantasylization_AllianceTownBrewnallVillage()
		FinalFantasylization_AllianceTowns();
	end
--		Gates of Ironforge
	function FinalFantasylization_AllianceTownGatesofIronforge()
		FinalFantasylization_PlayMusic(S .. IronforgeSong);
		FinalFantasylization_debugMsg("IronforgeSong")
	end
--		Gol'Bolar Quarry
	function FinalFantasylization_AllianceTownGolBolarQuarry()
		FinalFantasylization_AllianceTowns();
	end
--			Gol'Bolar Quarry Mine
	function FinalFantasylization_AllianceTownGolBolarQuarryMine()

	end
--		Ironforge Airfield
	function FinalFantasylization_AllianceTownIronforgeAirfield()

	end
--		Kharanos
	function FinalFantasylization_AllianceTownKharanos()
		FinalFantasylization_AllianceTowns();
	end
--			Thunderbrew Distillery
	function FinalFantasylization_AllianceTownThunderbrewDistillery()
		FinalFantasylization_AllianceTowns();
	end
--		Steelgrill's Depot
	function FinalFantasylization_AllianceTownSteelgrillsDepot()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Amberstill Ranch
	function FinalFantasylization_SubzoneAmberstillRanch()

	end
--	Bahrum's Post
	function FinalFantasylization_SubzoneBahrumsPost()

	end
--	Chill Breeze Valley
	function FinalFantasylization_SubzoneChillBreezeValley()

	end
--	Frostmane Front
	function FinalFantasylization_SubzoneFrostmaneFront()

	end
--	Frostmane Retreat
	function FinalFantasylization_SubzoneFrostmaneRetreat()

	end
--	The Grizzled Den
	function FinalFantasylization_SubzoneTheGrizzledDen()

	end
--	Helm's Bed Lake
	function FinalFantasylization_SubzoneHelmsBedLake()

	end
--	Ironband's Compound
	function FinalFantasylization_SubzoneIronbandsCompound()

	end
--	Misty Pine Refuge
	function FinalFantasylization_SubzoneMistyPineRefuge()

	end
--	North Gate Pass
	function FinalFantasylization_SubzoneNorthGatePass()

	end
--		North Gate Outpost
	function FinalFantasylization_SubzoneNorthGateOutpost()

	end
--	Shimmer Ridge
	function FinalFantasylization_SubzoneShimmerRidge()

	end
--	South Gate Pass
	function FinalFantasylization_SubzoneSouthGatePass()

	end
--		South Gate Outpost
	function FinalFantasylization_SubzoneSouthGateOutpost()

	end
--	The Tundrid Hills
	function FinalFantasylization_SubzoneTheTundridHills()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Duskwood
--'==========================================================================================
--	Zone: Duskwood
	function FinalFantasylization_EasternKingdomsDuskwood()

	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsDuskwoodResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsDuskwoodSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--	Darkshire
	function FinalFantasylization_AllianceTownDarkshire()
		FinalFantasylization_AllianceTowns();
	end
--		Darkshire Town Hall
	function FinalFantasylization_AllianceTownDarkshireTownHall()
		FinalFantasylization_AllianceTowns();
	end
--		Scarlet Raven Tavern
	function FinalFantasylization_AllianceTownScarletRavenTavern()
		FinalFantasylization_AllianceTowns();
	end
--	Raven Hill
	function FinalFantasylization_AllianceTownRavenHill()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Addle's Stead
	function FinalFantasylization_SubzoneAddlesStead()

	end
--	Beggar's Haunt
	function FinalFantasylization_SubzoneBeggarsHaunt()

	end
--	Brightwood Grove
	function FinalFantasylization_SubzoneBrightwoodGrove()

	end
--	The Darkened Bank
	function FinalFantasylization_SubzoneTheDarkenedBank()

	end
--	Forlorn Rowe
	function FinalFantasylization_SubzoneForlornRowe()

	end
--	The Hushed Bank
	function FinalFantasylization_SubzoneTheHushedBank()

	end
--	Manor Mistmantle
	function FinalFantasylization_SubzoneManorMistmantle()

	end
--	Raven Hill Cemetery
	function FinalFantasylization_SubzoneRavenHillCemetery()

	end
--		Dawning Woods Catacombs
	function FinalFantasylization_SubzoneDawningWoodsCatacombs()

	end
--	Roland's Doom
	function FinalFantasylization_SubzoneRolandsDoom()

	end
--	The Rotting Orchard
	function FinalFantasylization_SubzoneTheRottingOrchard()

	end
--	The Tranquil Gardens Cemetery
	function FinalFantasylization_SubzoneTheTranquilGardensCemetery()

	end
--	Twilight Grove
	function FinalFantasylization_SubzoneTwilightGrove()

	end
--	Vul'Gol Ogre Mound
	function FinalFantasylization_SubzoneVulGolOgreMound()

	end
--	The Yorgen Farmstead
	function FinalFantasylization_SubzoneTheYorgenFarmstead()	

	end


--'==========================================================================================
--' Eastern Kingdoms Zone: Elwynn Forest - Alliance
--'==========================================================================================
--	Zone: Elwynn Forest			
	function FinalFantasylization_EasternKingdomsElwynnForest()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsElwynnForestResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsElwynnForestSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Human Start:
--		Northshire Abbey			
	function FinalFantasylization_Human_Start_NorthshireAbbey()
		FinalFantasylization_AllianceTowns();
	end
--			Hall of Arms			
	function FinalFantasylization_Human_Start_HallofArms()
		FinalFantasylization_AllianceTowns();
	end
--			Library Wing			
	function FinalFantasylization_Human_Start_LibraryWing()
		FinalFantasylization_AllianceTowns();
	end
--			Main Hall			
	function FinalFantasylization_Human_Start_MainHall()
		FinalFantasylization_AllianceTowns();
	end
--		Echo Ridge Mine			
	function FinalFantasylization_Human_Start_EchoRidgeMine()
		FinalFantasylization_ForestSong();
	end
--		Northshire River			
	function FinalFantasylization_Human_Start_NorthshireRiver()
		FinalFantasylization_LakeSong();
	end
--		Northshire Valley			
	function FinalFantasylization_Human_Start_NorthshireValley()
		FinalFantasylization_ForestSong();
	end
--		Northshire Vineyards			
	function FinalFantasylization_Human_Start_NorthshireVineyards()
		FinalFantasylization_HostileSong();
	end
--	Alliance: 
--		Eastvale Logging Camp
	function FinalFantasylization_AllianceTownEastvaleLoggingCamp()
		FinalFantasylization_AllianceTowns();
	end
--		Goldshire
	function FinalFantasylization_AllianceTownGoldshire()
		FinalFantasylization_AllianceTowns();
	end
--			Lion's Pride Inn	(Inn)
	function FinalFantasylization_AllianceInnLionsPrideInn()
		FinalFantasylization_Sleeping()
	end
--	SUBZONES:
--		Brackwell Pumpkin Patch
	function FinalFantasylization_SubzoneBrackwellPumpkinPatch()
		FinalFantasylization_AllianceTowns();
	end
--		Crystal Lake
	function FinalFantasylization_SubzoneCrystalLake()
		FinalFantasylization_LakeSong();
	end
--		Fargodeep Mine
	function FinalFantasylization_SubzoneFargodeepMine()
		FinalFantasylization_CaveSong();
	end
--		Forest's Edge
	function FinalFantasylization_SubzoneForestsEdge()
	local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		Goldtooth's Den
	function FinalFantasylization_SubzoneGoldtoothsDen()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		Hogger Hill
	function FinalFantasylization_SubzoneHoggerHill()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		Jasperlode Mine
	function FinalFantasylization_SubzoneJasperlodeMine()
		FinalFantasylization_CaveSong();
	end
--		Jerod's Landing
	function FinalFantasylization_SubzoneJerodsLanding()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		The Maclure Vineyards
	function FinalFantasylization_SubzoneTheMaclureVineyards()
		FinalFantasylization_AllianceTowns();
	end
--		Mirror Lake
	function FinalFantasylization_SubzoneMirrorLake()
		FinalFantasylization_LakeSong();
	end
--		Mirror Lake Orchard
	function FinalFantasylization_SubzoneMirrorLakeOrchard()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		Ridgepoint Tower
	function FinalFantasylization_SubzoneRidgepointTower()
		FinalFantasylization_AllianceTowns();
	end
--		Stone Cairn Lake
	function FinalFantasylization_SubzoneStoneCairnLake()
		FinalFantasylization_LakeSong();
	end
--			Heroes' Vigil
	function FinalFantasylization_SubzoneHeroesVigil()

	end
--		Thunder Falls
	function FinalFantasylization_SubzoneThunderFalls()

	end
--		The Stonefield Farm
	function FinalFantasylization_SubzoneTheStonefieldFarm()
		FinalFantasylization_AllianceTowns();
	end
--		Tower of Azora
	function FinalFantasylization_SubzoneTowerofAzora()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--		Westbrook Garrison
	function FinalFantasylization_SubzoneWestbrookGarrison()

	end

--'==========================================================================================
--' Eastern Kingdoms Zones: Eversong Woods : Horde
--'==========================================================================================
--	Zone: Eversong Woods
	function FinalFantasylization_EasternKingdomsEversongWoods()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsEversongWoodsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsEversongWoodsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Blood Elf Start:
--		Sunstrider Isle
	function FinalFantasylization_BloodElf_Start_SunstriderIsle()
		FinalFantasylization_FriendlySong();
	end
--			Falthrien Academy
	function FinalFantasylization_BloodElf_Start_FalthrienAcademy()
		FinalFantasylization_PlayMusic(S ..Horde7Town);
		FinalFantasylization_debugMsg("Horde7Town")
	end
--			Shrine of Dath'Remar
	function FinalFantasylization_BloodElf_Start_ShrineofDathRemar()
		FinalFantasylization_PlayMusic(S ..DalaranSong);
		FinalFantasylization_debugMsg("DalaranSong, Thought it fit.")
	end
--			The Sunspire
	function FinalFantasylization_BloodElf_Start_TheSunspire()
		FinalFantasylization_HordeTowns();
	end
--	Horde:
--		Fairbreeze Village
	function FinalFantasylization_HordeTownFairbreezeVillage()
		FinalFantasylization_HordeTowns();
	end
--		Falconwing Square
	function FinalFantasylization_HordeTownFalconwingSquare()
		FinalFantasylization_HordeTowns();
	end
--		Farstrider Retreat
	function FinalFantasylization_HordeTownFarstriderRetreat()
		FinalFantasylization_HordeTowns();
	end
--		Saltheril's Haven
	function FinalFantasylization_HordeTownSaltherilsHaven()
		FinalFantasylization_HordeTowns();
	end
--		Thuron's Livery
	function FinalFantasylization_HordeTownThuronsLivery()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Azurebreeze Coast
	function FinalFantasylization_SubzoneAzurebreezeCoast()
		FinalFantasylization_WaterSong();
	end
--	*The Dead Scar
	function FinalFantasylization_SubzoneEversongWoodsTheDeadScar()
		FinalFantasylization_SwampSong();
	end
--	Duskwither Grounds
	function FinalFantasylization_SubzoneDuskwitherGrounds()
		FinalFantasylization_ForestSong();
	end
--	Duskwither Spire
	function FinalFantasylization_SubzoneDuskwitherSpire()
		FinalFantasylization_ForestSong();
	end
--	East Sanctum
	function FinalFantasylization_SubzoneEastSanctum()
		FinalFantasylization_SwampSong();
	end
--	Elrendar Falls
	function FinalFantasylization_SubzoneElrendarFalls()
		FinalFantasylization_LakeSong();
	end
--	Golden Strand
	function FinalFantasylization_SubzoneGoldenStrand()
		FinalFantasylization_WaterSong();
	end
--	Goldenbough Pass
	function FinalFantasylization_SubzoneGoldenboughPass()
		FinalFantasylization_ForestSong();
	end
--	Huntress of the Sun
	function FinalFantasylization_SubzoneHuntressoftheSun()
		FinalFantasylization_PlagueSong();
	end
--	Lake Elrendar
	function FinalFantasylization_SubzoneLakeElrendar()
		FinalFantasylization_LakeSong();
	end
--	The Living Wood
	function FinalFantasylization_SubzoneTheLivingWood()
		FinalFantasylization_ForestSong();
	end
--	North Sanctum
	function FinalFantasylization_SubzoneNorthSanctum()
		FinalFantasylization_ForestSong();
	end
--	Ruins of Silvermoon
	function FinalFantasylization_SubzoneRuinsofSilvermoon()
		FinalFantasylization_PlagueSong();
	end
--		Commons Hall
	function FinalFantasylization_SubzoneCommonsHall()
		FinalFantasylization_PlagueSong();
	end
--		Dawning Lane
	function FinalFantasylization_SubzoneDawningLane()
		FinalFantasylization_PlayMusic(S ..Misc1Song);
		FinalFantasylization_debugMsg("Misc1Song")
	end
--		Feth's Way
	function FinalFantasylization_SubzoneFethsWay()
		FinalFantasylization_PlagueSong();
	end
--		Skulking Row
	function FinalFantasylization_SubzoneSkulkingRow()
		FinalFantasylization_PlagueSong();
	end
--	Runestone Falithas
	function FinalFantasylization_SubzoneRunestoneFalithas()
		FinalFantasylization_PlagueSong();
	end
--	Runestone Shan'dor
	function FinalFantasylization_SubzoneRunestoneShandor()
		FinalFantasylization_PlagueSong();
	end
--	Sunsail Anchorage
	function FinalFantasylization_SubzoneSunsailAnchorage()
		FinalFantasylization_LakeSong();
	end
--	The Scorched Grove
	function FinalFantasylization_SubzoneTheScorchedGrove()
		FinalFantasylization_SwampSong();
	end
--	The Shepherd's Gate
	function FinalFantasylization_SubzoneTheShepherdsGate()
		FinalFantasylization_PlayMusic(S .. SilvermoonCitySong);
		FinalFantasylization_debugMsg("SilvermoonCitySong")
	end
--	Stillwhisper Pond
	function FinalFantasylization_SubzoneStillwhisperPond()
		FinalFantasylization_LakeSong();
	end
--	Tor'Watha
	function FinalFantasylization_SubzoneTorWatha()
		FinalFantasylization_LandSong();
	end
--	Tranquil Shore
	function FinalFantasylization_SubzoneTranquilShore()
		FinalFantasylization_WaterSong();
	end
--	West Sanctum
	function FinalFantasylization_SubzoneWestSanctum()
		FinalFantasylization_ForestSong();
	end
--	Zeb'Watha
	function FinalFantasylization_SubzoneZebWatha()
		FinalFantasylization_LandSong();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Ghostlands : Horde
--'==========================================================================================
--	Zone: Ghostlands
	function FinalFantasylization_EasternKingdomsGhostlands()
		FinalFantasylization_PlagueSong();
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsGhostlandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsGhostlandsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Horde:
--		Farstrider Enclave
	function FinalFantasylization_HordeTownFarstriderEnclave()
		FinalFantasylization_HordeTowns();
	end
--		Sanctum of the Sun
	function FinalFantasylization_HordeTownSanctumoftheSun()
		FinalFantasylization_HordeTowns();
	end
--		Tranquillien
	function FinalFantasylization_HordeTownTranquillien()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Amani Catacombs
	function FinalFantasylization_SubzoneAmaniCatacombs()
		FinalFantasylization_LandSong();
	end
--	Amani Mountains
	function FinalFantasylization_SubzoneAmaniMountains()
		FinalFantasylization_LandSong();
	end
--	Amani Pass
	function FinalFantasylization_SubzoneAmaniPass()
		FinalFantasylization_LandSong();
	end
--	Andilien Estate
	function FinalFantasylization_SubzoneAndilienEstate()
		FinalFantasylization_PlagueSong();
	end
--	An'daroth
	function FinalFantasylization_SubzoneAndaroth()
		FinalFantasylization_PlagueSong();
	end
--	An'owyn
	function FinalFantasylization_SubzoneAnowyn()
		FinalFantasylization_PlagueSong();
	end
--	An'telas
	function FinalFantasylization_SubzoneAntelas()
		FinalFantasylization_PlagueSong();
	end
--	Bleeding Ziggurat
	function FinalFantasylization_SubzoneBleedingZiggurat()
		FinalFantasylization_PlagueSong();
	end
--	Dawnstar Spire
	function FinalFantasylization_SubzoneDawnstarSpire()
		FinalFantasylization_PlagueSong();
	end
--	*The Dead Scar
	function FinalFantasylization_SubzoneGhostlandsTheDeadScar()
		FinalFantasylization_SwampSong();
	end
--	Deatholme
	function FinalFantasylization_SubzoneDeatholme()
		FinalFantasylization_SwampSong();
	end
--	Elrendar Crossing
	function FinalFantasylization_SubzoneElrendarCrossing()
		FinalFantasylization_WaterSong();
	end
--	Elrendar River
	function FinalFantasylization_SubzoneElrendarRiver()
		FinalFantasylization_WaterSong();
	end
--	Goldenmist Village
	function FinalFantasylization_SubzoneGoldenmistVillage()
		FinalFantasylization_PlagueSong();
	end
--	Hatchet Hills
	function FinalFantasylization_SubzoneHatchetHills()
		FinalFantasylization_PlagueSong();
	end
--	Howling Ziggurat
	function FinalFantasylization_SubzoneHowlingZiggurat()
		FinalFantasylization_PlagueSong();
	end
--	Isle of Tribulations
	function FinalFantasylization_SubzoneIsleofTribulations()
		FinalFantasylization_PlagueSong();
	end
--	Lake Elrendar
	function FinalFantasylization_SubzoneLakeElrendar()
		FinalFantasylization_LakeSong();
	end
--	Sanctum of the Moon
	function FinalFantasylization_SubzoneSanctumoftheMoon()
		FinalFantasylization_PlagueSong();
	end
--	Shalandis Isle
	function FinalFantasylization_SubzoneShalandisIsle()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Suncrown Village
	function FinalFantasylization_SubzoneSuncrownVillage()
		FinalFantasylization_PlagueSong();
	end
--	Sungraze Peak
	function FinalFantasylization_SubzoneSungrazePeak()
		FinalFantasylization_PlagueSong();
	end
--	Thalassian Pass
	function FinalFantasylization_SubzoneThalassianPass()
		FinalFantasylization_PlagueSong();
	end
--	Thalassian Range
	function FinalFantasylization_SubzoneThalassianRange()
		FinalFantasylization_PlagueSong();
	end
--	Tower of the Damned
	function FinalFantasylization_SubzoneToweroftheDamned()
		FinalFantasylization_PlagueSong();
	end
--	Underlight Mines
	function FinalFantasylization_SubzoneUnderlightMines()
		FinalFantasylization_PlagueSong();
	end
--	Windrunner Spire
	function FinalFantasylization_SubzoneWindrunnerSpire()
		FinalFantasylization_PlagueSong();
	end
--	Windrunner Village
	function FinalFantasylization_SubzoneWindrunnerVillage()
		FinalFantasylization_PlagueSong();
	end
--	Zeb'Nowa
	function FinalFantasylization_SubzoneZebNowa()
		FinalFantasylization_LandSong();
	end
--	Zeb'Sora
	function FinalFantasylization_SubzoneZebSora()
		FinalFantasylization_LandSong();
	end
--	Zeb'Tela
	function FinalFantasylization_SubzoneZebTela()
		FinalFantasylization_LandSong();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Gilneas : Worgen
--'==========================================================================================
--	Zone: Gilneas
	function FinalFantasylization_EasternKingdomsGilneas()
		FinalFantasylization_ForestSong();
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsGilneasResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsGilneasSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Duskhaven
	function FinalFantasylization_AllianceTownDuskhaven()
		FinalFantasylization_AllianceTowns();
	end
--		Greymane Manor
	function FinalFantasylization_AllianceTownGreymaneManor()
		FinalFantasylization_AllianceTowns();
	end
--		Keel Harbor
	function FinalFantasylization_AllianceTownKeelHarbor()
		FinalFantasylization_AllianceTowns();
	end
--		Stormglen Village
	function FinalFantasylization_AllianceTownStormglenVillage()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Aderic's Repose
	function FinalFantasylization_SubzoneAdericsRepose()
		FinalFantasylization_PlayMusic(S .. DeadSong);
		FinalFantasylization_debugMsg("DeadSong")
	end
--	Allen Farmstead
	function FinalFantasylization_SubzoneAllenFarmstead()
		FinalFantasylization_ForestSong();
	end
--	The Bite
	function FinalFantasylization_SubzoneTheBite()
		FinalFantasylization_ForestSong();
	end
--	The Blackwald
	function FinalFantasylization_SubzoneTheBlackwald()
		FinalFantasylization_ForestSong();
	end
--	The Bradshaw Mill
	function FinalFantasylization_SubzoneTheBradshawMill()
		FinalFantasylization_ContestedSong();
	end
--	Crowley Orchard
	function FinalFantasylization_SubzoneCrowleyOrchard()
		FinalFantasylization_ForestSong();
	end
--	Crowley Stable Grounds
	function FinalFantasylization_SubzoneCrowleyStableGrounds()
		FinalFantasylization_ForestSong();
	end
--	Duskmist Shore
	function FinalFantasylization_SubzoneDuskmistShore()
		FinalFantasylization_ForestSong();
	end
--	Emberstone Mine
	function FinalFantasylization_SubzoneEmberstoneMine()
		FinalFantasylization_CaveSong();
	end
--	Emberstone Village
	function FinalFantasylization_SubzoneEmberstoneVillage()
		FinalFantasylization_HostileSong();
	end
--	Forsaken Forward Command
	function FinalFantasylization_SubzoneForsakenForwardCommand()
		FinalFantasylization_ForestSong();
	end
--	Galewatch Lighthouse
	function FinalFantasylization_SubzoneGalewatchLighthouse()
		FinalFantasylization_ForestSong();
	end
--	The Greymane Wall
	function FinalFantasylization_SubzoneTheGreymaneWall()
		FinalFantasylization_ForestSong();
	end
--	Hailwood Marsh
	function FinalFantasylization_SubzoneHailwoodMarsh()
		FinalFantasylization_ForestSong();
	end
--	Hammond Farmstead
	function FinalFantasylization_SubzoneHammondFarmstead()
		FinalFantasylization_ForestSong();
	end
--	Hayward Fishery
	function FinalFantasylization_SubzoneHaywardFishery()
		FinalFantasylization_ForestSong();
	end
--	The Headlands
	function FinalFantasylization_SubzoneTheHeadlands()
		FinalFantasylization_ForestSong();
	end
--	King's Gate
	function FinalFantasylization_SubzoneKingsGate()
		FinalFantasylization_ForestSong();
	end
--	Koroth's Den
	function FinalFantasylization_SubzoneKorothsDen()
		FinalFantasylization_HostileSong();
	end
--	Livery Outpost
	function FinalFantasylization_SubzoneLiveryOutpost()
		FinalFantasylization_ForestSong();
	end
--	Northern Headlands
	function FinalFantasylization_SubzoneNorthernHeadlands()
		FinalFantasylization_ForestSong();
	end
--	Northgate River
	function FinalFantasylization_SubzoneNorthgateRiver()
		FinalFantasylization_LakeSong();
	end
--	Northgate Woods
	function FinalFantasylization_SubzoneNorthgateWoods()
		FinalFantasylization_ForestSong();
	end
--	Queen's Gate
	function FinalFantasylization_SubzoneQueensGate()
		FinalFantasylization_ForestSong();
	end
--	Rygna's Lair
	function FinalFantasylization_SubzoneRygnasLair()
		FinalFantasylization_ForestSong();
	end
--	Stagecoach Crash Site
	function FinalFantasylization_SubzoneStagecoachCrashSite()
		FinalFantasylization_ForestSong();
	end
--	Tal'doren
	function FinalFantasylization_SubzoneTaldoren()
		FinalFantasylization_ForestSong();
	end
--	Tempest's Reach
	function FinalFantasylization_SubzoneTempestsReach()
		FinalFantasylization_ForestSong();
	end
--	Wahl Cottage
	function FinalFantasylization_SubzoneWahlCottage()
		FinalFantasylization_ForestSong();
	end
--	Wood's End Cabin
	function FinalFantasylization_SubzoneWoodsEndCabin()
		FinalFantasylization_ForestSong();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Gilneas City : Worgen
--'==========================================================================================
--	Zone: Gilneas City
	function FinalFantasylization_EasternKingdomsGilneasCity()
		FinalFantasylization_BattleGround();
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsGilneasCityResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsGilneasCitySwimming()
		FinalFantasylization_Swimming(2)
	end
--	SUBZONES:
--	Cathedral Quarter
	function FinalFantasylization_GilneasCity_SubzoneCathedralQuarter()
		FinalFantasylization_BattleGround();
	end
--		Light's Dawn Cathedral
	function FinalFantasylization_GilneasCity_SubzoneLightsDawnCathedral()
		FinalFantasylization_BattleGround();
	end
--	Greymane Court
	function FinalFantasylization_GilneasCity_SubzoneGreymaneCourt()
		FinalFantasylization_BattleGround();
	end
--	Merchant Square
	function FinalFantasylization_GilneasCity_SubzoneMerchantSquare()
		FinalFantasylization_PlayMusic(S .. Alliance8Town);
		FinalFantasylization_debugMsg("Alliance8Town")
	end
--	Military District
	function FinalFantasylization_GilneasCity_SubzoneMilitaryDistrict()
		FinalFantasylization_BattleGround();
	end
--		Stoneward Prison
	function FinalFantasylization_GilneasCity_SubzoneStonewardPrison()
		FinalFantasylization_BattleGround();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Hillsbrad Foothills
--'==========================================================================================
--	Zone: Hillsbrad Foothills
	function FinalFantasylization_EasternKingdomsHillsbradFoothills()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsHillsbradFoothillsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsHillsbradFoothillsSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Horde:
--		Eastpoint Tower
	function FinalFantasylization_HordeTownEastpointTower()
		FinalFantasylization_HordeTowns();
	end
--		Ruins of Southshore
	function FinalFantasylization_HordeTownRuinsofSouthshore()
		FinalFantasylization_HordeTowns();
	end
--		Southpoint Gate
	function FinalFantasylization_HordeTownSouthpointGate()
		FinalFantasylization_HordeTowns();
	end
--		Strahnbrad
	function FinalFantasylization_HordeTownStrahnbrad()
		FinalFantasylization_HordeTowns();
	end
--		Tarren Mill
	function FinalFantasylization_HordeTownTarrenMill()
		FinalFantasylization_HordeTowns();
	end
--		The Sludge Fields
	function FinalFantasylization_HordeTownTheSludgeFields()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Azurelode Mine
	function FinalFantasylization_SubzoneAzurelodeMine()
		FinalFantasylization_PlagueSong();
	end
--	Dalaran Crater
	function FinalFantasylization_SubzoneDalaranCrater()
		FinalFantasylization_ContestedSong()
	end
--	Darrow Hill
	function FinalFantasylization_SubzoneDarrowHill()

	end
--	Dun Garok
	function FinalFantasylization_SubzoneDunGarok()

	end
--	Durnholde Keep
	function FinalFantasylization_SubzoneDurnholdeKeep()

	end
--	Eastern Strand
	function FinalFantasylization_SubzoneEasternStrand()

	end
--	Sludgeguard Tower
	function FinalFantasylization_SubzoneSludgeguardTower()

	end
--	Nethander Stead
	function FinalFantasylization_SubzoneNethanderStead()

	end
--	Purgation Isle
	function FinalFantasylization_SubzonePurgationIsle()

	end
--	Ruins of Alterac
	function FinalFantasylization_SubzoneRuinsofAlterac()

	end
--	Southpoint Tower
	function FinalFantasylization_SubzoneSouthpointTower()

	end
--	Thoradin's Wall
	function FinalFantasylization_SubzoneThoradinsWall()

	end
--	The Uplands
	function FinalFantasylization_SubzoneTheUplands()

	end
--	Western Strand
	function FinalFantasylization_SubzoneWesternStrand()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: The Hinterlands
--'==========================================================================================
--	Zone: The Hinterlands
	function FinalFantasylization_EasternKingdomsTheHinterlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsTheHinterlandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsTheHinterlandsSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Aerie Peak
	function FinalFantasylization_AllianceTownAeriePeak()
		FinalFantasylization_AllianceTowns();
	end
--		Stormfeather Outpost
	function FinalFantasylization_AllianceTownStormfeatherOutpost()
		FinalFantasylization_AllianceTowns();
	end
--	Horde
--		Hiri'watha Research Station
	function FinalFantasylization_HordeTownHiriwathaResearchStation()
		FinalFantasylization_HordeTowns();
	end
--		Revantusk Village
	function FinalFantasylization_HordeTownRevantuskVillage()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Wildhammer Keep
	function FinalFantasylization_SubzoneWildhammerKeep()

	end
--	Agol'watha
	function FinalFantasylization_SubzoneAgolwatha()

	end
--	Altar of Zul
	function FinalFantasylization_SubzoneAltarofZulp()

	end
--	Bogen's Ledge
	function FinalFantasylization_SubzoneBogensLedge()

	end
--	The Creeping Ruin
	function FinalFantasylization_SubzoneTheCreepingRuin()

	end
--	Featherbeard's Hovel
	function FinalFantasylization_SubzoneFeatherbeardsHovel()

	end
--	The Forbidding Sea
	function FinalFantasylization_SubzoneTheForbiddingSea()

	end
--	Jintha'Alor
	function FinalFantasylization_SubzoneJinthaAlor()

	end
--	Overlook Cliffs
	function FinalFantasylization_SubzoneOverlookCliffs()

	end
--	Plaguemist Ravine
	function FinalFantasylization_SubzonePlaguemistRavine()

	end
--	Quel'Danil Lodge
	function FinalFantasylization_SubzoneQuelDanilLodge()

	end
--	Seradane
	function FinalFantasylization_SubzoneSeradane()

	end
--	Shaol'watha
	function FinalFantasylization_SubzoneShaolwatha()

	end
--	Shadra'Alor
	function FinalFantasylization_SubzoneShadraAlor()

	end
--	Shindigger's Camp
	function FinalFantasylization_SubzoneShindiggersCamp()

	end
--	Skulk Rock
	function FinalFantasylization_SubzoneSkulkRock()

	end
--	Valorwind Lake
	function FinalFantasylization_SubzoneValorwindLake()

	end
--	Zun'watha
	function FinalFantasylization_SubzoneZunwatha()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Loch Modan : Alliance
--'==========================================================================================
--	Zone: Loch Modan
	function FinalFantasylization_EasternKingdomsLochModan()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SwampSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsLochModanResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsLochModanSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Algaz Station
	function FinalFantasylization_AllianceTownAlgazStation()
		FinalFantasylization_AllianceTowns();
	end
--		The Farstrider Lodge
	function FinalFantasylization_AllianceTownTheFarstriderLodge()
		FinalFantasylization_AllianceTowns();
	end
--		Thelsamar
	function FinalFantasylization_AllianceTownThelsamar()
		FinalFantasylization_AllianceTowns();
	end
--			Stoutlager Inn
	function FinalFantasylization_AllianceTownStoutlagerInn()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Dun Algaz
	function FinalFantasylization_SubzoneDunAlgaz()

	end
--	Grizzlepaw Ridge
	function FinalFantasylization_SubzoneGrizzlepawRidge()

	end
--	Ironband's Excavation Site
	function FinalFantasylization_SubzoneIronbandsExcavationSite()

	end
--		Ironwing Cavern
	function FinalFantasylization_SubzoneIronwingCavern()

	end
--	The Loch
	function FinalFantasylization_SubzoneTheLoch()

	end
--		Twilight Camp
	function FinalFantasylization_SubzoneTwilightCamp()

	end
--	Mo'grosh Stronghold
	function FinalFantasylization_SubzoneMogroshStronghold()

	end
--	North Gate Pass
	function FinalFantasylization_SubzoneNorthGatePass()

	end
--	Silver Stream Mine
	function FinalFantasylization_SubzoneSilverStreamMine()

	end
--	South Gate Pass
	function FinalFantasylization_SubzoneSouthGatePass()

	end
--	Stonesplinter Valley
	function FinalFantasylization_SubzoneStonesplinterValley()

	end
--	Stonewrought Dam
	function FinalFantasylization_SubzoneStonewroughtDam()

	end
--	Valley of Kings
	function FinalFantasylization_SubzoneValleyofKings()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Northern Stranglethorn
--'==========================================================================================
--	Zone: Northern Stranglethorn
	function FinalFantasylization_EasternKingdomsNorthernStranglethorn()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsNorthernStranglethornResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsNorthernStranglethornSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Fort Livingston
	function FinalFantasylization_AllianceTownFortLivingston()
		FinalFantasylization_AllianceTowns();
	end
--		Rebel Camp
	function FinalFantasylization_AllianceTownRebelCamp()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Bambala
	function FinalFantasylization_HordeTownBambala()
		FinalFantasylization_HordeTowns();
	end
--		Grom'gol Base Camp
	function FinalFantasylization_HordeTownGromgolBaseCamp()
		FinalFantasylization_HordeTowns();
	end
--	Neutral:
--		Nesingwary's Expedition
	function FinalFantasylization_NeutralTownNesingwarysExpedition()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Bal'lal Ruins
	function FinalFantasylization_SubzoneBallalRuins()

	end
--	Balia'mah Ruins
	function FinalFantasylization_SubzoneBaliamahRuins()

	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()

	end
--	Kal'ai Ruins
	function FinalFantasylization_SubzoneKalaiRuins()

	end
--	Kurzen's Compound
	function FinalFantasylization_SubzoneKurzensCompound()

	end
--	Lake Nazferiti
	function FinalFantasylization_SubzoneLakeNazferiti()

	end
--	Mizjah Ruins
	function FinalFantasylization_SubzoneMizjahRuins()

	end
--	Mosh'Ogg Ogre Mound
	function FinalFantasylization_SubzoneMoshOggOgreMound()

	end
--	Nazferiti River
	function FinalFantasylization_SubzoneNazferitiRiver()

	end
--	Ruins of Zul'Kunda
	function FinalFantasylization_SubzoneRuinsofZulKunda()

	end
--	Ruins of Zul'Mamwe
	function FinalFantasylization_SubzoneRuinsofZulMamwe()

	end
--	The Savage Coast
	function FinalFantasylization_SubzoneTheSavageCoast()

	end
--	The Stockpile
	function FinalFantasylization_SubzoneTheStockpile()

	end
--	The Sundering
	function FinalFantasylization_SubzoneTheSundering()

	end
--	Tkashi Ruins
	function FinalFantasylization_SubzoneTkashiRuins()

	end
--	Venture Company Base Camp
	function FinalFantasylization_SubzoneVentureCompanyBaseCamp()

	end
--	Venture Co. Operations Center
	function FinalFantasylization_SubzoneVentureCoOperationsCenter()

	end
--	The Vile Reef
	function FinalFantasylization_SubzoneTheVileReef()

	end
--	Yojamba Isle
	function FinalFantasylization_SubzoneYojambaIsle()

	end
--	Ziata'jai Ruins
	function FinalFantasylization_SubzoneZiatajaiRuins()

	end
--	Zul'Gurub
	function FinalFantasylization_SubzoneZulGurub()

	end
--	Zuuldaia Ruins
	function FinalFantasylization_SubzoneZuuldaiaRuins()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Plaguelands: The Scarlet Enclave : Death Knight Start
--'==========================================================================================
--	Zone: Plaguelands: The Scarlet Enclave
	function FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclave()
		FinalFantasylization_BattleGround();
	end
--	Zone Events:
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclaveSwimming()
		FinalFantasylization_Swimming(2)
	end
--	SUBZONES:
--		Acherus: The Ebon Hold
	function FinalFantasylization_DeathKnight_Start_AcherusTheEbonHold()
			FinalFantasylization_PlayMusic(S .. EbonHoldSong);
			FinalFantasylization_debugMsg("EbonHoldSong")
	end
--			Hall of Command
	function FinalFantasylization_DeathKnight_Start_HallofCommand()
			FinalFantasylization_PlayMusic(S .. EbonHoldSong);
			FinalFantasylization_debugMsg("EbonHoldSong")
	end
--			The Heart of Acherus
	function FinalFantasylization_DeathKnight_Start_TheHeartofAcherus()
			FinalFantasylization_PlayMusic(S .. EbonHoldSong);
			FinalFantasylization_debugMsg("EbonHoldSong")
	end
--		Browman Mill
	function FinalFantasylization_DeathKnight_Start_BrowmanMill()
		FinalFantasylization_BattleGround();
	end
--		Crypt of Remembrance
	function FinalFantasylization_DeathKnight_Start_CryptofRemembrance()
			FinalFantasylization_PlayMusic(S .. EbonHoldSong);
			FinalFantasylization_debugMsg("EbonHoldSong")
	end
--		Death's Breach
	function FinalFantasylization_DeathKnight_Start_DeathsBreach()
		FinalFantasylization_SwampSong();
	end
--		Havenshire
	function FinalFantasylization_DeathKnight_Start_Havenshire()
		FinalFantasylization_BattleGround();
	end
--			Havenshire Farms
	function FinalFantasylization_DeathKnight_Start_HavenshireFarms()
		FinalFantasylization_BattleGround();
	end
--			Havenshire Lumber Mill
	function FinalFantasylization_DeathKnight_Start_HavenshireLumberMill()
		FinalFantasylization_BattleGround();
	end
--			Havenshire Mine
	function FinalFantasylization_DeathKnight_Start_HavenshireMine()
		FinalFantasylization_CaveSong();
	end
--			Havenshire Stables
	function FinalFantasylization_DeathKnight_Start_HavenshireStables()
		FinalFantasylization_BattleGround();
	end
--		King's Harbor
	function FinalFantasylization_DeathKnight_Start_KingsHarbor()
		FinalFantasylization_BattleGround();
	end
--		Light's Hope Chapel
	function FinalFantasylization_DeathKnight_Start_LightsHopeChapel()
		FinalFantasylization_BattleGround();
	end
--		Light's Point
	function FinalFantasylization_DeathKnight_Start_LightsPoint()
		FinalFantasylization_BattleGround();
	end
--			Light's Point Tower
	function FinalFantasylization_DeathKnight_Start_LightsPointTower()
		FinalFantasylization_BattleGround();
	end
--		New Avalon
	function FinalFantasylization_DeathKnight_Start_NewAvalon()
		FinalFantasylization_BattleGround();
	end
--			Chapel of the Crimson Flame
	function FinalFantasylization_DeathKnight_Start_ChapeloftheCrimsonFlame()
		FinalFantasylization_BattleGround();
	end
--			New Avalon Forge
	function FinalFantasylization_DeathKnight_Start_NewAvalonForge()
		FinalFantasylization_BattleGround();
	end
--			New Avalon Orchard
	function FinalFantasylization_DeathKnight_Start_NewAvalonOrchard()
		FinalFantasylization_BattleGround();
	end
--			New Avalon Town Hall
	function FinalFantasylization_DeathKnight_Start_NewAvalonTownHall()
		FinalFantasylization_BattleGround();
	end
--			Scarlet Hold
	function FinalFantasylization_DeathKnight_Start_ScarletHold()
		FinalFantasylization_BattleGround();
	end
--			Scarlet Tavern
	function FinalFantasylization_DeathKnight_Start_ScarletTavern()
		FinalFantasylization_BattleGround();
	end
--		The Noxious Glade
	function FinalFantasylization_DeathKnight_Start_TheNoxiousGlade()
		FinalFantasylization_BattleGround();
	end
--		The Noxious Pass
	function FinalFantasylization_DeathKnight_Start_TheNoxiousPass()
		FinalFantasylization_BattleGround();
	end
--		The Pestilent Scar
	function FinalFantasylization_DeathKnight_Start_PestilentScar()
		FinalFantasylization_BattleGround();
	end
--		The Scarlet Overlook
	function FinalFantasylization_DeathKnight_Start_ScarletOverlook()
		FinalFantasylization_BattleGround();
	end
--		Tyr's Hand
	function FinalFantasylization_DeathKnight_Start_TyrsHand()
		FinalFantasylization_BattleGround();
	end
--			The Scarlet Basilica
	function FinalFantasylization_DeathKnight_Start_TheScarletBasilica()
		FinalFantasylization_BattleGround();
	end
--			Tyr's Hand Abbey
	function FinalFantasylization_DeathKnight_Start_TyrsHandAbbey()
		FinalFantasylization_BattleGround();
	end
--				Hall of Arms
	function FinalFantasylization_DeathKnight_Start_HallofArms()
		FinalFantasylization_BattleGround();
	end
--				Library Wing
	function FinalFantasylization_DeathKnight_Start_LibraryWing()
		FinalFantasylization_BattleGround();
	end
--				Main Hall
	function FinalFantasylization_DeathKnight_Start_MainHall()
		FinalFantasylization_BattleGround();
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Redridge Mountains
--'==========================================================================================
--	Zone: Redridge Mountains
	function FinalFantasylization_EasternKingdomsRedridgeMountains()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsRedridgeMountainsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsRedridgeMountainsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Camp Everstill
	function FinalFantasylization_AllianceTownCampEverstill()
		FinalFantasylization_AllianceTowns();
	end
--		Lakeshire
	function FinalFantasylization_AllianceTownLakeshire()
		FinalFantasylization_AllianceTowns();
	end
--			Lakeshire Inn
	function FinalFantasylization_AllianceTownLakeshireInn()
		FinalFantasylization_AllianceTowns();
	end
--			Lakeshire Town Hall
	function FinalFantasylization_AllianceTownLakeshireTownHall()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Alther's Mill
	function FinalFantasylization_SubzoneAlthersMill()

	end
--	Galardell Valley
	function FinalFantasylization_SubzoneGalardellValley()

	end
--	Lake Everstill
	function FinalFantasylization_SubzoneLakeEverstill()

	end
--	Lakeridge Highway
	function FinalFantasylization_SubzoneLakeridgeHighway()

	end
--	Redridge Canyons
	function FinalFantasylization_SubzoneRedridgeCanyons()

	end
--	Render's Camp
	function FinalFantasylization_SubzoneRendersCamp()

	end
--		Render's Rock
	function FinalFantasylization_SubzoneRendersRock()

	end
--	Render's Valley
	function FinalFantasylization_SubzoneRendersValley()

	end
--	Redridge Highway
	function FinalFantasylization_SubzoneRedridgeHighway()

	end
--	Rethban Caverns
	function FinalFantasylization_SubzoneRethbanCaverns()

	end
--	Shalewind Canyon
	function FinalFantasylization_SubzoneShalewindCanyon()

	end
--	Stonewatch
	function FinalFantasylization_SubzoneStonewatch()

	end
--		Stonewatch Keep
	function FinalFantasylization_SubzoneStonewatchKeep()

	end
--		Stonewatch Tower
	function FinalFantasylization_SubzoneStonewatchTower()

	end
--	Stonewatch Falls
	function FinalFantasylization_SubzoneStonewatchFalls()

	end
--	Three Corners
	function FinalFantasylization_SubzoneThreeCorners()

	end
--	Tower of Ilgalar
	function FinalFantasylization_SubzoneTowerofIlgalar()

	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Ruins of Gilneas : Undead
--'==========================================================================================
--	Zone: Ruins of Gilneas
	function FinalFantasylization_EasternKingdomsRuinsofGilneas()
		FinalFantasylization_ForestSong();
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsRuinsofGilneasResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsRuinsofGilneasSwimming()
		FinalFantasylization_Swimming(2)
	end
--	Undead:
--		TOWN:
--			Forsaken Forward Command
	function FinalFantasylization_HordeTownForsakenForwardCommand()
		FinalFantasylization_HordeTowns();
	end
--		SUBZONES:
--		7th Legion Submarine
	function FinalFantasylization_Subzone7thLegionSubmarine()

	end
--		Dreadwatch Outpost
	function FinalFantasylization_SubzoneDreadwatchOutpost()

	end
--		Emberstone Mine
	function FinalFantasylization_SubzoneEmberstoneMine()

	end
--		Emberstone Village
	function FinalFantasylization_SubzoneEmberstoneVillage()

	end
--		Gilneas City
	function FinalFantasylization_SubzoneGilneasCity()

	end
--			Light's Dawn Cathedral
	function FinalFantasylization_SubzoneLightsDawnCathedral()

	end
--			Stoneward Prison
	function FinalFantasylization_SubzoneStonewardPrison()

	end
--		The Greymane Wall
	function FinalFantasylization_SubzoneTheGreymaneWall()

	end
--		Northern Headlands
	function FinalFantasylization_SubzoneNorthernHeadlands()

	end
--		Rutsak's Guard
	function FinalFantasylization_SubzoneRutsaksGuard()

	end
--		Tempest's Reach
	function FinalFantasylization_SubzoneTempestsReach()

	end	
--'==========================================================================================
--' Eastern Kingdoms Zones: Silverpine Forest
--'==========================================================================================
--	Zone: Silverpine Forest
	function FinalFantasylization_EasternKingdomsSilverpineForest()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_PlagueSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsSilverpineForestResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsSilverpineForestSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Horde:
--		The Forsaken Front
	function FinalFantasylization_HordeTownTheForsakenFront()
		FinalFantasylization_HordeTowns();
	end
--		Forsaken High Command
	function FinalFantasylization_HordeTownForsakenHighCommand()
		FinalFantasylization_HordeTowns();
	end
--		Forsaken Rear Guard
	function FinalFantasylization_HordeTownForsakenRearGuard()
		FinalFantasylization_HordeTowns();
	end
--		The Sepulcher
	function FinalFantasylization_HordeTownTheSepulcher()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	7th Legion Base Camp
	function FinalFantasylization_Subzone7thLegionBaseCamp()

	end
--	Ambermill *
	function FinalFantasylization_SubzoneAmbermill()
		FinalFantasylization_PlayMusic(S .. Alliance10Town);
		FinalFantasylization_debugMsg("Alliance10Town")
	end
--	The Battlefront
	function FinalFantasylization_SubzoneTheBattlefront()

	end
--	Beren's Peril
	function FinalFantasylization_SubzoneBerensPeril()

	end
--	The Dead Field
	function FinalFantasylization_SubzoneTheDeadField()
		FinalFantasylization_PlagueSong();
	end
--	The Decrepit Fields
	function FinalFantasylization_SubzoneTheDecrepitFields()
		FinalFantasylization_PlagueSong();
	end
--	Deep Elem Mine
	function FinalFantasylization_SubzoneDeepElemMine()
		FinalFantasylization_CaveSong();
	end
--	Gilneas Liberation Front Base Camp
	function FinalFantasylization_SubzoneGilneasLiberationFrontBaseCamp()

	end
--	The Greymane Wall
	function FinalFantasylization_SubzoneTheGreymaneWall()
		FinalFantasylization_SwampSong();
	end
--	The Ivar Patch
	function FinalFantasylization_SubzoneTheIvarPatch()

	end
--	Lordamere Lake
	function FinalFantasylization_SubzoneLordamereLake()
		FinalFantasylization_LakeSong();
	end
--		The Dawning Isles
	function FinalFantasylization_SubzoneTheDawningIsles()

	end
--		Fenris Isle
	function FinalFantasylization_SubzoneFenrisIsle()

	end
--			Fenris Keep
	function FinalFantasylization_SubzoneFenrisKeep()

	end
--	North Tide's Beachhead
	function FinalFantasylization_SubzoneNorthTidesBeachhead()
		FinalFantasylization_WaterSong();
	end
--	North Tide's Hollow
	function FinalFantasylization_SubzoneNorthTidesHollow()

	end
--	North Tide's Run
	function FinalFantasylization_SubzoneNorthTidesRun()

	end
--	Olsen's Farthing
	function FinalFantasylization_SubzoneOlsensFarthing()

	end
--	Pyrewood Village
	function FinalFantasylization_SubzonePyrewoodVillage()

	end
--		Pyrewood Chapel
	function FinalFantasylization_SubzonePyrewoodChapel()

	end
--		Pyrewood Inn *
	function FinalFantasylization_SubzonePyrewoodInn()

	end
--		Pyrewood Town Hall
	function FinalFantasylization_SubzonePyrewoodTownHall()

	end
--	Shadowfang Keep
	function FinalFantasylization_SubzoneShadowfangKeep()

	end
--	The Shining Strand
	function FinalFantasylization_SubzoneTheShiningStrand()
		FinalFantasylization_PlagueSong();
	end
--	The Skittering Dark
	function FinalFantasylization_SubzoneTheSkitteringDark()
		FinalFantasylization_PlagueSong();
	end
--	South Tide's Run
	function FinalFantasylization_SubzoneSouthTidesRun()

	end
--	Valgan's Field
	function FinalFantasylization_SubzoneValgansField()	

	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Tirisfal Glades - Horde
--'==========================================================================================
--	Zone: Tirisfal Glades
	function FinalFantasylization_EasternKingdomsTirisfalGlades()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_PlagueSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsTirisfalGladesResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsTirisfalGladesSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Forsaken Start: 
--		Deathknell
	function FinalFantasylization_Forsaken_Start_Deathknell()
		FinalFantasylization_PlagueSong();
	end
--			The Deathknell Graves
	function FinalFantasylization_Forsaken_Start_TheDeathknellGraves()
		FinalFantasylization_PlagueSong();
	end
--			Night Web's Hollow
	function FinalFantasylization_Forsaken_Start_NightWebsHollow()
		FinalFantasylization_PlagueSong();
	end
--			Rotbrain Encampment
	function FinalFantasylization_Forsaken_Start_RotbrainEncampment()
		FinalFantasylization_PlagueSong();
	end
--			Shadow Grave
	function FinalFantasylization_Forsaken_Start_ShadowGrave()
		FinalFantasylization_PlagueSong();
	end
--	Horde:
--		Brill
	function FinalFantasylization_HordeTownBrill()
		FinalFantasylization_HordeTowns();
	end
--			Brill Town Hall
	function FinalFantasylization_HordeTownBrillTownHall()
		FinalFantasylization_HordeTowns();
	end
--			Gallows' End Tavern
	function FinalFantasylization_HordeTownGallowsEndTavern()
		FinalFantasylization_HordeTowns();
	end
--		Ruins of Lordaeron
	function FinalFantasylization_HordeTownRuinsofLordaeron()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Agamand Mills
	function FinalFantasylization_SubzoneAgamandMills()
		FinalFantasylization_PlagueSong();
	end
--		Agamand Family Crypt
	function FinalFantasylization_SubzoneAgamandFamilyCrypt()
		FinalFantasylization_PlagueSong();
	end
--	Balnir Farmstead
	function FinalFantasylization_SubzoneBalnirFarmstead()
		FinalFantasylization_PlagueSong();
	end
--	Brightwater Lake
	function FinalFantasylization_SubzoneBrightwaterLake()
		FinalFantasylization_LakeSong();
	end
--		Gunther's Retreat
	function FinalFantasylization_SubzoneGunthersRetreat()
	
	end
--	The Bulwark
	function FinalFantasylization_SubzoneTheBulwark()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Calston Estate
	function FinalFantasylization_SubzoneCalstonEstate()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Cold Hearth Manor
	function FinalFantasylization_SubzoneColdHearthManor()
		FinalFantasylization_PlagueSong();
	end
--	Crusader Outpost
	function FinalFantasylization_SubzoneCrusaderOutpost()
		FinalFantasylization_ForestSong();
	end
--	Death's Watch Waystation
	function FinalFantasylization_SubzoneDeathsWatchWaystation()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Faol's Rest
	function FinalFantasylization_SubzoneFaolsRest()
		FinalFantasylization_PlayerGhost();
	end
--	Garren's Haunt
	function FinalFantasylization_SubzoneGarrensHaunt()
		FinalFantasylization_PlagueSong();
	end
--	Nightmare Vale
	function FinalFantasylization_SubzoneNightmareVale()
	
	end
--	The North Coast
	function FinalFantasylization_SubzoneTheNorthCoast()
	
	end
--	Scarlet Monastery
	function FinalFantasylization_SubzoneScarletMonastery()
	
	end
--		The Grand Vestibule
	function FinalFantasylization_SubzoneTheGrandVestibule()
	
	end
--		Terrace of Repose
	function FinalFantasylization_SubzoneTerraceofRepose()
	
	end
--	Crusader's Outpost
	function FinalFantasylization_SubzoneCrusadersOutpost()
	
	end
--		Scarlet Palisade
	function FinalFantasylization_SubzoneScarletPalisade()
		FinalFantasylization_HostileTowns();
	end
--	Scarlet Watchtower
	function FinalFantasylization_SubzoneScarletWatchtower()
	
	end
--	Scarlet Watch Post
	function FinalFantasylization_SubzoneScarletWatchPost()
		FinalFantasylization_HostileTowns();
	end
--	Solliden Farmstead
	function FinalFantasylization_SubzoneSollidenFarmstead()
		FinalFantasylization_HostileTowns();
	end
--	Stillwater Pond
	function FinalFantasylization_SubzoneStillwaterPond()
		FinalFantasylization_LakeSong();
	end
--	Venomweb Vale
	function FinalFantasylization_SubzoneVenomwebVale()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_PlagueSong();
			end
	end
--		Scarlet Encampment
	function FinalFantasylization_SubzoneScarletEncampment()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_PlagueSong();
			end
	end
--	Whispering Forest
	function FinalFantasylization_SubzoneWhisperingForest()
	
	end
--	Whispering Gardens
	function FinalFantasylization_SubzoneWhisperingGardens()
	
	end
--	Whispering Shore
	function FinalFantasylization_SubzoneWhisperingShore()
		FinalFantasylization_PlagueSong();
	end


--'==========================================================================================
--' Eastern Kingdoms Zones: Westfall
--'==========================================================================================
--	Zone: Westfall
	function FinalFantasylization_EasternKingdomsWestfall()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsWestfallResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsWestfallSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Moonbrook
	function FinalFantasylization_AllianceTownMoonbrook()
		FinalFantasylization_AllianceTowns();
	end
--			Deadmines
	function FinalFantasylization_SubzoneDeadmines()
		FinalFantasylization_CaveSong();
	end
--			Moonbrook Schoolhouse
	function FinalFantasylization_AllianceTownMoonbrookSchoolhouse()
		FinalFantasylization_AllianceTowns();
	end
--		Sentinel Hill
	function FinalFantasylization_AllianceTownSentinelHill()
		FinalFantasylization_AllianceTowns();
	end
--				Sentinel Tower
	function FinalFantasylization_AllianceTownSentinelTower()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Alexston Farmstead
	function FinalFantasylization_SubzoneAlexstonFarmstead()
	
	end
--	The Dagger Hills
	function FinalFantasylization_SubzoneTheDaggerHills()
	
	end
--	The Dead Acre
	function FinalFantasylization_SubzoneTheDeadAcre()
	
	end
--	Demont's Place
	function FinalFantasylization_SubzoneDemontsPlace()
	
	end
--	The Dust Plains
	function FinalFantasylization_SubzoneTheDustPlains()
	
	end
--		Mortwake's Tower
	function FinalFantasylization_SubzoneMortwakesTower()
	
	end
--	Furlbrow's Pumpkin Farm
	function FinalFantasylization_SubzoneFurlbrowsPumpkinFarm()
	
	end
--	Gold Coast Quarry
	function FinalFantasylization_SubzoneGoldCoastQuarry()
		FinalFantasylization_CaveSong();
	end
--	Jangolode Mine
	function FinalFantasylization_SubzoneJangolodeMine()
		FinalFantasylization_CaveSong();
	end
--	The Jansen Stead
	function FinalFantasylization_SubzoneTheJansenStead()
		FinalFantasylization_SandSong();
	end
--	Longshore
	function FinalFantasylization_SubzoneLongshore()

	end
--	The Molsen Farm
	function FinalFantasylization_SubzoneTheMolsenFarm()
	
	end
--	The Raging Chasm
	function FinalFantasylization_SubzoneTheRagingChasm()
	
	end
--	Saldean's Farm
	function FinalFantasylization_SubzoneSaldeansFarm()
	
	end
--	Stendel's Pond
	function FinalFantasylization_SubzoneStendelsPond()

	end
--	Westfall Lighthouse
	function FinalFantasylization_SubzoneWestfallLighthouse()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zones: Wetlands : Alliance
--'==========================================================================================
--	Zone: Wetlands
	function FinalFantasylization_EasternKingdomsWetlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SwampSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_EasternKingdomsWetlandsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_EasternKingdomsWetlandsSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Dun Modr
	function FinalFantasylization_AllianceTownDunModr()
		FinalFantasylization_AllianceTowns();
	end
--		Greenwarden's Grove
	function FinalFantasylization_AllianceTownGreenwardensGrove()
		FinalFantasylization_AllianceTowns();
	end
--		Menethil Harbor
	function FinalFantasylization_AllianceTownMenethilHarbor()
		FinalFantasylization_AllianceTowns();
	end
--			Deepwater Tavern
	function FinalFantasylization_AllianceTownDeepwaterTavern()
		FinalFantasylization_AllianceTowns();
	end
--			Menethil Keep
	function FinalFantasylization_AllianceTownMenethilKeep()
		FinalFantasylization_AllianceTowns();
	end
--		Slabchisel's Survey
	function FinalFantasylization_AllianceTownSlabchiselsSurvey()
		FinalFantasylization_AllianceTowns();
	end
--		Whelgar's Retreat
	function FinalFantasylization_AllianceTownWhelgarsRetreat()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Angerfang Encampment
	function FinalFantasylization_SubzoneAngerfangEncampment()
	
	end
--	Baradin Bay
	function FinalFantasylization_SubzoneBaradinBay()
	
	end
--	Black Channel Marsh
	function FinalFantasylization_SubzoneBlackChannelMarsh()
	
	end
--	Bluegill Marsh
	function FinalFantasylization_SubzoneBluegillMarsh()
	
	end
--	Direforge Hill
	function FinalFantasylization_SubzoneDireforgeHill()
	
	end
--	Dun Algaz
	function FinalFantasylization_SubzoneDunAlgaz()
	
	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()
	
	end
--	The Green Belt
	function FinalFantasylization_SubzoneTheGreenBelt()
	
	end
--	Ironbeard's Tomb
	function FinalFantasylization_SubzoneIronbeardsTomb()
	
	end
--	The Lost Fleet
	function FinalFantasylization_SubzoneTheLostFleet()
	
	end
--	Menethil Bay
	function FinalFantasylization_SubzoneMenethilBay()
	
	end
--	Mosshide Fen
	function FinalFantasylization_SubzoneMosshideFen()
	
	end
--	Raptor Ridge
	function FinalFantasylization_SubzoneRaptorRidge()
	
	end
--	Saltspray Glen
	function FinalFantasylization_SubzoneSaltsprayGlen()
	
	end
--	Sundown Marsh
	function FinalFantasylization_SubzoneSundownMarsh()
	
	end
--		Swiftgear Station
	function FinalFantasylization_SubzoneSwiftgearStation()
	
	end
--	Thandol Span
	function FinalFantasylization_SubzoneThandolSpan()
	
	end
--	Thelgen Rock
	function FinalFantasylization_SubzoneThelgenRock()
	
	end
--	Whelgar's Excavation Site
	function FinalFantasylization_SubzoneWhelgarsExcavationSite()
	
	end
	
	
	
--###########################################################################################
--##   KALIMDOR ZONES
--###########################################################################################
--'==========================================================================================
--' Kalimdor Capital: Darnassus : Alliance
--'==========================================================================================
--	Zone: Darnassus
	function FinalFantasylization_Kalimdor_Darnassus()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_Kalimdor_DarnassusResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_Kalimdor_DarnassusSwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	Cenarion Enclave
	function FinalFantasylization_Darnassus_SubzoneCenarionEnclave()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Craftsmen's Terrace
	function FinalFantasylization_Darnassus_SubzoneCraftsmensTerrace()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Howling Oak
	function FinalFantasylization_Darnassus_SubzoneTheHowlingOak()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	The Temple Gardens
	function FinalFantasylization_Darnassus_SubzoneTheTempleGardens()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	The Temple of the Moon
	function FinalFantasylization_Darnassus_SubzoneTempleoftheMoon()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Tradesmen's Terrace
	function FinalFantasylization_Darnassus_SubzoneTradesmensTerrace()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--	Warrior's Terrace
	function FinalFantasylization_Darnassus_SubzoneWarriorsTerrace()
		FinalFantasylization_PlayMusic(S .. DarnassusSong);
		FinalFantasylization_debugMsg("DarnassusSong")
	end
--'==========================================================================================
--' Kalimdor Capital: The Exodar : Alliance
--'==========================================================================================
--	Zone: The Exodar
	function FinalFantasylization_Kalimdor_TheExodar()
		FinalFantasylization_PlayMusic(S .. ExodarSong);
		FinalFantasylization_debugMsg("ExodarSong")
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_Kalimdor_TheExodarResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_Kalimdor_TheExodarSwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	The Crystal Hall
	function FinalFantasylization_TheExodar_SubzoneTheCrystalHall()
		FinalFantasylization_PlayMusic(S .. ExodarSong);
		FinalFantasylization_debugMsg("ExodarSong")
	end
--	Seat of the Naaru
	function FinalFantasylization_TheExodar_SubzoneSeatoftheNaaru()
		FinalFantasylization_PlayMusic(S .. ExodarSong);
		FinalFantasylization_debugMsg("ExodarSong")
	end
--	Traders' Tier
	function FinalFantasylization_TheExodar_SubzoneTradersTier()
		FinalFantasylization_PlayMusic(S .. ExodarSong);
		FinalFantasylization_debugMsg("ExodarSong")
	end
--	The Vault of Lights
	function FinalFantasylization_TheExodar_SubzoneTheVaultofLights()
		FinalFantasylization_PlayMusic(S .. ExodarSong);
		FinalFantasylization_debugMsg("ExodarSong")
	end
--'==========================================================================================
--' Kalimdor Capital: Orgrimmar : Horde
--'==========================================================================================
--	Zone: Orgrimmar
	function FinalFantasylization_Kalimdor_Orgrimmar()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_Kalimdor_OrgrimmarResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_Kalimdor_OrgrimmarSwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	Cleft of Shadow
	function FinalFantasylization_Orgrimmar_SubzoneCleftofShadow()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--		Ragefire Chasm
	function FinalFantasylization_Orgrimmar_SubzoneRagefireChasm()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	The Drag
	function FinalFantasylization_Orgrimmar_SubzoneTheDrag()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Goblin Slums
	function FinalFantasylization_Orgrimmar_SubzoneGoblinSlums()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Hall of Legends
	function FinalFantasylization_Orgrimmar_SubzoneHallofLegends()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Valley of Honor
	function FinalFantasylization_Orgrimmar_SubzoneValleyofHonor()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--		Hall of the Brave
	function FinalFantasylization_Orgrimmar_SubzoneHalloftheBrave()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--		The Ring of Valor
	function FinalFantasylization_Orgrimmar_SubzoneTheRingofValor()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Valley of Spirits
	function FinalFantasylization_Orgrimmar_SubzoneValleyofSpirits()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Valley of Strength
	function FinalFantasylization_Orgrimmar_SubzoneValleyofStrength()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--		Grommash Hold
	function FinalFantasylization_Orgrimmar_SubzoneGrommashHold()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--	Valley of Wisdom
	function FinalFantasylization_Orgrimmar_SubzoneValleyofWisdom()
		FinalFantasylization_PlayMusic(S .. OrgrimmarSong);
		FinalFantasylization_debugMsg("OrgrimmarSong")
	end
--'==========================================================================================
--' Kalimdor Capital: Thunder Bluff : Horde
--'==========================================================================================
--	Zone: Thunder Bluff
	function FinalFantasylization_Kalimdor_ThunderBluff()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_Kalimdor_ThunderBluffResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_Kalimdor_ThunderBluffSwimming()
		FinalFantasylization_Swimming(1)
	end
--	SUBZONES:
--	Elder Rise
	function FinalFantasylization_ThunderBluff_SubzoneElderRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	High Rise
	function FinalFantasylization_ThunderBluff_SubzoneHighRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	Hunter Rise
	function FinalFantasylization_ThunderBluff_SubzoneHunterRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	Lower Rise
	function FinalFantasylization_ThunderBluff_SubzoneLowerRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	Middle Rise
	function FinalFantasylization_ThunderBluff_SubzoneMiddleRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--	Spirit Rise
	function FinalFantasylization_ThunderBluff_SubzoneSpiritRise()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end
--		Pools of Vision
	function FinalFantasylization_ThunderBluff_SubzonePoolsofVision()
		FinalFantasylization_PlayMusic(S .. ThunderBluffSong);
		FinalFantasylization_debugMsg("ThunderBluffSong")
	end

--'==========================================================================================
--' Kalimdor Zones: Ashenvale
--'==========================================================================================
--	Zone: Ashenvale
	function FinalFantasylization_KalimdorAshenvale()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorAshenvaleResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorAshenvaleSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Astranaar
	function FinalFantasylization_AllianceTownAstranaar()
		FinalFantasylization_AllianceTowns();
	end
--		Blackfathom Camp
	function FinalFantasylization_AllianceTownBlackfathomCamp()
		FinalFantasylization_AllianceTowns();
	end
--		Bolyun's Camp
	function FinalFantasylization_AllianceTownBolyunsCamp()
		FinalFantasylization_AllianceTowns();
	end
--		Forest Song
	function FinalFantasylization_AllianceTownForestSong()
		FinalFantasylization_AllianceTowns();
	end
--		House of Edune
	function FinalFantasylization_AllianceTownHouseofEdune()
		FinalFantasylization_AllianceTowns();
	end
--		Maestra's Post
	function FinalFantasylization_AllianceTownMaestrasPost()
		FinalFantasylization_AllianceTowns();
	end
--		Orendil's Retreat
	function FinalFantasylization_AllianceTownOrendilsRetreat()
		FinalFantasylization_AllianceTowns();
	end
--		Raynewood Retreat
	function FinalFantasylization_AllianceTownRaynewoodRetreat()
		FinalFantasylization_AllianceTowns();
	end
--			Raynewood Tower
		function FinalFantasylization_AllianceTownRaynewoodTower()
		FinalFantasylization_AllianceTowns();
	end
--		Silverwing Outpost
	function FinalFantasylization_AllianceTownSilverwingOutpost()
		FinalFantasylization_AllianceTowns();
	end
--		Stardust Spire
	function FinalFantasylization_AllianceTownStardustSpire()
		FinalFantasylization_AllianceTowns();
	end
--		The Shrine of Aessina
	function FinalFantasylization_AllianceTownTheShrineofAessina()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Hellscream's Watch
	function FinalFantasylization_HordeTownHellscreamsWatch()
		FinalFantasylization_HordeTowns();
	end
--		Kargathia Keep
	function FinalFantasylization_HordeTownKargathiaKeep()
		FinalFantasylization_HordeTowns();
	end
--		Silverwind Refuge
	function FinalFantasylization_HordeTownSilverwindRefuge()
		FinalFantasylization_HordeTowns();
	end
--		The Skunkworks
	function FinalFantasylization_HordeTownTheSkunkworks()
		FinalFantasylization_HordeTowns();
	end
--		Splintertree Post
	function FinalFantasylization_HordeTownSplintertreePost()
		FinalFantasylization_HordeTowns();
	end
--			Splintertree Mine
	function FinalFantasylization_HordeTownSplintertreeMine()
		FinalFantasylization_CaveSong();
	end
--		Warsong Labor Camp
	function FinalFantasylization_HordeTownWarsongLaborCamp()
		FinalFantasylization_HordeTowns();
	end
--		Zoram'gar Outpost
	function FinalFantasylization_HordeTownZoramgarOutpost()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:	
--	Bathran's Haunt
	function FinalFantasylization_SubzoneBathransHaunt()
		FinalFantasylization_ForestSong();
	end
--	Blackfathom Deeps
	function FinalFantasylization_SubzoneBlackfathomDeeps()
		FinalFantasylization_WaterSong();
	end
--	Bloodtooth Camp
	function FinalFantasylization_SubzoneBloodtoothCamp()
		FinalFantasylization_ForestSong();
	end
--	Bough Shadow
	function FinalFantasylization_SubzoneBoughShadow()
		FinalFantasylization_ForestSong();
	end
--	Demon Fall Canyon
	function FinalFantasylization_SubzoneDemonFallCanyon()
		FinalFantasylization_PlagueSong();
	end
--		Demon Fall Ridge
	function FinalFantasylization_SubzoneDemonFallRidge()
		FinalFantasylization_PlagueSong();
	end
--	The Dor'Danil Barrow Den
	function FinalFantasylization_SubzoneTheDorDanilBarrowDen()
		FinalFantasylization_CaveSong();
	end
--	Falfarren River
	function FinalFantasylization_SubzoneFalfarrenRiver()
		FinalFantasylization_LakeSong();
	end
--	Fallen Sky Lake
	function FinalFantasylization_SubzoneFallenSkyLake()
		FinalFantasylization_LakeSong();
	end
--	Felfire Hill
	function FinalFantasylization_SubzoneFelfireHill()
		FinalFantasylization_PlagueSong();
	end
--	Fire Scar Shrine
	function FinalFantasylization_SubzoneFireScarShrine()
		FinalFantasylization_ForestSong();
	end
--	Greenpaw Village
	function FinalFantasylization_SubzoneGreenpawVillage()
		FinalFantasylization_ForestSong();
	end
--	The Howling Vale
	function FinalFantasylization_SubzoneTheHowlingVale()
		FinalFantasylization_ForestSong();
	end
--	Remains of Iris Lake
	function FinalFantasylization_SubzoneRemainsofIrisLake()
		FinalFantasylization_LakeSong();
	end
--	Lake Falathim
	function FinalFantasylization_SubzoneLakeFalathim()
		FinalFantasylization_PlagueSong();
	end
--	Moonwell of Purity
	function FinalFantasylization_SubzoneMoonwellofPurity()
		FinalFantasylization_ForestSong();
	end
--	Moonwell of Cleansing
	function FinalFantasylization_SubzoneMoonwellofCleansing()
		FinalFantasylization_ForestSong();
	end
--	The Mor'shan Rampart
	function FinalFantasylization_SubzoneTheMorshanRampart()
		FinalFantasylization_ForestSong();
	end
--	Mystral Lake
	function FinalFantasylization_SubzoneMystralLake()
		FinalFantasylization_LakeSong();
	end
--	Night Run
	function FinalFantasylization_SubzoneNightRun()
		FinalFantasylization_ForestSong();
	end
--	Nightsong Woods
	function FinalFantasylization_SubzoneNightsongWoods()
		FinalFantasylization_ForestSong();
	end
--	The Ruins of Ordil'Aran
	function FinalFantasylization_SubzoneTheRuinsofOrdilAran()
		FinalFantasylization_PlagueSong();
	end
--	The Ruins of Stardust
	function FinalFantasylization_SubzoneTheRuinsofStardust()
		FinalFantasylization_ForestSong();
	end
--	Satyrnaar
	function FinalFantasylization_SubzoneSatyrnaar()
		FinalFantasylization_PlagueSong();
	end
--	The Shady Nook
	function FinalFantasylization_SubzoneTheShadyNook()
		FinalFantasylization_ForestSong();
	end
--	Silverwing Grove
	function FinalFantasylization_SubzoneSilverwingGrove()
		FinalFantasylization_ForestSong();
	end
--	Southfury River
	function FinalFantasylization_SubzoneSouthfuryRiver()
		FinalFantasylization_WaterSong();
	end
--	The Talondeep Path
	function FinalFantasylization_SubzoneTheTalondeepPath()
		FinalFantasylization_ForestSong();
	end
--		Talondeep Pass
	function FinalFantasylization_SubzoneTalondeepPass()
		FinalFantasylization_ForestSong();
	end
--	Thistlefur Village
	function FinalFantasylization_SubzoneThistlefurVillage()
		FinalFantasylization_ForestSong();
	end
--		Thistlefur Hold
	function FinalFantasylization_SubzoneThistlefurHold()
		FinalFantasylization_ForestSong();
	end
--	Thunder Peak
	function FinalFantasylization_SubzoneThunderPeak()
		FinalFantasylization_ForestSong();
	end
--	Warsong Lumber Camp
	function FinalFantasylization_SubzoneWarsongLumberCamp()
		FinalFantasylization_BattleGround();
	end
--	Xavian
	function FinalFantasylization_SubzoneXavian()
		FinalFantasylization_PlagueSong();
	end
--	The Zoram Strand
	function FinalFantasylization_SubzoneTheZoramStrand()
		FinalFantasylization_WaterSong();
	end
--		Ruuzel's Isle
	function FinalFantasylization_SubzoneRuuzelsIsle()
		FinalFantasylization_WaterSong();
	end
--'==========================================================================================
--' Kalimdor Zones: Azshara : Horde
--'==========================================================================================
--	Zone: Azshara
	function FinalFantasylization_KalimdorAzshara()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_ContestedSong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorAzsharaResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorAzsharaSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Horde:
--		Bilgewater Harbor
	function FinalFantasylization_HordeTownBilgewaterHarbor()
		FinalFantasylization_HordeTowns();
	end
--		Gallywix Pleasure Palace
	function FinalFantasylization_HordeTownGallywixPleasurePalace()
		FinalFantasylization_HordeTowns();
	end
--		Northern Rocketway Exchange
	function FinalFantasylization_HordeTownNorthernRocketwayExchange()
		FinalFantasylization_HordeTowns();
	end
--		Northern Rocketway Terminus
	function FinalFantasylization_HordeTownNorthernRocketwayTerminus()
		FinalFantasylization_HordeTowns();
	end
--		Orgrimmar Rear Gate
	function FinalFantasylization_HordeTownOrgrimmarRearGate()
		FinalFantasylization_HordeTowns();
	end
--		Orgrimmar Rocketway Exchange
	function FinalFantasylization_HordeTownOrgrimmarRocketwayExchange()
		FinalFantasylization_HordeTowns();
	end
--		The Secret Lab
	function FinalFantasylization_HordeTownTheSecretLab()
		FinalFantasylization_HordeTowns();
	end
--		Southern Rocketway Terminus
	function FinalFantasylization_HordeTownSouthernRocketwayTerminus()
		FinalFantasylization_HordeTowns();
	end
--		Valormok
	function FinalFantasylization_HordeTownValormok()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	The Ancient Grove
	function FinalFantasylization_SubzoneTheAncientGrove()

	end
--	*Arcane Pinnacle
	function FinalFantasylization_SubzoneArcanePinnacle()

	end
--	Bay of Storms
	function FinalFantasylization_SubzoneBayofStorms()

	end
--		Hetaera's Clutch
	function FinalFantasylization_SubzoneHetaerasClutch()

	end
--		Scalebeard's Cave
	function FinalFantasylization_SubzoneScalebeardsCave()

	end
--	*Bear's Head
	function FinalFantasylization_SubzoneBearsHead()

	end
--	Bitter Reaches
	function FinalFantasylization_SubzoneBitterReaches()

	end
--	Blackmaw Hold
	function FinalFantasylization_SubzoneBlackmawHold()

	end
--	*Darnassian Base Camp
	function FinalFantasylization_SubzoneDarnassianBaseCamp()

	end
--	Forlorn Ridge
	function FinalFantasylization_SubzoneForlornRidge()

	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()

	end
--	Haldarr Encampment
	function FinalFantasylization_SubzoneHaldarrEncampment()

	end
--	Horizon Scout
	function FinalFantasylization_SubzoneHorizonScout()

	end
--	*Hull of the Foebreaker
	function FinalFantasylization_SubzoneHulloftheFoebreaker()

	end
--	Jagged Reef
	function FinalFantasylization_SubzoneJaggedReef()

	end
--	Lake Mennar
	function FinalFantasylization_SubzoneLakeMennar()

	end
--	Legash Encampment
	function FinalFantasylization_SubzoneLegashEncampment()

	end
--	Mountainfoot Strip Mine
	function FinalFantasylization_SubzoneMountainfootStripMine()

	end
--	Ravencrest Monument
	function FinalFantasylization_SubzoneRavencrestMonument()

	end
--	Ruins of Arkkoran
	function FinalFantasylization_SubzoneRuinsofArkkoran()

	end
--	Ruins of Eldarath
	function FinalFantasylization_SubzoneRuinsofEldarath()

	end
--		Temple of Zin-Malor
	function FinalFantasylization_SubzoneTempleofZinMalor()

	end
--	Ruins of Nordressa
	function FinalFantasylization_SubzoneRuinsofNordressa()

	end
--	The Ruined Reaches
	function FinalFantasylization_SubzoneTheRuinedReaches()

	end
--		Rethress Sanctum
	function FinalFantasylization_SubzoneRethressSanctum()

	end
--	Sable Ridge
	function FinalFantasylization_SubzoneSableRidge()

	end
--	Scalebeard's Cave
	function FinalFantasylization_SubzoneScalebeardsCave()

	end
--	Shadowsong Shrine
	function FinalFantasylization_SubzoneShadowsongShrine()

	end
--	The Shattered Strand
	function FinalFantasylization_SubzoneTheShatteredStrand()

	end
--	Southfury River
	function FinalFantasylization_SubzoneSouthfuryRiver()

	end
--	Southridge Beach
	function FinalFantasylization_SubzoneSouthridgeBeach()

	end
--	Storm Cliffs
	function FinalFantasylization_SubzoneStormCliffs()

	end
--	*Talrendis Point
	function FinalFantasylization_SubzoneTalrendisPoint()

	end
--	Timbermaw Hold
	function FinalFantasylization_SubzoneTimbermawHold()

	end
--	Tower of Eldara
	function FinalFantasylization_SubzoneTowerofEldara()

	end
--	Trial of Fire
	function FinalFantasylization_SubzoneTrialofFire()

	end
--	Trial of Frost
	function FinalFantasylization_SubzoneTrialofFrost()

	end
--	Trial of Shadow
	function FinalFantasylization_SubzoneTrialofShadow()

	end
--	Ursolan
	function FinalFantasylization_SubzoneUrsolan()

	end
--'==========================================================================================
--' Kalimdor Zones: Azuremyst Isle : Draenei
--'==========================================================================================
--	Zone: Azuremyst Isle
	function FinalFantasylization_KalimdorAzuremystIsle()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorAzuremystIsleResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorAzuremystIsleSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Draenei Start:
--		Crash Site
	function FinalFantasylization_Draenei_Start_CrashSite()
		FinalFantasylization_AllianceTowns();
	end
--			Ammen Fields
	function FinalFantasylization_Draenei_Start_AmmenFields()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--			Ammen Vale
	function FinalFantasylization_Draenei_Start_AmmenVale()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--			Nestlewood Hills
	function FinalFantasylization_Draenei_Start_NestlewoodHills()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--			Nestlewood Thicket
	function FinalFantasylization_Draenei_Start_NestlewoodThicket()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--			Shadow Ridge
	function FinalFantasylization_Draenei_Start_ShadowRidge()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--			Silverline Lake
	function FinalFantasylization_Draenei_Start_SilverlineLake()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Alliance:
--		Azure Watch
	function FinalFantasylization_AllianceTownAzureWatch()
		FinalFantasylization_AllianceTowns();
	end
--		Odesyus' Landing
	function FinalFantasylization_AllianceTownOdesyusLanding()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Ammen Ford
	function FinalFantasylization_SubzoneAmmenFord()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Bristlelimb Village
	function FinalFantasylization_SubzoneBristlelimbVillage()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Emberglade
	function FinalFantasylization_SubzoneEmberglade()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Fairbridge Strand
	function FinalFantasylization_SubzoneFairbridgeStrand()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Geezle's Camp
	function FinalFantasylization_SubzoneGeezlesCamp()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Menagerie Wreckage
	function FinalFantasylization_SubzoneMenagerieWreckage()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Moongraze Woods
	function FinalFantasylization_SubzoneMoongrazeWoods()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Moonwing Den
	function FinalFantasylization_SubzoneMoonwingDen()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Pod Cluster
	function FinalFantasylization_SubzonePodCluster()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Pod Wreckage
	function FinalFantasylization_SubzonePodWreckage()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Sacred Grove
	function FinalFantasylization_SubzoneTheSacredGrove()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Silting Shore
	function FinalFantasylization_SubzoneSiltingShore()
		FinalFantasylization_WaterSong();
	end
--	Silvermyst Isle
	function FinalFantasylization_SubzoneSilvermystIsle()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Stillpine Hold
	function FinalFantasylization_SubzoneStillpineHold()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Veiled Sea
	function FinalFantasylization_SubzoneTheVeiledSea()
		FinalFantasylization_WaterSong();
	end
--	Tides' Hollow
	function FinalFantasylization_SubzoneTidesHollow()
		FinalFantasylization_WaterSong();
	end
--	Traitor's Cove
	function FinalFantasylization_SubzoneTraitorsCove()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Valaar's Berth
	function FinalFantasylization_SubzoneValaarsBerth()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Wildwind Path
	function FinalFantasylization_SubzoneWildwindPath()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Wildwind Peak
	function FinalFantasylization_SubzoneWildwindPeak()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Wrathscale Point
	function FinalFantasylization_SubzoneWrathscalePoint()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--'==========================================================================================
--' Kalimdor Zones: Bloodmyst Isle
--'==========================================================================================
--	Zone: Bloodmyst Isle
	function FinalFantasylization_KalimdorBloodmystIsle()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorBloodmystIsleResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorBloodmystIsleSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Blood Watch
	function FinalFantasylization_AllianceTownBloodWatch()
		FinalFantasylization_AllianceTowns();
	end
--		Kessel's Crossing
	function FinalFantasylization_AllianceTownKesselsCrossing()
		FinalFantasylization_AllianceTowns();
	end
--		Vindicator's Rest
	function FinalFantasylization_AllianceTownVindicatorsRest()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Amberweb Pass
	function FinalFantasylization_SubzoneAmberwebPass()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Axxarien
	function FinalFantasylization_SubzoneAxxarien()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Beryl Coast
	function FinalFantasylization_SubzoneBerylCoast()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Blacksilt Shore
	function FinalFantasylization_SubzoneBlacksiltShore()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Bladewood
	function FinalFantasylization_SubzoneBladewood()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Bloodcurse Isle
	function FinalFantasylization_SubzoneBloodcurseIsle()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Bloodcursed Reef
	function FinalFantasylization_SubzoneTheBloodcursedReef()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Bloodwash
	function FinalFantasylization_SubzoneTheBloodwash()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Bristlelimb Enclave
	function FinalFantasylization_SubzoneBristlelimbEnclave()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Crimson Reach
	function FinalFantasylization_SubzoneTheCrimsonReach()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Cryo-Core
	function FinalFantasylization_SubzoneTheCryoCore()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Foul Pool
	function FinalFantasylization_SubzoneTheFoulPool()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Hidden Reef
	function FinalFantasylization_SubzoneTheHiddenReef()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Lost Fold
	function FinalFantasylization_SubzoneTheLostFold()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Middenvale
	function FinalFantasylization_SubzoneMiddenvale()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Mystwood
	function FinalFantasylization_SubzoneMystwood()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Nazzivian
	function FinalFantasylization_SubzoneNazzivian()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Ragefeather Ridge
	function FinalFantasylization_SubzoneRagefeatherRidge()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Ruins of Loreth'Aran
	function FinalFantasylization_SubzoneRuinsofLorethAran()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Talon Stand
	function FinalFantasylization_SubzoneTalonStand()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Tel'athion's Camp
	function FinalFantasylization_SubzoneTelathionsCamp()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Veiled Sea
	function FinalFantasylization_SubzoneTheVeiledSea()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Vector Coil
	function FinalFantasylization_SubzoneTheVectorCoil()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Veridian Point
	function FinalFantasylization_SubzoneVeridianPoint()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	The Warp Piston
	function FinalFantasylization_SubzoneTheWarpPiston()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Wrathscale Lair
	function FinalFantasylization_SubzoneWrathscaleLair()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Wyrmscar Island
	function FinalFantasylization_SubzoneWyrmscarIsland()	
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end

--'==========================================================================================
--' Kalimdor Zones: Darkshore : Alliance
--'==========================================================================================
--	Zone: Darkshore
	function FinalFantasylization_KalimdorDarkshore()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorDarkshoreResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorDarkshoreSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Auberdine Refugee Camp
	function FinalFantasylization_AllianceTownAuberdineRefugeeCamp()
		FinalFantasylization_AllianceTowns();
	end
--		Grove of the Ancients
	function FinalFantasylization_AllianceTownGroveoftheAncients()
		FinalFantasylization_AllianceTowns();
	end
--		Lor'danel
	function FinalFantasylization_AllianceTownLordanel()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Ameth'Aran
	function FinalFantasylization_SubzoneAmethAran()
		FinalFantasylization_PlagueSong();
	end
--	Bashal'Aran
	function FinalFantasylization_SubzoneBashalAran()
		FinalFantasylization_PlagueSong();
	end
--	Bashal'Aran Collapse
	function FinalFantasylization_SubzoneBashalAranCollapse()
		FinalFantasylization_PlagueSong();
	end
--	Blackwood Camp
	function FinalFantasylization_SubzoneBlackwoodCamp()
		FinalFantasylization_PlayMusic(S .. Alliance10Town);
		FinalFantasylization_debugMsg("Alliance10Town")
	end
--	Blackwood Den
	function FinalFantasylization_SubzoneBlackwoodDen()
		FinalFantasylization_CaveSong();
	end
--	Burning Strand
	function FinalFantasylization_SubzoneTheBlazingStrand()
		FinalFantasylization_ForestSong();
	end
--	Cliffspring Falls
	function FinalFantasylization_SubzoneCliffspringFalls()
		FinalFantasylization_WaterSong();
	end
--	Cliffspring Hollow
	function FinalFantasylization_SubzoneCliffspringHollow()
		FinalFantasylization_CaveSong();
	end
--	Cliffspring River
	function FinalFantasylization_SubzoneCliffspringRiver()
		FinalFantasylization_WaterSong();
	end
--	Earthshatter Cavern
	function FinalFantasylization_SubzoneEarthshatterCavern()
		FinalFantasylization_CaveSong();
	end
--	The Eye of the Vortex
	function FinalFantasylization_SubzoneTheEyeoftheVortex()
		FinalFantasylization_PlayMusic(S .. Alliance10Town);
		FinalFantasylization_debugMsg("Alliance10Town")
	end
--	The Long Wash
	function FinalFantasylization_SubzoneTheLongWash()
		FinalFantasylization_WaterSong();
	end
--	The Master's Glaive
	function FinalFantasylization_SubzoneTheMastersGlaive()
		FinalFantasylization_SwampSong();
	end
--	Maw of the Void
	function FinalFantasylization_SubzoneMawoftheVoid()
		FinalFantasylization_WaterSong();
	end
--	Mist's Edge
	function FinalFantasylization_SubzoneMistsEdge()
		FinalFantasylization_WaterSong();
	end
--	Moontouched Den
	function FinalFantasylization_SubzoneMoontouchedDen()
		FinalFantasylization_CaveSong();
	end
--	Nazj'vel
	function FinalFantasylization_SubzoneNazjvel()
		FinalFantasylization_CaveSong();
	end
--	Remtravel's Excavation
	function FinalFantasylization_SubzoneRemtravelsExcavation()
		FinalFantasylization_AllianceTowns();
	end
--	Ruins of Auberdine
	function FinalFantasylization_SubzoneRuinsofAuberdine()
		FinalFantasylization_SwampSong();
	end
--	Ruins of Lornesta
	function FinalFantasylization_SubzoneRuinsofLornesta()
		FinalFantasylization_WaterSong();
	end
--	Ruins of Mathystra
	function FinalFantasylization_SubzoneRuinsofMathystra()
		FinalFantasylization_PlagueSong();
	end
--	Shatterspear Pass
	function FinalFantasylization_SubzoneShatterspearPass()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
--	Shatterspear Vale
	function FinalFantasylization_SubzoneShatterspearVale()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
--	Shatterspear War Camp
	function FinalFantasylization_SubzoneShatterspearWarCamp()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
--	Tower of Althalaxx
	function FinalFantasylization_SubzoneTowerofAlthalaxx()
		FinalFantasylization_PlagueSong();
	end
--	Twilight Shore
	function FinalFantasylization_SubzoneTwilightShore()
		FinalFantasylization_WaterSong();
	end
--	Twilight Vale
	function FinalFantasylization_SubzoneTwilightVale()
		FinalFantasylization_ForestSong();
	end
--	The Veiled Sea
	function FinalFantasylization_SubzoneTheVeiledSea()
		FinalFantasylization_WaterSong();
	end
--	Wildbend River
	function FinalFantasylization_SubzoneWildbendRiver()
		FinalFantasylization_WaterSong();
	end
--	Withering Thicket
	function FinalFantasylization_SubzoneWitheringThicket()
		FinalFantasylization_ForestSong();
	end
--	Wreckage of the Silver Dawning
	function FinalFantasylization_SubzoneWreckageoftheSilverDawning()
		FinalFantasylization_LakeSong();
	end	
--'==========================================================================================
--' Kalimdor Zones: Desolace
--'==========================================================================================
--	Zone: Desolace
	function FinalFantasylization_KalimdorDesolace()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_KalimdorDesolaceResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorDesolaceSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Nijel's Point
	function FinalFantasylization_AllianceTownNijelsPoint()
		FinalFantasylization_AllianceTowns();
	end
--		Thargad's Camp
	function FinalFantasylization_AllianceTownThargadsCamp()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Furien's Post
	function FinalFantasylization_HordeTownFuriensPost()
		FinalFantasylization_HordeTowns();
	end
--		Shadowprey Village
	function FinalFantasylization_HordeTownShadowpreyVillage()
		FinalFantasylization_HordeTowns();
	end
--	Neutral
--		Ethel Rethor
	function FinalFantasylization_NeutralTownEthelRethor()
		FinalFantasylization_NeutralTowns();
	end
--		Karnum's Glade
	function FinalFantasylization_NeutralTownKarnumsGlade()
		FinalFantasylization_NeutralTowns();
	end
--		Thunk's Abode
	function FinalFantasylization_NeutralTownThunksAbode()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Bolgan's Hole
	function FinalFantasylization_SubzoneBolgansHole()

	end
--	Cenarion Wildlands
	function FinalFantasylization_SubzoneCenarionWildlands()

	end
--	Gelkis Village
	function FinalFantasylization_SubzoneGelkisVillage()

	end
--	Ghost Walker Post
	function FinalFantasylization_SubzoneGhostWalkerPost()

	end
--	Kodo Graveyard
	function FinalFantasylization_SubzoneKodoGraveyard()

	end
--	Magram Territory
	function FinalFantasylization_SubzoneMagramTerritory()

	end
--	Kormek's Hut
	function FinalFantasylization_SubzoneKormeksHut()

	end
--	Shok'thokar
	function FinalFantasylization_SubzoneShokthokar()

	end
--	Mannoroc Coven
	function FinalFantasylization_SubzoneMannorocCoven()

	end
--	Ranazjar Isle
	function FinalFantasylization_SubzoneRanazjarIsle()

	end
--	Sar'theris Strand
	function FinalFantasylization_SubzoneSartherisStrand()

	end
--	Sargeron
	function FinalFantasylization_SubzoneSargeron()

	end
--	Scrabblescrew's Camp
	function FinalFantasylization_SubzoneScrabblescrewsCamp()

	end
--	Shadowbreak Ravine
	function FinalFantasylization_SubzoneShadowbreakRavine()

	end
--	Slitherblade Shore
	function FinalFantasylization_SubzoneSlitherbladeShore()

	end
--	Tethris Aran
	function FinalFantasylization_SubzoneTethrisAran()

	end
--	Thunder Axe Fortress
	function FinalFantasylization_SubzoneThunderAxeFortress()

	end
--	Valley of Bones
	function FinalFantasylization_SubzoneValleyofBones()

	end
--	Valley of Spears
	function FinalFantasylization_SubzoneValleyofSpears()

	end
--		Maraudon
	function FinalFantasylization_SubzoneMaraudon()

	end
--	The Veiled Sea
	function FinalFantasylization_SubzoneTheVeiledSea()

	end
--'==========================================================================================
--' Kalimdor Zones: Durotar : Horde
--'==========================================================================================
--	Zone: Durotar
	function FinalFantasylization_KalimdorDurotar()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_LandSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorDurotarResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorDurotarSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Orc Start:
--		Valley of Trials
	function FinalFantasylization_Orc_Start_ValleyofTrials()
		FinalFantasylization_LandSong();
	end
--			Burning Blade Coven
	function FinalFantasylization_Orc_Start_BurningBladeCoven()
		FinalFantasylization_CaveSong();
	end
--			The Den
	function FinalFantasylization_Orc_Start_TheDen()
		FinalFantasylization_HordeTowns();
	end
--	Troll Start:
--		Echo Isles
	function FinalFantasylization_Troll_Start_EchoIsles()
		FinalFantasylization_BeachSong();
	end
--			Bloodtalon Shore
	function FinalFantasylization_Troll_Start_BloodtalonShore()
		FinalFantasylization_BeachSong();
	end
--			Darkspear Isle
	function FinalFantasylization_Troll_Start_DarkspearIsle()
		FinalFantasylization_BeachSong();
	end
--				Darkspear Hold
	function FinalFantasylization_Troll_Start_DarkspearHold()
		FinalFantasylization_BeachSong();
	end
--				Darkspear Training Grounds
	function FinalFantasylization_Troll_Start_DarkspearTrainingGrounds()
		FinalFantasylization_BeachSong();
	end
--			Spitescale Cove
	function FinalFantasylization_Troll_Start_SpitescaleCove()
		FinalFantasylization_BeachSong();
	end
--				Spitescale Cavern
	function FinalFantasylization_Troll_Start_SpitescaleCavern()
		FinalFantasylization_CaveSong();
	end
--			Zalazane's Fall
	function FinalFantasylization_Troll_Start_ZalazanesFall()
		FinalFantasylization_BeachSong();
	end
--	Horde:
--		Razor Hill
	function FinalFantasylization_HordeTownRazorHill()
		FinalFantasylization_HordeTowns();
	end
--			Razor Hill Barracks
	function FinalFantasylization_HordeTownRazorHillBarracks()
		FinalFantasylization_HordeTowns();
	end
--		Sen'jin Village
	function FinalFantasylization_HordeTownSenjinVillage()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Bladefist Bay
	function FinalFantasylization_SubzoneBladefistBay()
		FinalFantasylization_LandSong();
	end
--	Darkspear Strand
	function FinalFantasylization_SubzoneDarkspearStrand()
		FinalFantasylization_WaterSong();
	end
--	Deadeye Shore
	function FinalFantasylization_SubzoneDeadeyeShore()
		FinalFantasylization_WaterSong();
	end
--	Dranosh'ar Blockade
	function FinalFantasylization_SubzoneTheDranosharBlockade()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
--	Drygulch Ravine
	function FinalFantasylization_SubzoneDrygulchRavine()
		FinalFantasylization_LandSong();
	end
--	Dustwind Cave
	function FinalFantasylization_SubzoneDustwindCave()
		FinalFantasylization_CaveSong();
	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()
		FinalFantasylization_WaterSong();
	end
--	Hidden Path
	function FinalFantasylization_SubzoneHiddenPath()
		FinalFantasylization_LandSong();
	end
--	Jaggedswine Farm
	function FinalFantasylization_SubzoneJaggedswineFarm()
		FinalFantasylization_LandSong();
	end
--	Northwatch Foothold
	function FinalFantasylization_SubzoneNorthwatchFoothold()
		FinalFantasylization_LandSong();
	end
--	Razormane Grounds
	function FinalFantasylization_SubzoneRazormaneGrounds()
		FinalFantasylization_PlayMusic(S .. Alliance8Town);
		FinalFantasylization_debugMsg("Alliance8Town")
	end
--	Razorwind Canyon
	function FinalFantasylization_SubzoneRazorwindCanyon()
		FinalFantasylization_LandSong();
	end
--	Rocktusk Farm
	function FinalFantasylization_SubzoneRocktuskFarm()
		FinalFantasylization_LandSong();
	end
--	Scuttle Coast
	function FinalFantasylization_SubzoneScuttleCoast()
		FinalFantasylization_WaterSong();
	end
--	Shrine of the Dormant Flame
	function FinalFantasylization_SubzoneShrineoftheDormantFlame()
		FinalFantasylization_LandSong();
	end
--	Skull Rock
	function FinalFantasylization_SubzoneSkullRock()
		FinalFantasylization_LandSong();
	end
--	Southfury River
	function FinalFantasylization_SubzoneSouthfuryRiver()
		FinalFantasylization_WaterSong();
	end
--	Southfury Watershed
	function FinalFantasylization_SubzoneSouthfuryWatershed()
		FinalFantasylization_WaterSong();
	end
--	Spirit Rock
	function FinalFantasylization_SubzoneSpiritRock()
		FinalFantasylization_LandSong();
	end
--	Thunder Ridge
	function FinalFantasylization_SubzoneThunderRidge()
		FinalFantasylization_LandSong();
	end
--	Tiragarde Keep
	function FinalFantasylization_SubzoneTiragardeKeep()
		FinalFantasylization_PlayMusic(S .. Alliance8Town);
		FinalFantasylization_debugMsg("Alliance8Town")
	end
--	Tor'kren Farm
	function FinalFantasylization_SubzoneTorkrenFarm()
		FinalFantasylization_LandSong();
	end
--'==========================================================================================
--' Kalimdor Zones: Dustwallow Marsh
--'==========================================================================================
--	Zone: Dustwallow Marsh
	function FinalFantasylization_KalimdorDustwallowMarsh()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SwampSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_KalimdorDustwallowMarshResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorDustwallowMarshSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Theramore Isle
	function FinalFantasylization_AllianceTownTheramoreIsle()
		FinalFantasylization_AllianceTowns();
	end
--			Foothold Citadel
	function FinalFantasylization_AllianceTownFootholdCitadel()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Brackenwall Village
	function FinalFantasylization_HordeTownBrackenwallVillage()
		FinalFantasylization_HordeTowns();
	end
--	Neutral
--		Mudsprocket
	function FinalFantasylization_NeutralTownMudsprocket()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:
--	Alcaz Island
	function FinalFantasylization_SubzoneAlcazIsland()

	end
--	Blackhoof Village
	function FinalFantasylization_SubzoneBlackhoofVillage()

	end
--	Bloodfen Burrow
	function FinalFantasylization_SubzoneBloodfenBurrow()

	end
--	Bluefen
	function FinalFantasylization_SubzoneBluefen()

	end
--	Darkmist Cavern
	function FinalFantasylization_SubzoneDarkmistCavern()

	end
--	The Dragonmurk
	function FinalFantasylization_SubzoneTheDragonmurk()

	end
--		The Den of Flame
	function FinalFantasylization_SubzoneTheDenofFlame()

	end
--		Stonemaul Ruins
	function FinalFantasylization_SubzoneStonemaulRuins()

	end
--	Dreadmurk Shore
	function FinalFantasylization_SubzoneDreadmurkShore()

	end
--	Dustwallow Bay
	function FinalFantasylization_SubzoneDustwallowBay()

	end
--		Nat's Landing
	function FinalFantasylization_SubzoneNatsLanding()

	end
--		Tidefury Cove
	function FinalFantasylization_SubzoneTidefuryCove()

	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()

	end
--	Lost Point
	function FinalFantasylization_SubzoneLostPoint()

	end
--	North Point Tower
	function FinalFantasylization_SubzoneNorthPointTower()

	end
--	The Quagmire
	function FinalFantasylization_SubzoneTheQuagmire()

	end
--		Beezil's Wreck
	function FinalFantasylization_SubzoneBeezilsWreck()

	end
--		Direhorn Post
	function FinalFantasylization_SubzoneDirehornPost()

	end
--		Tabetha's Farm
	function FinalFantasylization_SubzoneTabethasFarm()

	end
--	Sentry Point
	function FinalFantasylization_SubzoneSentryPoint()

	end
--	Shady Rest Inn
	function FinalFantasylization_SubzoneShadyRestInn()

	end
--	Witch Hill
	function FinalFantasylization_SubzoneWitchHill()

	end
--		Swamplight Manor
	function FinalFantasylization_SubzoneSwamplightManor()

	end
--	Wyrmbog
	function FinalFantasylization_SubzoneWyrmbog()

	end
--		Emberstrife's Den
	function FinalFantasylization_SubzoneEmberstrifesDen()

	end
--		Onyxia's Lair
	function FinalFantasylization_SubzoneOnyxiasLair()

	end
--'==========================================================================================
--' Kalimdor Zones: Feralas
--'==========================================================================================
--	Zone: Feralas
	function FinalFantasylization_KalimdorFeralas()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_KalimdorFeralasResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorFeralasSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Dreamer's Rest
	function FinalFantasylization_AllianceTownDreamersRest()
		FinalFantasylization_AllianceTowns();
	end
--		Feathermoon Stronghold
	function FinalFantasylization_AllianceTownFeathermoonStronghold()
		FinalFantasylization_AllianceTowns();
	end
--		Shadebough
	function FinalFantasylization_AllianceTownShadebough()
		FinalFantasylization_AllianceTowns();
	end
--		Tower of Estulan
	function FinalFantasylization_AllianceTownTowerofEstulan()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Camp Ataya
	function FinalFantasylization_HordeTownCampAtaya()
		FinalFantasylization_HordeTowns();
	end
--		Camp Mojache
	function FinalFantasylization_HordeTownCampMojache()
		FinalFantasylization_HordeTowns();
	end
--		Stonemaul Hold
	function FinalFantasylization_HordeTownStonemaulHold()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Darkmist Ruins
	function FinalFantasylization_SubzoneDarkmistRuins()

	end
--	Dire Maul
	function FinalFantasylization_SubzoneDireMaul()

	end
--	Dream Bough
	function FinalFantasylization_SubzoneDreamBough()

	end
--	The Emerald Summit
	function FinalFantasylization_SubzoneTheEmeraldSummit()

	end
--	Feral Scar Vale
	function FinalFantasylization_SubzoneFeralScarVale()

	end
--	The Forgotten Coast
	function FinalFantasylization_SubzoneTheForgottenCoast()

	end
--	Frayfeather Highlands
	function FinalFantasylization_SubzoneFrayfeatherHighlands()

	end
--	Gordunni Outpost
	function FinalFantasylization_SubzoneGordunniOutpost()

	end
--	Grimtotem Compound
	function FinalFantasylization_SubzoneGrimtotemCompound()

	end
--	High Wilderness
	function FinalFantasylization_SubzoneHighWilderness()

	end
--	Jademir Lake
	function FinalFantasylization_SubzoneJademirLake()

	end
--	Lake Dumont
	function FinalFantasylization_SubzoneLakeDumont()

	end
--	Lariss Pavilion
	function FinalFantasylization_SubzoneLarissPavilion()

	end
--	Lower Wilds
	function FinalFantasylization_SubzoneLowerWilds()

	end
--	New Thalanaar
	function FinalFantasylization_SubzoneNewThalanaar()

	end
--	Oneiros
	function FinalFantasylization_SubzoneOneirosd()

	end
--	Rage Scar Hold
	function FinalFantasylization_SubzoneRageScarHold()

	end
--	Ruins of Isildien
	function FinalFantasylization_SubzoneRuinsofIsildien()

	end
--	Ruins of Ravenwind
	function FinalFantasylization_SubzoneRuinsofRavenwind()

	end
--	Ruins of Solarsal
	function FinalFantasylization_SubzoneRuinsofSolarsal()

	end
--	Sardor Isle
	function FinalFantasylization_SubzoneSardorIsle()

	end
--	Ruins of Feathermoon
	function FinalFantasylization_SubzoneRuinsofFeathermoon()

	end
--	The Steam Pools
	function FinalFantasylization_SubzoneTheSteamPools()

	end
--	The Twin Colossals
	function FinalFantasylization_SubzoneTheTwinColossals()

	end
--	Verdantis River
	function FinalFantasylization_SubzoneVerdantisRiver()

	end
--	Wildwind Lake
	function FinalFantasylization_SubzoneWildwindLake()

	end
--	Woodpaw Den
	function FinalFantasylization_SubzoneWoodpawDen()

	end
--	Woodpaw Hills
	function FinalFantasylization_SubzoneWoodpawHills()

	end
--	The Writhing Deep
	function FinalFantasylization_SubzoneTheWrithingDeep()

	end
--'==========================================================================================
--' Kalimdor Zones: Mulgore : Horde
--'==========================================================================================
--	Zone: Mulgore
	function FinalFantasylization_KalimdorMulgore()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorMulgoreResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorMulgoreSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Tauren Start:
--		Red Cloud Mesa
	function FinalFantasylization_Tauren_Start_RedCloudMesa()

	end
--			The Battleboar Pen
	function FinalFantasylization_Tauren_Start_TheBattleboarPen()

	end
--			Brambleblade Ravine
	function FinalFantasylization_Tauren_Start_BramblebladeRavine()

	end
--			Camp Narache
	function FinalFantasylization_Tauren_Start_CampNarache()
		FinalFantasylization_LandSong();
	end
--			Fargaze Mesa
	function FinalFantasylization_Tauren_Start_FargazeMesa()

	end
--			Thormantle's Hideout
	function FinalFantasylization_Tauren_Start_ThormantlesHideout()

	end
--			The Thornsnarl
	function FinalFantasylization_Tauren_Start_TheThornsnarl()

	end
--	Horde:
--		Bloodhoof Village
	function FinalFantasylization_HordeTownBloodhoofVillage()
		FinalFantasylization_HordeTowns();
	end
--		Camp Sungraze
	function FinalFantasylization_HordeTownCampSungraze()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:		
--	Bael'dun Digsite
	function FinalFantasylization_SubzoneBaeldunDigsite()

	end
--	The Golden Plains
	function FinalFantasylization_SubzoneTheGoldenPlains()

	end
--	The Great Gate
	function FinalFantasylization_SubzoneTheGreatGate()

	end
--	Kodo Rock
	function FinalFantasylization_SubzoneKodoRock()

	end
--	Palemane Rock
	function FinalFantasylization_SubzonePalemaneRock()

	end
--	Ravaged Caravan
	function FinalFantasylization_SubzoneRavagedCaravan()

	end
--	Red Rocks
	function FinalFantasylization_SubzoneRedRocks()

	end
--	The Rolling Plains
	function FinalFantasylization_SubzoneTheRollingPlains()

	end
--	Stonebull Lake
	function FinalFantasylization_SubzoneStonebullLake()

	end
--	Stonetalon Pass
	function FinalFantasylization_SubzoneStonetalonPass()

	end
--	Thunderhorn Water Well
	function FinalFantasylization_SubzoneThunderhornWaterWell()

	end
--	The Venture Co. Mine
	function FinalFantasylization_SubzoneTheVentureCoMine()

	end
--	Wildmane Water Well
	function FinalFantasylization_SubzoneWildmaneWaterWell()

	end
--	Windfury Ridge
	function FinalFantasylization_SubzoneWindfuryRidge()

	end
--	Winterhoof Water Well
	function FinalFantasylization_SubzoneWinterhoofWaterWell()

	end

--'==========================================================================================
--' Kalimdor Zones: Northern Barrens : Horde
--'==========================================================================================
--	Zone: Northern Barrens
	function FinalFantasylization_KalimdorNorthernBarrens()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorNorthernBarrensResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorNorthernBarrensSwimming()
		if ( SubZoneName == SZ["The Sludge Fen"] ) then
			FinalFantasylization_Swimming(2)
		else
			FinalFantasylization_Swimming(1)
		end
	end
--	TOWNS:
--	Horde:
--		The Crossroads
	function FinalFantasylization_HordeTownTheCrossroads()
		FinalFantasylization_HordeTowns();
	end
--		Far Watch Post
	function FinalFantasylization_HordeTownFarWatchPost()
		FinalFantasylization_HordeTowns();
	end
--		Grol'dom Farm
	function FinalFantasylization_HordeTownGroldomFarm()
		FinalFantasylization_HordeTowns();
	end
--		Mor'shan Base Camp
	function FinalFantasylization_HordeTownMorshanBaseCamp()
		FinalFantasylization_HordeTowns();
	end
--		The Mor'shan Rampart
	function FinalFantasylization_HordeTownTheMorshanRampart()
		FinalFantasylization_HordeTowns();
	end
--		Nozzlepot's Outpost
	function FinalFantasylization_HordeTownNozzlepotsOutpost()
		FinalFantasylization_HordeTowns();
	end
--	Neutral:
--		Ratchet
	function FinalFantasylization_NeutralTownRatchet()
		FinalFantasylization_NeutralTowns();
	end
--	SUBZONES:		
--	Boulder Lode Mine
	function FinalFantasylization_SubzoneBoulderLodeMine()
		FinalFantasylization_CaveSong();
	end
--	Dreadmist Den
	function FinalFantasylization_SubzoneDreadmistDen()
		FinalFantasylization_CaveSong();
	end
--	Dreadmist Peak
	function FinalFantasylization_SubzoneDreadmistPeak()
		FinalFantasylization_PlagueSong();
	end
--	The Dry Hills
	function FinalFantasylization_SubzoneTheDryHills()
		FinalFantasylization_SandSong();
	end
--	The Forgotten Pools
	function FinalFantasylization_SubzoneTheForgottenPools()
		FinalFantasylization_LakeSong();
	end
--	Fray Island
	function FinalFantasylization_SubzoneFrayIsland()
		FinalFantasylization_PlayMusic(S .. Alliance5Town);
		FinalFantasylization_debugMsg("Alliance5Town")
	end
--	Gold Road
	function FinalFantasylization_SubzoneGoldRoad()
		FinalFantasylization_SandSong();
	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()
		FinalFantasylization_WaterSong();
	end
--	Lushwater Oasis
	function FinalFantasylization_SubzoneLushwaterOasis()
		FinalFantasylization_LakeSong();
	end
--	The Merchant Coast
	function FinalFantasylization_SubzoneTheMerchantCoast()
		FinalFantasylization_WaterSong();
	end
--	Shrine of the Fallen Warrior
	function FinalFantasylization_SubzoneShrineoftheFallenWarrior()
		FinalFantasylization_PlayMusic(S .. Alliance4Town);
		FinalFantasylization_debugMsg("Alliance4Town")
	end
--	The Sludge Fen
	function FinalFantasylization_SubzoneTheSludgeFen()
		FinalFantasylization_SwampSong();
	end
--	Southern Gold Road
	function FinalFantasylization_SubzoneSouthernGoldRoad()
		FinalFantasylization_SandSong();
	end
--	Southfury River
	function FinalFantasylization_SubzoneSouthfuryRiver()
		FinalFantasylization_WaterSong();
	end
--	Thorn Hill
	function FinalFantasylization_SubzoneThornHill()
		FinalFantasylization_CaveSong();
	end
--	The Tidus Stair
	function FinalFantasylization_SubzoneTheTidusStair()
		FinalFantasylization_SandSong();
	end
--'==========================================================================================
--' Kalimdor Zones: Southern Barrens
--'==========================================================================================
--	Zone: Southern Barrens
	function FinalFantasylization_KalimdorSouthernBarrens()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong();
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_KalimdorSouthernBarrensResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorSouthernBarrensSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Alliance:
--		Fort Triumph
	function FinalFantasylization_AllianceTownFortTriumph()
		FinalFantasylization_AllianceTowns();
	end
--		Forward Command
	function FinalFantasylization_AllianceTownForwardCommand()
		FinalFantasylization_AllianceTowns();
	end
--		Honor's Stand
	function FinalFantasylization_AllianceTownHonorsStand()
		FinalFantasylization_AllianceTowns();
	end
--		Northwatch Hold
	function FinalFantasylization_AllianceTownNorthwatchHold()
		FinalFantasylization_AllianceTowns();
	end
--		Teegan's Expedition
	function FinalFantasylization_AllianceTownTeegansExpedition()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Camp Una'fe	
	function FinalFantasylization_HordeTownCampUnafe()
		FinalFantasylization_HordeTowns();
	end
--		Desolation Hold
	function FinalFantasylization_HordeTownDesolationHold()
		FinalFantasylization_HordeTowns();
	end
--		Hunter's Hill
	function FinalFantasylization_HordeTownHuntersHill()
		FinalFantasylization_HordeTowns();
	end
--		Overgrown Camp
	function FFinalFantasylization_HordeTownOvergrownCamp()
		FinalFantasylization_HordeTowns();
	end
--		Vendetta Point
	function FinalFantasylization_HordeTownVendettaPoint()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Bael Modan
	function FinalFantasylization_SubzoneBaelModan()

	end
--		Bael'dun Keep
	function FinalFantasylization_SubzoneBaeldunKeep()

	end
--		Bael Modan Excavation
	function FinalFantasylization_SubzoneBaelModanExcavation()

	end
--	Battlescar
	function FinalFantasylization_SubzoneBattlescar()

	end
--	Bramblescar
	function FinalFantasylization_SubzoneBramblescar()

	end
--	Fields of Blood
	function FinalFantasylization_SubzoneFieldsofBlood()
		FinalFantasylization_LandSong();
	end
--	Firestone Point
	function FinalFantasylization_SubzoneFirestonePoint()

	end
--	Frazzlecraz Motherlode
	function FinalFantasylization_SubzoneFrazzlecrazMotherlode()

	end
--	The Great Divide
	function FinalFantasylization_SubzoneTheGreatDivide()

	end
--	The Great Gate
	function FinalFantasylization_SubzoneTheGreatGate()
		FinalFantasylization_PlayMusic(S .. BattleGround3);
		FinalFantasylization_debugMsg("BattleGround3")
	end
--	The Great Sea
	function FinalFantasylization_SubzoneTheGreatSea()
		FinalFantasylization_WaterSong();
	end
--	The High Road
	function FinalFantasylization_SubzoneTheHighRoad()
		FinalFantasylization_LandSong();
	end
--	The Merchant Coast
	function FinalFantasylization_SubzoneTheMerchantCoast()
		FinalFantasylization_WaterSong();
	end
--	The Overgrowth
	function FinalFantasylization_SubzoneTheOvergrowth()
		FinalFantasylization_WarySong()
	end
--		The Nightmare Scar
	function FinalFantasylization_SubzoneTheNightmareScar()
		FinalFantasylization_WarySong()
	end
--	Razorfen Kraul
	function FinalFantasylization_SubzoneRazorfenKraul()

	end
--	Ruins of Taurajo
	function FinalFantasylization_SubzoneRuinsofTaurajo()
		FinalFantasylization_PlayMusic(S .. DeadSong);
		FinalFantasylization_debugMsg("DeadSong")
	end
--	Southern Gold Road
	function FinalFantasylization_SubzoneSouthernGoldRoad()

	end
--	Spearhead
	function FinalFantasylization_SubzoneSpearhead()

	end
--	The Stagnant Oasis
	function FinalFantasylization_SubzoneTheStagnantOasis()

	end
--'==========================================================================================
--' Kalimdor Zones: Stonetalon Mountains
--'==========================================================================================
--	Zone: Stonetalon Mountains
	function FinalFantasylization_KalimdorStonetalonMountains()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_LandSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	Zone Events:
--		Player is Resting
	function FinalFantasylization_KalimdorStonetalonMountainsResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorStonetalonMountainsSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Alliance:
--		Farwatcher's Glen
	function FinalFantasylization_AllianceTownFarwatchersGlen()
		FinalFantasylization_AllianceTowns();
	end
--		Mirkfallon Post
	function FinalFantasylization_AllianceTownMirkfallonPost()
		FinalFantasylization_AllianceTowns();
	end
--		Northwatch Expedition Base Camp
	function FinalFantasylization_AllianceTownNorthwatchExpeditionBaseCamp()
		FinalFantasylization_AllianceTowns();
	end
--		Thal'darah Overlook
	function FinalFantasylization_AllianceTownThaldarahOverlook()
		FinalFantasylization_AllianceTowns();
	end
--		Windshear Hold
	function FinalFantasylization_AllianceTownWindshearHold()
		FinalFantasylization_AllianceTowns();
	end
--	Horde:
--		Cliffwalker Post
	function FinalFantasylization_HordeTownCliffwalkerPost()
		FinalFantasylization_HordeTowns();
	end
--		The Fold
	function FinalFantasylization_HordeTownTheFold()
		FinalFantasylization_HordeTowns();
	end
--		Krom'gar Fortress
	function FinalFantasylization_HordeTownKromgarFortress()
		FinalFantasylization_HordeTowns();
	end
--		Malaka'jin
	function FinalFantasylization_HordeTownMalakajin()
		FinalFantasylization_HordeTowns();
	end
--		The Sludgewerks
	function FinalFantasylization_HordeTownTheSludgewerks()
		FinalFantasylization_HordeTowns();
	end
--		Sun Rock Retreat
	function FinalFantasylization_HordeTownSunRockRetreat()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:	
--	Battlescar Valley
	function FinalFantasylization_SubzoneBattlescarValley()
		FinalFantasylization_LandSong()
	end
--	Boulderslide Ravine
	function FinalFantasylization_SubzoneBoulderslideRavine()
		FinalFantasylization_ForestSong()
	end
--		Boulderslide Cavern
	function FinalFantasylization_SubzoneBoulderslideCavern()
		FinalFantasylization_CaveSong()
	end
--	Camp Aparaje
	function FinalFantasylization_SubzoneCampAparaje()
		FinalFantasylization_ForestSong()
	end
--	The Charred Vale
	function FinalFantasylization_SubzoneTheCharredVale()
		FinalFantasylization_LandSong()
	end
--	The Deep Reaches
	function FinalFantasylization_SubzoneTheDeepReaches()
		FinalFantasylization_CaveSong()
	end
--	Greatwood Vale
	function FinalFantasylization_SubzoneGreatwoodVale()
		FinalFantasylization_ForestSong()
	end
--	Grimtotem Post
	function FinalFantasylization_SubzoneGrimtotemPost()
		FinalFantasylization_ForestSong()
	end
--	Mirkfallon Lake
	function FinalFantasylization_SubzoneMirkfallonLake()
		FinalFantasylization_LakeSong()
	end
--	Sishir Canyon
	function FinalFantasylization_SubzoneSishirCanyon()
		FinalFantasylization_LandSong()
	end
--		Ruins of Eldre'thar
	function FinalFantasylization_SubzoneRuinsofEldrethar()
		FinalFantasylization_ForestSong()
	end
--	Stonetalon Peak
	function FinalFantasylization_SubzoneStonetalonPeak()
		FinalFantasylization_LandSong()
	end
--	The Talon Den
	function FinalFantasylization_SubzoneTheTalonDen()
		FinalFantasylization_CaveSong()
	end
--	Talondeep Pass
	function FinalFantasylization_SubzoneTalondeepPass()
		FinalFantasylization_LandSong()
	end
--	Thal'darah Grove
	function FinalFantasylization_SubzoneThaldarahGrove()
		FinalFantasylization_ForestSong()
	end
--	Trueshot Point
	function FinalFantasylization_SubzoneTrueshotPoint()
		FinalFantasylization_LandSong()
	end
--	Unearthed Grounds
	function FinalFantasylization_SubzoneUnearthedGrounds()
		FinalFantasylization_LandSong()
	end
--	Webwinder Hollow
	function FinalFantasylization_SubzoneWebwinderHollow()
		FinalFantasylization_PlagueSong()
	end
--	Webwinder Path
	function FinalFantasylization_SubzoneWebwinderPath()
		FinalFantasylization_ForestSong()
	end
--	Windshear Crag
	function FinalFantasylization_SubzoneWindshearCrag()
		FinalFantasylization_LandSong()
	end
--		Blackwolf River
	function FinalFantasylization_SubzoneBlackwolfRiver()
		FinalFantasylization_LakeSong()
	end
--		Cragpool Lake
	function FinalFantasylization_SubzoneCragpoolLake()
		FinalFantasylization_LakeSong()
	end
--		Windshear Heights
	function FinalFantasylization_SubzoneWindshearHeights()
		FinalFantasylization_LandSong()
	end
--		Windshear Mine
	function FinalFantasylization_SubzoneWindshearMine()
		FinalFantasylization_CaveSong()
	end
--		Windshear Valley
	function FinalFantasylization_SubzoneWindshearValley()
		FinalFantasylization_LandSong()
	end
--'==========================================================================================
--' Kalimdor Zones: Teldrassil
--'==========================================================================================
--	Zone: Teldrassil
	function FinalFantasylization_KalimdorTeldrassil()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			else
				FinalFantasylization_FriendlySong();
			end
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_KalimdorTeldrassilResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_KalimdorTeldrassilSwimming()
		FinalFantasylization_Swimming(1)
	end
--	TOWNS:
--	Night Elf Start:
--		Shadowglen
	function FinalFantasylization_NightElf_Start_Shadowglen()
		FinalFantasylization_FriendlySong();
	end
--			Aldrassil
	function FinalFantasylization_NightElf_Start_Aldrassil()
		FinalFantasylization_PlayMusic(S .. Alliance7Town);
		FinalFantasylization_debugMsg("Alliance7Town")
	end
--			Shadowthread Cave
	function FinalFantasylization_NightElf_Start_ShadowthreadCave()
		FinalFantasylization_CaveSong();
	end
--	Alliance:
--		Dolanaar
	function FinalFantasylization_AllianceTownDolanaar()
		FinalFantasylization_AllianceTowns();
	end
--		Rut'theran Village
	function FinalFantasylization_AllianceTownRuttheranVillage()
		FinalFantasylization_AllianceTowns();
	end
--		Wellspring Hovel
	function FinalFantasylization_AllianceTownWellspringHovel()
		FinalFantasylization_AllianceTowns();
	end
--	SUBZONES:
--	Ban'ethil Hollow
	function FinalFantasylization_SubzoneBanethilHollow()
		FinalFantasylization_ForestSong();
	end
--		Ban'ethil Barrow Den
	function FinalFantasylization_SubzoneBanethilBarrowDen()
		FinalFantasylization_SwampSong();
	end
--	The Cleft
	function FinalFantasylization_SubzoneTheCleft()
		FinalFantasylization_ForestSong();
	end
--	Fel Rock
	function FinalFantasylization_SubzoneFelRock()
		FinalFantasylization_CaveSong();
	end
--	Gnarlpine Hold
	function FinalFantasylization_SubzoneGnarlpineHold()
		FinalFantasylization_ForestSong();
	end
--	Lake Al'Ameth
	function FinalFantasylization_SubzoneLakeAlAmeth()
		FinalFantasylization_LakeSong();
	end
--	The Oracle Glade
	function FinalFantasylization_SubzoneTheOracleGlade()
		FinalFantasylization_FriendlySong();
	end
--	Pools of Arlithrien
	function FinalFantasylization_SubzonePoolsofArlithrien()
		FinalFantasylization_LakeSong();
	end
--	Starbreeze Village
	function FinalFantasylization_SubzoneStarbreezeVillage()
		FinalFantasylization_ForestSong();
	end
--	The Veiled Sea
	function FinalFantasylization_SubzoneTheVeiledSea()
		FinalFantasylization_WaterSong();
	end
--	Wellspring Lake
	function FinalFantasylization_SubzoneWellspringLake()
		FinalFantasylization_LakeSong();
	end
--	Wellspring River
	function FinalFantasylization_SubzoneWellspringRiver()
		FinalFantasylization_LakeSong();
	end

--###########################################################################################
--##   MAELSTROM ZONES
--###########################################################################################		
--'==========================================================================================
--' Maelstrom Zones: Kezan : Horde
--'==========================================================================================
--	Zone: Kezan
	function FinalFantasylization_Maelstrom_Kezan()
		FinalFantasylization_PlayMusic(S .. Alliance1Town);
		FinalFantasylization_debugMsg("Alliance1Town")
	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_Maelstrom_KezanResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_Maelstrom_KezanSwimming()
		FinalFantasylization_Swimming(2)
	end
--	TOWNS:
--	Goblin Start:
--		Bilgewater Port
	function FinalFantasylization_Goblin_Start_BilgewaterPort()
		FinalFantasylization_PlayMusic(S .. Horde2Town);
		FinalFantasylization_debugMsg("Horde2Town")
	end
--		Drudgetown
	function FinalFantasylization_Goblin_Start_Drudgetown()
		FinalFantasylization_PlayMusic(S .. Alliance10Town);
		FinalFantasylization_debugMsg("Alliance10Town")
	end
--		First Bank of Kezan
	function FinalFantasylization_Goblin_Start_FirstBankofKezan()

	end
--		Gallywix's Villa
	function FinalFantasylization_Goblin_Start_GallywixsVilla()

	end
--		Gallywix's Yacht
	function FinalFantasylization_Goblin_Start_GallywixsYacht()

	end
--		Kaja'mine
	function FinalFantasylization_Goblin_Start_Kajamine()
		FinalFantasylization_CaveSong();
	end
--		Kajaro Field
	function FinalFantasylization_Goblin_Start_KajaroField()

	end
--		KTC Headquarters
	function FinalFantasylization_Goblin_Start_KTCHeadquarters()
		FinalFantasylization_PlayMusic(S .. Alliance8Town);
		FinalFantasylization_debugMsg("Alliance8Town")
	end
--		The Slick
	function FinalFantasylization_Goblin_Start_TheSlick()

	end
--		South Seas
	function FinalFantasylization_Goblin_Start_SouthSeas()

	end
--		Swindle Street
	function FinalFantasylization_Goblin_Start_SwindleStreet()

	end
--		The Pipe
	function FinalFantasylization_Goblin_Start_ThePipe()

	end
--'==========================================================================================
--' Maelstrom Zones: Lost Isles : Goblin
--'==========================================================================================
--	Zone: Lost Isles
	function FinalFantasylization_MaelstromLostIsles()

	end
--	Zone Event:
--		Player is Resting
	function FinalFantasylization_MaelstromTheLostIslesResting()
		FinalFantasylization_Sleeping()
	end
--		Player is Swimming
	function FinalFantasylization_MaelstromTheLostIslesSwimming()
		FinalFantasylization_Swimming(2)
	end
--	Goblin Start:
--	TOWNS:
--	Alliance Beachhead
	function FinalFantasylization_Goblin_Start_AllianceBeachhead()
		FinalFantasylization_HordeTowns();
	end
--	Horde Base Camp
	function FinalFantasylization_Goblin_Start_HordeBaseCamp()
		FinalFantasylization_HordeTowns();
	end
--	Shipwreck Shore
	function FinalFantasylization_Goblin_Start_ShipwreckShore()
		FinalFantasylization_HordeTowns();
	end
--	Town-In-A-Box
	function FinalFantasylization_Goblin_Start_TownInABox()
		FinalFantasylization_HordeTowns();
	end
--	Warchief's Lookout
	function FinalFantasylization_Goblin_Start_WarchiefsLookout()
		FinalFantasylization_HordeTowns();
	end
--	Wild Overlook
	function FinalFantasylization_Goblin_Start_WildOverlook()
		FinalFantasylization_HordeTowns();
	end
--	SUBZONES:
--	Bilgewater Lumber Yard
	function FinalFantasylization_Goblin_Start_BilgewaterLumberYard()

	end
--	Dire Strait
	function FinalFantasylization_Goblin_Start_DireStrait()

	end
--	Draka's Fury
	function FinalFantasylization_Goblin_Start_DrakasFury()

	end
--	Gallywix Docks
	function FinalFantasylization_Goblin_Start_GallywixDocks()

	end
--	Gallywix Labor Mine
	function FinalFantasylization_Goblin_Start_GallywixLaborMine()

	end
--	The Great Sea
	function FinalFantasylization_Goblin_Start_TheGreatSea()

	end
--	Kaja'mite Cavern
	function FinalFantasylization_Goblin_Start_KajamiteCavern()

	end
--	KTC Oil Platform
	function FinalFantasylization_Goblin_Start_KTCOilPlatform()

	end
--	Landing Site
	function FinalFantasylization_Goblin_Start_LandingSite()

	end
--	Lost Caldera
	function FinalFantasylization_Goblin_Start_LostCaldera()

	end
--	Lost Peak
	function FinalFantasylization_Goblin_Start_LostPeak()

	end
--	Oomlot Village
	function FinalFantasylization_Goblin_Start_OomlotVillage()

	end
--	Oostan
	function FinalFantasylization_Goblin_Start_Oostan()

	end
--	Oostan Nord
	function FinalFantasylization_Goblin_Start_OostanNord()

	end
--	Oostan Ost
	function FinalFantasylization_Goblin_Start_OostanOst()

	end
--	Oostan Sor
	function FinalFantasylization_Goblin_Start_OostanSor()

	end
--	Raptor Rise
	function FinalFantasylization_Goblin_Start_RaptorRise()

	end
--	Ruins of Vashj'elan
	function FinalFantasylization_Goblin_Start_RuinsofVashjelan()

	end
--	The Savage Glen
	function FinalFantasylization_Goblin_Start_TheSavageGlen()

	end
--	Scorched Gully
	function FinalFantasylization_Goblin_Start_ScorchedGully()

	end
--	Sky Falls
	function FinalFantasylization_Goblin_Start_SkyFalls()

	end
--	The Slave Pits
	function FinalFantasylization_Goblin_Start_TheSlavePits()

	end
--	Tranquil Coast
	function FinalFantasylization_Goblin_Start_TranquilCoast()

	end
--	Vashj'elan Spawning Pool
	function FinalFantasylization_Goblin_Start_VashjelanSpawningPool()

	end
--	Vengeance Wake
	function FinalFantasylization_Goblin_Start_VengeanceWake()

	end
--	Verdant Highlands
	function FinalFantasylization_Goblin_Start_VerdantHighlands()

	end
--	The Vicious Vale
	function FinalFantasylization_Goblin_Start_TheViciousVale()

	end
--	Volcanoth's Lair
	function FinalFantasylization_Goblin_Start_VolcanothsLair()

	end

	--#############
	--## PVP ZONES
	--#############
	function FinalFantasylization_FriendlySong()
		FinalFantasylization_PlayMusic(S .. FriendlySong);
		FinalFantasylization_debugMsg("FriendlySong")
	end

	function FinalFantasylization_ContestedSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
		FinalFantasylization_debugMsg("ContestedSong")
	end

	function FinalFantasylization_HostileSong()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end

	--#############
	--## ZONE SONGS
	--#############
	function FinalFantasylization_SnowSong()
		FinalFantasylization_PlayMusic(S .. SnowSong);
		FinalFantasylization_debugMsg("SnowSong")
	end
	function FinalFantasylization_ForestSong()
		FinalFantasylization_PlayMusic(S .. ForestSong);
		FinalFantasylization_debugMsg("ForestSong")
	end
	function FinalFantasylization_SandSong()
		FinalFantasylization_PlayMusic(S .. SandSong);
		FinalFantasylization_debugMsg("SandSong")
	end
	function FinalFantasylization_PlagueSong()
		FinalFantasylization_PlayMusic(S .. PlagueSong);
		FinalFantasylization_debugMsg("PlagueSong")
	end
	function FinalFantasylization_SwampSong()
		FinalFantasylization_PlayMusic(S .. SwampSong);
		FinalFantasylization_debugMsg("SwampSong")
	end
	function FinalFantasylization_BeachSong()
		FinalFantasylization_PlayMusic(S .. BeachSong);
		FinalFantasylization_debugMsg("BeachSong")
	end
	function FinalFantasylization_LandSong()
		FinalFantasylization_PlayMusic(S .. LandSong);
		FinalFantasylization_debugMsg("LandSong")
	end
	function FinalFantasylization_LakeSong()
		FinalFantasylization_PlayMusic(S .. LakeSong);
		FinalFantasylization_debugMsg("LakeSong")
	end
	function FinalFantasylization_WaterSong()
		FinalFantasylization_PlayMusic(S .. WaterSong);
		FinalFantasylization_debugMsg("WaterSong")
	end
	function FinalFantasylization_CaveSong()
		FinalFantasylization_PlayMusic(S .. CaveSong);
		FinalFantasylization_debugMsg("CaveSong")
	end
	function FinalFantasylization_WarySong()
		FinalFantasylization_PlayMusic(S .. WarySong);
		FinalFantasylization_debugMsg("WarySong")
	end

	--################
	--## DUNGEON SONGS
	--################
		-- Vanilla WoW Dungeons
	function FinalFantasylization_Dungeon_RagefireChasmSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_WailingCavernsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DeadminesSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShadowfangKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BlackfathomDeepsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_StormwindStockadeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_GnomereganSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_RazorfenKraulSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ScarletMonasterySong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_RazorfenDownsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UldamanSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ZulFarrakSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_MaraudonSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TempleofAtalHakkarSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BlackrockDepthsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_LowerBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UpperBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DireMaulSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_StratholmeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ScholomanceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
		-- Burning Crusade Dungeons
	function FinalFantasylization_Dungeon_HellfireRampartsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BloodFurnaceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SlavePensSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UnderbogSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ManaTombsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AuchenaiCryptsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SethekkHallsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SteamvaultSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShatteredHallsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShadowLabyrinthSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_EscapefromDurnholdeKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BotanicaSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ArcatrazSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_MagistersTerraceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
		-- Wrath of the Lich King Dungeons	
	function FinalFantasylization_Dungeon_UtgardeKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheNexusSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AzjolNerubSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AhnkahetTheOldKingdomSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DrakTharonKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_VioletHoldSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_GundrakSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofStoneSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheOculusSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofLightningSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UtgardePinnacleSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheCullingofStratholmeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TrialoftheChampionSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ForgeofSoulsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_PitofSaronSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofReflectionSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end

	--#############
	--## RAID SONGS
	--#############
	function FinalFantasylization_RaidSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end

	--#############
	--## FANFARE
	--#############
	function FinalFantasylization_Fanfare()
		FinalFantasylization_PlayFile(S .. Fanfare );
		FinalFantasylization_debugMsg("Fanfare")
	end

	--################
	--## FIGHTING SONGS
	--################
	function FinalFantasylization_WorldBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_DungeonBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_WorldElite()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_BattlegroundBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_BattlegroundPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldNormalPVE()
		FinalFantasylization_PlayMusic(S .. Fighting1Song);
		FinalFantasylization_debugMsg("Fighting1Song")
	end

	--#############
	--## TOWN SONGS
	--#############
	function FinalFantasylization_HostileTowns()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end
	function FinalFantasylization_NeutralTowns()
		local x = math.random(1, 20);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			elseif x == 10 then
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			elseif x == 11 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 12 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 13 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 14 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 15 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 16 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Townn")
			elseif x == 17 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 18 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 19 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_AllianceTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_HordeTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			else
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			end
	end

	--###############
	--## BATTLEGROUNDS
	--###############
	function FinalFantasylization_BattleGround()
		local x = math.random(1, 5);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. BattleGround1);
				FinalFantasylization_debugMsg("BattleGround1")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. BattleGround2);
				FinalFantasylization_debugMsg("BattleGround2")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. BattleGround3);
				FinalFantasylization_debugMsg("BattleGround3")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. BattleGround4);
				FinalFantasylization_debugMsg("BattleGround4")
			else
				FinalFantasylization_PlayMusic(S .. BattleGround5);
				FinalFantasylization_debugMsg("BattleGround5")
			end
	end

	--#############
	--## DIE/DEAD
	--#############
	function FinalFantasylization_PlayerDie()
		FinalFantasylization_PlayMusic(S .. DieSong);
		FinalFantasylization_debugMsg("DieSong")
	end
	function FinalFantasylization_PlayerGhost()
		FinalFantasylization_PlayMusic(S .. DeadSong);
		FinalFantasylization_debugMsg("DeadSong")
	end

	--#############
	--## SLEEPING
	--#############
	function FinalFantasylization_Sleeping()
		FinalFantasylization_PlayMusic(S .. SleepSong);
		FinalFantasylization_debugMsg("SleepSong")
	end

	--#############
	--## SWIMMING
	--#############
	function FinalFantasylization_Swimming(Zone)
		if Zone == 1 then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Swimming)
			FinalFantasylization_PlayMusic(S .. SwimSong);  -- Normal Swim song
			FinalFantasylization_debugMsg("SwimSong") -- Normal Swim song
			return
		elseif Zone == 2 then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Swimming2)
			FinalFantasylization_PlayMusic(S .. DarkSwimSong);  -- alt Swim song
			FinalFantasylization_debugMsg("DarkSwimSong") -- alt Swim song
		end
	end

	--#############
	--## TAXI
	--#############
	function FinalFantasylization_HordeTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	
	--#############
	--## FLYING
	--#############
	function FinalFantasylization_HordeFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end

	--#############
	--## MOUNTED
	--#############
	function FinalFantasylization_Mounted()					
		local x = math.random(1, 3);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Mounted1Song);
				FinalFantasylization_debugMsg("Mounted1Song")
			elseif x == 2 then 
				FinalFantasylization_PlayMusic(S .. Mounted2Song);
				FinalFantasylization_debugMsg("Mounted2Song")
			else 
				FinalFantasylization_PlayMusic(S .. Mounted3Song);
				FinalFantasylization_debugMsg("Mounted3Song")
			end
	end
	function FinalFantasylization_MountedEscape()		
		local x = math.random(1, 4);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Escape1Song);
				FinalFantasylization_debugMsg("Escape1Song")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Escape2Song);
				FinalFantasylization_debugMsg("Escape2Song")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Escape3Song);
				FinalFantasylization_debugMsg("Escape3Song")
			else
				FinalFantasylization_PlayMusic(S .. Escape4Song);
				FinalFantasylization_debugMsg("Escape4Song")
			end
	end
	
	--###############
	-- ## DANCE MUSIC
	--###############
	function FinalFantasylization_BloodElfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. BloodElfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_BloodElfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. BloodElfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DraeneiFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DraeneiFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DraeneiMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DraeneiMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DwarfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DwarfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DwarfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DwarfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_GnomeFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GnomeFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_GnomeMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GnomeMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
		function FinalFantasylization_GoblinFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GoblinFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_GoblinMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GoblinMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_HumanFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. HumanFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_HumanMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. HumanMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_NightElfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. NightElfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_NightElfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. NightElfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_OrcFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. OrcFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_OrcMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. OrcMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TaurenFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TaurenFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TaurenMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TaurenMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TrollFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TrollFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TrollMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TrollMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_UndeadFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. UndeadFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_UndeadMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. UndeadMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_WorgenFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. WorgenFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_WorgenMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. WorgenMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidBearDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidBearDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidCatDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidCatDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidOwlBearDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidOwlBearDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidTreeFormDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidTreeFormDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_WolfDanceSong()
		FinalFantasylization_PlayMusic( SS .. WolfDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	
--END of music calls
        CoreSavedVariable = soundPackID
        for i = 1, NUM_SOUND_PACKS do -- set NUM_SOUND_PACKS in the Core
            local func = _G["SoundPack" .. soundPackID  .. "_SetEnabled"]
            if i ~= soundPackID and func then
                func(not enabled)
            end
        end
    end
end
_G["SoundPack" .. soundPackID  .. "_GetEnabled"] = function()
    return flag
end