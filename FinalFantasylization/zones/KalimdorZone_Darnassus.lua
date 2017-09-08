function FinalFantasylization_KalimdorZones_Darnassus()
--'==========================================================================================
--' Kalimdor Capital: Darnassus : Alliance
--'==========================================================================================
--	Zone: Darnassus			FinalFantasylization_Kalimdor_Darnassus()
--
--	SUBZONES:
--	Cenarion Enclave			FinalFantasylization_Darnassus_SubzoneCenarionEnclave()
--	Craftsmen's Terrace			FinalFantasylization_Darnassus_SubzoneCraftsmensTerrace()
--	Howling Oak					FinalFantasylization_Darnassus_SubzoneHowlingOak()
--	The Temple Gardens			FinalFantasylization_Darnassus_SubzoneTheTempleGardens()
--	The Temple of the Moon		FinalFantasylization_Darnassus_SubzoneTheTempleoftheMoon()
--	Tradesmen's Terrace			FinalFantasylization_Darnassus_SubzoneTradesmensTerrace()
--	Warrior's Terrace			FinalFantasylization_Darnassus_SubzoneWarriorsTerrace()
	--'==========================================================================================
	--' Darnassus: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--' Stormwind City: Cenarion Enclave
	--'==========================================================================================
		if ( SubZoneName == SZ["Cenarion Enclave"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneCenarionEnclave()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: Craftsmen's Terrace
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Craftsmen's Terrace"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneCraftsmensTerrace()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: The Howling Oak
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Howling Oak"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneTheHowlingOak()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: The Temple Gardens
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Temple Gardens"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneTheTempleGardens()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: Temple of the Moon
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Temple of the Moon"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneTempleoftheMoon()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: Tradesmen's Terrace
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Tradesmen's Terrace"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneTradesmensTerrace()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus: Warrior's Terrace
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Warrior's Terrace"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Darnassus_SubzoneWarriorsTerrace()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Darnassus END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Kalimdor_Darnassus()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Darnassus: Horde Check
	--'==========================================================================================
	elseif ( factionEnglish == "Horde" ) then
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
	end
end