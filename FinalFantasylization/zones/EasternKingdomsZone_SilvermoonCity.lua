function FinalFantasylization_EasternKingdomsZones_SilvermoonCity()
--'==========================================================================================
--' Eastern Kingdoms Capital: Silvermoon City : Horde
--'==========================================================================================
--	Zone: SilvermoonCity		FinalFantasylization_EasternKingdoms_SilvermoonCity()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdoms_SilvermoonCityResting()
--		Player is Swimming		FinalFantasylization_EasternKingdoms_SilvermoonCitySwimming()
--
--	SUBZONES:
--	The Bazaar				FinalFantasylization_SilvermoonCity_SubzoneTheBazaar()
--		The Sanctum				FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
--	Court of the Sun		FinalFantasylization_SilvermoonCity_SubzoneCourtoftheSun()
--		Sunfury Spire			FinalFantasylization_SilvermoonCity_SubzoneSunfurySpire()
--			Inner Sanctum			FinalFantasylization_SilvermoonCity_SubzoneInnerSanctum()
--	Farstriders' Square		FinalFantasylization_SilvermoonCity_SubzoneFarstridersSquare()
--	Murder Row				FinalFantasylization_SilvermoonCity_SubzoneMurderRow()
--		The Sanctum				FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
--	The Royal Exchange		FinalFantasylization_SilvermoonCity_SubzoneTheRoyalExchange()
--	The Shepherd's Gate		FinalFantasylization_SilvermoonCity_SubzoneTheShepherdsGate()
--	Walk of Elders			FinalFantasylization_SilvermoonCity_SubzoneWalkofElders()

	--'==========================================================================================
	--' Silvermoon City: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_EasternKingdoms_SilvermoonCityResting()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
		elseif IsSwimming() and FinalFantasylizationOptions.Swim == true then
			if FinalFantasylization_CurrentZone ~= "Swimming" then
				FinalFantasylization_CurrentZone = "Swimming"
				FinalFantasylization_EasternKingdoms_SilvermoonCitySwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Bazaar
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Bazaar"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheBazaar()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Sanctum
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Court of the Sun
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Court of the Sun"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneCourtoftheSun()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Sunfury Spire
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Sunfury Spire"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSunfurySpire()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Inner Sanctum
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Inner Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneInnerSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Farstriders' Square
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Farstriders' Square"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneFarstridersSquare()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Murder Row
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Murder Row"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneMurderRow()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Sanctum
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Royal Exchange
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Royal Exchange"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheRoyalExchange()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Shepherd's Gate
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Shepherd's Gate"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheShepherdsGate()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Walk of Elders
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Walk of Elders"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneWalkofElders()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_SilvermoonCity()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Silvermoon City: Alliance Check
	--'==========================================================================================
	elseif ( factionEnglish == "Alliance" ) then
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