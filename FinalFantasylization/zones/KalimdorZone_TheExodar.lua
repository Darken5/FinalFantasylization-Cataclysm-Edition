function FinalFantasylization_KalimdorZones_TheExodar()
--'==========================================================================================
--' Kalimdor Capital: The Exodar : Alliance
--'==========================================================================================
--	Zone: The Exodar		FinalFantasylization_Kalimdor_TheExodar()
--
--	SUBZONES:
--	The Crystal Hall		FinalFantasylization_TheExodar_SubzoneTheCrystalHall()
--	Seat of the Naaru		FinalFantasylization_TheExodar_SubzoneSeatoftheNaaru()
--	Trader's Tier			FinalFantasylization_TheExodar_SubzoneTradersTier()
--	The Vault of Lights		FinalFantasylization_TheExodar_SubzoneTheVaultofLights()
	--'==========================================================================================
	--' The Exodar: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--' The Exodar: The Crystal Hall
	--'==========================================================================================
		if ( SubZoneName == SZ["The Crystal Hall"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTheCrystalHall()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: Seat of the Naaru
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Seat of the Naaru"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneSeatoftheNaaru()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: Trader's Tier
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Trader's Tier"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTradersTier()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: The Vault of Lights
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Vault of Lights"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTheVaultofLights()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_KalimdorZones_TheExodar()
			else
				return
			end	
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' The Exodar: Horde Check
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