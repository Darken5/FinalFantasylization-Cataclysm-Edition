function FinalFantasylization_EasternKingdomsZones_BlastedLands()
--'==========================================================================================
--' Eastern Kingdoms Zones: Blasted Lands
--'==========================================================================================
--	Zone: Blasted Lands				FinalFantasylization_EasternKingdomsBlastedLands()
--
--	TOWNS:
--	Alliance: 
--		Nethergarde Keep				FinalFantasylization_AllianceTownNethergardeKeep()
--		Surwich							FinalFantasylization_AllianceTownSurwich()
--	Horde:
--		Dreadmaul Hold					FinalFantasylization_HordeTownDreadmaulHold()
--		Sunveil Excursion				FinalFantasylization_HordeTownSunveilExcursion()
--	
--	SUBZONES:
--	Altar of Storms					FinalFantasylization_SubzoneAltarofStorms()
--	The Dark Portal					FinalFantasylization_SubzoneTheDarkPortal()
--	Dreadmaul Post					FinalFantasylization_SubzoneDreadmaulPost()
--	Garrison Armory					FinalFantasylization_SubzoneGarrisonArmory()
--	The Red Reaches					FinalFantasylization_SubzoneTheRedReaches()
--		Bloodwash Fighting Pits			FinalFantasylization_SubzoneBloodwashFightingPits()
--		Bloodwash Shrine				FinalFantasylization_SubzoneBloodwashShrine()
--		Rockpool Village				FinalFantasylization_SubzoneRockpoolVillage()
--		Shattershore					FinalFantasylization_SubzoneShattershore()
--	Rise of the Defiler				FinalFantasylization_SubzoneRiseoftheDefiler()
--	Serpent's Coil					FinalFantasylization_SubzoneSerpentsCoil()
--	The Tainted Forest				FinalFantasylization_SubzoneTheTaintedForest()
--		Maldraz							FinalFantasylization_SubzoneMaldraz()
	--'==========================================================================================
	--' Blasted Lands Alliance Town: Nethergarde Keep
	--'==========================================================================================
	if ( SubZoneName == SZ["Nethergarde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownNethergardeKeep()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Alliance Town: Surwich
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Surwich"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSurwich()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Horde Town: Dreadmaul Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmaul Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownDreadmaulHold()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Horde Town: Sunveil Excursion
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunveil Excursion"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSunveilExcursion()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Altar of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Altar of Storms"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAltarofStorms()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Dark Portal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dark Portal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDarkPortal()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Dreadmaul Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmaul Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmaulPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Garrison Armory
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Garrison Armory"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGarrisonArmory()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Red Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRedReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Bloodwash Fighting Pits in The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwash Fighting Pits"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodwashFightingPits()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Bloodwash Shrine in The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwash Shrine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodwashShrine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Rockpool Village in The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rockpool Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRockpoolVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Shattershore in The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shattershore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShattershore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Rise of the Defiler
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rise of the Defiler"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRiseoftheDefiler()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Serpent's Coil
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Serpent's Coil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSerpentsCoil()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Tainted Forest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tainted Forest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTaintedForest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Maldraz in The Tainted Forest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maldraz"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMaldraz()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsBlastedLands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end