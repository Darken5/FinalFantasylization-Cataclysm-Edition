function FinalFantasylization_EasternKingdomsZones_DunMorogh()
--'==========================================================================================
--' Eastern Kingdoms Zones: Dun Morogh : Alliance
--'==========================================================================================
--	Zone: Dun Morogh				FinalFantasylization_EasternKingdomsDunMorogh()
--
--	TOWNS:
--	Dwarf Start:
--		Anvilmar						FinalFantasylization_Dwarf_Start_Anvilmar()
--		Coldridge Pass					FinalFantasylization_Dwarf_Start_ColdridgePass()
--		Coldridge Valley				FinalFantasylization_Dwarf_Start_ColdridgeValley()
--		Frostmane Hovel					FinalFantasylization_Dwarf_Start_FrostmaneHovel()
--		Whitebeard's Encampment			FinalFantasylization_Dwarf_Start_WhitebeardsEncampment()
--	Gnome Start:
--		Gnomeregan						FinalFantasylization_Gnome_Start_Gnomeregan()
--			Loading Room					FinalFantasylization_Gnome_Start_LoadingRoom()
--			The Old Dormitory				FinalFantasylization_Gnome_Start_TheOldDormitory()
--			Train Depot						FinalFantasylization_Gnome_Start_TrainDepot()
--			Workshop Entrance				FinalFantasylization_Gnome_Start_WorkshopEntrance()
--		New Tinkertown					FinalFantasylization_Gnome_Start_NewTinkertown()
--		Crushcog's Arsenal				FinalFantasylization_Gnome_Start_CrushcogsArsenal()
--		Frostmane Hold					FinalFantasylization_Gnome_Start_FrostmaneHold()
--		Iceflow Lake					FinalFantasylization_Gnome_Start_IceflowLake()
--		The Toxic Airfield				FinalFantasylization_Gnome_Start_TheToxicAirfield()
--	Alliance:
--		Brewnall Village				FinalFantasylization_AllianceTownBrewnallVillage()
--		Gates of Ironforge				FinalFantasylization_AllianceTownGatesofIronforge()
--		Gol'Bolar Quarry				FinalFantasylization_AllianceTownGolBolarQuarry()
--			Gol'Bolar Quarry Mine			FinalFantasylization_AllianceTownGolBolarQuarryMine()
--		Ironforge Airfield				FinalFantasylization_AllianceTownIronforgeAirfield()
--		Kharanos						FinalFantasylization_AllianceTownKharanos()
--			Thunderbrew Distillery			FinalFantasylization_AllianceTownThunderbrewDistillery()
--		Steelgrill's Depot				FinalFantasylization_AllianceTownSteelgrillsDepot()
--
--	SUBZONES:
--	Amberstill Ranch				FinalFantasylization_SubzoneAmberstillRanch()
--	Bahrum's Post					FinalFantasylization_SubzoneBahrumsPost()
--	Chill Breeze Valley				FinalFantasylization_SubzoneChillBreezeValley()
--	Frostmane Front					FinalFantasylization_SubzoneFrostmaneFront()
--	Frostmane Retreat				FinalFantasylization_SubzoneFrostmaneRetreat()
--	The Grizzled Den				FinalFantasylization_SubzoneTheGrizzledDen()
--	Helm's Bed Lake					FinalFantasylization_SubzoneHelmsBedLake()
--	Ironband's Compound				FinalFantasylization_SubzoneIronbandsCompound()
--	Misty Pine Refuge				FinalFantasylization_SubzoneMistyPineRefuge()
--	North Gate Pass					FinalFantasylization_SubzoneNorthGatePass()
--		North Gate Outpost				FinalFantasylization_SubzoneNorthGateOutpost()
--	Shimmer Ridge					FinalFantasylization_SubzoneShimmerRidge()
--	South Gate Pass					FinalFantasylization_SubzoneSouthGatePass()
--		South Gate Outpost				FinalFantasylization_SubzoneSouthGateOutpost()
--	The Tundrid Hills				FinalFantasylization_SubzoneTheTundridHills()
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Anvilmar
	--'==========================================================================================
	if ( MinimapZoneName == SZ["Anvilmar"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_Anvilmar()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Coldridge Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Coldridge Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Dwarf_Start_ColdridgePass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Coldridge Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Coldridge Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Dwarf_Start_ColdridgeValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Frostmane Hovel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Hovel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Dwarf_Start_FrostmaneHovel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Whitebeard's Encampment
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whitebeard's Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Dwarf_Start_WhitebeardsEncampment()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Gnome Starting Area: Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gnomeregan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_Gnomeregan()
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
	--' Dun Morogh: Gnome Starting Area: Loading Room in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Loading Room"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_LoadingRoom()
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
	--' Dun Morogh: Gnome Starting Area: The Old Dormitory in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Old Dormitory"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TheOldDormitory()
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
	--' Dun Morogh: Gnome Starting Area: Train Depot in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Train Depot"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TrainDepot()
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
	--' Dun Morogh: Gnome Starting Area: Workshop Entrance in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Workshop Entrance"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_WorkshopEntrance()
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
	--' Dun Morogh: Gnome Starting Area: New Tinkertown
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Tinkertown"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_NewTinkertown()
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
	--' Dun Morogh: Gnome Starting Area: Crushcog's Arsenal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crushcog's Arsenal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Gnome_Start_CrushcogsArsenal()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Gnome Starting Area: Frostmane Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Gnome_Start_FrostmaneHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Gnome Starting Area: Iceflow Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Iceflow Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Gnome_Start_IceflowLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Gnome Starting Area: The Toxic Airfield
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Toxic Airfield"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Gnome_Start_TheToxicAirfield()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Alliance Town: Brewnall Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brewnall Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownBrewnallVillage()
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
	--' Dun Morogh Alliance Town: Gates of Ironforge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gates of Ironforge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGatesofIronforge()
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
	--' Dun Morogh Alliance Town: Gol'Bolar Quarry
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gol'Bolar Quarry"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGolBolarQuarry()
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
	--' Dun Morogh Alliance Town: Gol'Bolar Quarry Mine in Gol'Bolar Quarry
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gol'Bolar Quarry Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGolBolarQuarryMine()
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
	--' Dun Morogh Alliance Town: Ironforge Airfield
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironforge Airfield"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownIronforgeAirfield()
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
	--' Dun Morogh Alliance Town: Kharanos
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kharanos"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownKharanos()
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
	--' Dun Morogh Alliance Town: Thunderbrew Distillery in Kharanos
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunderbrew Distillery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownThunderbrewDistillery()
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
	--' Dun Morogh Alliance Town: Steelgrill's Depot
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Steelgrill's Depot"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSteelgrillsDepot()
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
	--' Dun Morogh Subzone: Amberstill Ranch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amberstill Ranch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmberstillRanch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Bahrum's Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bahrum's Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBahrumsPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Chill Breeze Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chill Breeze Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChillBreezeValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Frostmane Front
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Front"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostmaneFront()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Frostmane Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostmaneRetreat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: The Grizzled Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Grizzled Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGrizzledDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Helm's Bed Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Helm's Bed Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHelmsBedLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Ironband's Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironband's Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIronbandsCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Misty Pine Refuge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Pine Refuge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistyPineRefuge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: North Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Gate Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthGatePass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: North Gate Outpost in North Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Gate Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthGateOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Shimmer Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shimmer Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShimmerRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: South Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Gate Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthGatePass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: South Gate Outpost in South Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Gate Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthGateOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: The Tundrid Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tundrid Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTundridHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsDunMorogh()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end