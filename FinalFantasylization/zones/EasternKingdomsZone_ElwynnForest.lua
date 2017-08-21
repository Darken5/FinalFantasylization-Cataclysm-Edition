function FinalFantasylization_EasternKingdomsZones_ElwynnForest()
--'==========================================================================================
--' Eastern Kingdoms Zones: Elwynn Forest : Alliance
--'==========================================================================================
--	Zone: Elwynn Forest			FinalFantasylization_EasternKingdomsElwynnForest()
--
--	TOWNS:
--	Alliance: 
--		Eastvale Logging Camp		FinalFantasylization_AllianceTownEastvaleLoggingCamp()
--		Goldshire					FinalFantasylization_AllianceTownGoldshire()
--			Lion's Pride Inn			FinalFantasylization_AllianceInnLionsPrideInn()
--	
--	SUBZONES:
--	Brackwell Pumpkin Patch		FinalFantasylization_SubzoneBrackwellPumpkinPatch()
--	Crystal Lake				FinalFantasylization_SubzoneCrystalLake()
--	Fargodeep Mine				FinalFantasylization_SubzoneFargodeepMine()
--	Forest's Edge				FinalFantasylization_SubzoneForestsEdge()
--	Goldtooth's Den				FinalFantasylization_SubzoneGoldtoothsDen()
--	Hogger Hill					FinalFantasylization_SubzoneHoggerHill()
--	Jasperlode Mine				FinalFantasylization_SubzoneJasperlodeMine()
--	Jerod's Landing				FinalFantasylization_SubzoneJerodsLanding()
--	The Maclure Vineyards		FinalFantasylization_SubzoneTheMaclureVineyards()
--	Mirror Lake					FinalFantasylization_SubzoneMirrorLake()
--	Mirror Lake Orchard			FinalFantasylization_SubzoneMirrorLakeOrchard()
--	Ridgepoint Tower			FinalFantasylization_SubzoneRidgepointTower()
--	Stone Cairn Lake			FinalFantasylization_SubzoneStoneCairnLake()
--		Heroes' Vigil				FinalFantasylization_SubzoneHeroesVigil()
--	The Stonefield Farm			FinalFantasylization_SubzoneTheStonefieldFarm()
--	Thunder Falls				FinalFantasylization_SubzoneThunderFalls()
--	Tower of Azora				FinalFantasylization_SubzoneTowerofAzora()
--	Westbrook Garrison			FinalFantasylization_SubzoneWestbrookGarrison()
	--'==========================================================================================
	--' Elwynn Forest Alliance Town: Eastvale Logging Camp
	--'==========================================================================================
	if ( SubZoneName == SZ["Eastvale Logging Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownEastvaleLoggingCamp()
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
	--' Elwynn Forest Alliance Town: Goldshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Goldshire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGoldshire()
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
	--' Elwynn Forest Alliance Inn: Lion's Pride Inn
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lion's Pride Inn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_PlayerIsResting = true
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceInnLionsPrideInn()
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
	--' Elwynn Forest Subzone: Brackwell Pumpkin Patch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brackwell Pumpkin Patch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBrackwellPumpkinPatch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Crystal Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crystal Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrystalLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Fargodeep Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fargodeep Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFargodeepMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Forest's Edge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forest's Edge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForestsEdge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Goldtooth's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Goldtooth's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGoldtoothsDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Hogger Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hogger Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHoggerHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Jasperlode Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jasperlode Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJasperlodeMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Jerod's Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jerod's Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJerodsLanding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: The Maclure Vineyards
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Maclure Vineyards"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMaclureVineyards()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Mirror Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirror Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMirrorLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Mirror Lake Orchard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirror Lake Orchard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMirrorLakeOrchard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Ridgepoint Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ridgepoint Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRidgepointTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Stone Cairn Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stone Cairn Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStoneCairnLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Heroes' Vigil in Stone Cairn Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Heroes' Vigil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHeroesVigil()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Thunder Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunder Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThunderFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: The Stonefield Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Stonefield Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheStonefieldFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Tower of Azora
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of Azora"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTowerofAzora()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Elwynn Forest Subzone: Westbrook Garrison
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Westbrook Garrison"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWestbrookGarrison()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return	
	--'==========================================================================================
	--' Elwynn Forest END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn ..ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsElwynnForest()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end