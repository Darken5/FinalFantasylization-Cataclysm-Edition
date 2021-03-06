function FinalFantasylization_KalimdorZones_Orgrimmar()
--'==========================================================================================
--' Kalimdor Capital: Orgrimmar : Horde
--'==========================================================================================
--	Zone: Orgrimmar		FinalFantasylization_Kalimdor_Orgrimmar()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_Kalimdor_OrgrimmarResting()
--		Player is Swimming		FinalFantasylization_Kalimdor_OrgrimmarSwimming()
--
--	SUBZONES:
--	Cleft of Shadow			FinalFantasylization_Orgrimmar_SubzoneCleftofShadow()
--		Ragefire Chasm			FinalFantasylization_Orgrimmar_SubzoneRagefireChasm()
--	The Drag				FinalFantasylization_Orgrimmar_SubzoneTheDrag()
--	Goblin Slums			FinalFantasylization_Orgrimmar_SubzoneGoblinSlums()
--	Hall of Legends			FinalFantasylization_Orgrimmar_SubzoneHallofLegends()
--	Valley of Honor			FinalFantasylization_Orgrimmar_SubzoneValleyofHonor()
--		Hall of the Brave		FinalFantasylization_Orgrimmar_SubzoneHalloftheBrave()
--		The Ring of Valor		FinalFantasylization_Orgrimmar_SubzoneTheRingofValor()
--	Valley of Spirits		FinalFantasylization_Orgrimmar_SubzoneValleyofSpirits()
--	Valley of Strength		FinalFantasylization_Orgrimmar_SubzoneValleyofStrength()
--		Grommash Hold			FinalFantasylization_Orgrimmar_SubzoneGrommashHold()
--	Valley of Wisdom		FinalFantasylization_Orgrimmar_SubzoneValleyofWisdom()
	--'==========================================================================================
	--' Orgrimmar: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_Kalimdor_OrgrimmarResting()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
		elseif IsSwimming() ~= nil and FinalFantasylizationOptions.Swim == true then
			if FinalFantasylization_CurrentZone ~= "Swimming" then
				FinalFantasylization_CurrentZone = "Swimming"
				FinalFantasylization_Kalimdor_OrgrimmarSwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Cleft of Shadow
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Cleft of Shadow"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneCleftofShadow()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Ragefire Chasm
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Ragefire Chasm"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneRagefireChasm()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: The Drag
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Drag"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneTheDrag()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Goblin Slums
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Goblin Slums"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneGoblinSlums()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Hall of Legends
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hall of Legends"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneHallofLegends()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Valley of Honor
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Valley of Honor"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneValleyofHonor()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Hall of the Brave
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hall of the Brave"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneHalloftheBrave()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: The Ring of Valor
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Ring of Valor"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneTheRingofValor()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Valley of Spirits
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Valley of Spirits"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneValleyofSpirits()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Valley of Strength
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Valley of Strength"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneValleyofStrength()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Grommash Hold
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Grommash Hold"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneGrommashHold()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar: Valley of Wisdom
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Valley of Wisdom"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orgrimmar_SubzoneValleyofWisdom()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Orgrimmar END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Kalimdor_Orgrimmar()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Orgrimmar: Alliance Check
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