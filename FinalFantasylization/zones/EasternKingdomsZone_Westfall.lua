function FinalFantasylization_EasternKingdomsZones_Westfall()
--'==========================================================================================
--' Eastern Kingdoms Zones: Westfall
--'==========================================================================================
--	Zone: Westfall				FinalFantasylization_EasternKingdomsWestfall()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsWestfallResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsWestfallSwimming()
--
--	TOWNS:
--	Alliance:
--		Moonbrook					FinalFantasylization_AllianceTownMoonbrook()
--			Deadmines					FinalFantasylization_SubzoneDeadmines()
--			Moonbrook Schoolhouse		FinalFantasylization_AllianceTownMoonbrookSchoolhouse()	
--		Sentinel Hill				FinalFantasylization_AllianceTownSentinelHill()
--				Sentinel Tower			FinalFantasylization_AllianceTownSentinelTower()
--	
--	SUBZONES:
--	Alexston Farmstead			FinalFantasylization_SubzoneAlexstonFarmstead()
--	The Dagger Hills			FinalFantasylization_SubzoneTheDaggerHills()
--	The Dead Acre				FinalFantasylization_SubzoneTheDeadAcre()
--	Demont's Place				FinalFantasylization_SubzoneDemontsPlace()
--	The Dust Plains				FinalFantasylization_SubzoneTheDustPlains()
--		Mortwake's Tower			FinalFantasylization_SubzoneMortwakesTower()
--	Furlbrow's Pumpkin Patch 	FinalFantasylization_SubzoneFurlbrowsPumpkinFarm()
--	Gold Coast Quarry			FinalFantasylization_SubzoneGoldCoastQuarry()
--	Jangolode Mine				FinalFantasylization_SubzoneJangolodeMine()
--	The Jansen Stead			FinalFantasylization_SubzoneTheJansenStead()
--	Longshore					FinalFantasylization_SubzoneLongshore()
--	The Molsen Farm				FinalFantasylization_SubzoneTheMolsenFarm()
--	The Raging Chasm			FinalFantasylization_SubzoneTheRagingChasm()
--	Saldean's Farm				FinalFantasylization_SubzoneSaldeansFarm()
--	Stendel's Pond				FinalFantasylization_SubzoneStendelsPond()
--	Westfall Lighthouse			FinalFantasylization_SubzoneWestfallLighthouse()
	--'==========================================================================================
	--'	Zone Event: Player is Resting
	--'==========================================================================================
	if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
		if FinalFantasylization_CurrentZone ~= "Sleeping" then
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. AllianceRest)
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
			end
			FinalFantasylization_CurrentZone = "Sleeping"
			FinalFantasylization_EasternKingdomsWestfallResting()
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
			FinalFantasylization_EasternKingdomsWestfallSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Westfall Alliance Town: Moonbrook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moonbrook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
		elseif ( factionEnglish == "Alliance" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_AllianceTownMoonbrook()
		elseif ( factionEnglish == "Horde" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Deadmines in Moonbrook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deadmines"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneDeadmines()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
--[[	--'==========================================================================================
	--' Westfall Alliance Town: Moonbrook Schoolhouse in Moonbrook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moonbrook Schoolhouse"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
		elseif ( factionEnglish == "Alliance" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_AllianceTownMoonbrookSchoolhouse()
		elseif ( factionEnglish == "Horde" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
]]
	--'==========================================================================================
	--' Westfall Alliance Town: Sentinel Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sentinel Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
		elseif ( factionEnglish == "Alliance" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_AllianceTownSentinelHill()
		elseif ( factionEnglish == "Horde" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Alliance Town: Sentinel Tower in Sentinel Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sentinel Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
		elseif ( factionEnglish == "Alliance" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_AllianceTownSentinelTower()
		elseif ( factionEnglish == "Horde" ) then
			FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Alexston Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alexston Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneAlexstonFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Dagger Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dagger Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheDaggerHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Dead Acre
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dead Acre"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheDeadAcre()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Demont's Place
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Demont's Place"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneDemontsPlace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Dust Plains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dust Plains"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheDustPlains()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Mortwake's Tower in The Dust Plains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mortwake's Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneMortwakesTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Furlbrow's Pumpkin Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Furlbrow's Pumpkin Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneFurlbrowsPumpkinFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Gold Coast Quarry
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gold Coast Quarry"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneGoldCoastQuarry()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Jangolode Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jangolode Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneJangolodeMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Jansen Stead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Jansen Stead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheJansenStead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Longshore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Longshore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneLongshore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Molsen Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Molsen Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheMolsenFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: The Raging Chasm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Raging Chasm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneTheRagingChasm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Saldean's Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Saldean's Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneSaldeansFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Stendel's Pond
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stendel's Pond"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneStendelsPond()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall Subzone: Westfall Lighthouse
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Westfall Lighthouse"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_SubzoneWestfallLighthouse()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		FinalFantasylization_CurrentZone = SubZoneName
		return
	--'==========================================================================================
	--' Westfall END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsWestfall()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end