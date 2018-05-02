function FinalFantasylization_EasternKingdomsZones_HillsbradFoothills()
--'==========================================================================================
--' Eastern Kingdoms Zones: Hillsbrad Foothills
--'==========================================================================================
--	Zone: Hillsbrad Foothills	FinalFantasylization_EasternKingdomsHillsbradFoothills()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsHillsbradFoothillsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsHillsbradFoothillsSwimming()
--
--	TOWNS:
--	Horde:
--		Eastpoint Tower			FinalFantasylization_HordeTownEastpointTower()
--		Ruins of Southshore		FinalFantasylization_HordeTownRuinsofSouthshore()
--		Southpoint Gate			FinalFantasylization_HordeTownSouthpointGate()
--		Strahnbrad				FinalFantasylization_HordeTownStrahnbrad()
--		Tarren Mill				FinalFantasylization_HordeTownTarrenMill()
--		The Sludge Fields		FinalFantasylization_HordeTownTheSludgeFields()
--
--	SUBZONES:
--	Azurelode Mine		FinalFantasylization_SubzoneAzurelodeMine()
--	Dalaran Crater		FinalFantasylization_SubzoneDalaranCrater()
--	Darrow Hill			FinalFantasylization_SubzoneDarrowHill()
--	Dun Garok			FinalFantasylization_SubzoneDunGarok()
--	Durnholde Keep		FinalFantasylization_SubzoneDurnholdeKeep()
--	Eastern Strand		FinalFantasylization_SubzoneEasternStrand()
--	Sludgeguard Tower	FinalFantasylization_SubzoneSludgeguardTower()
--	Nethander Stead		FinalFantasylization_SubzoneNethanderStead()
--	Purgation Isle		FinalFantasylization_SubzonePurgationIsle()
--	Ruins of Alterac	FinalFantasylization_SubzoneRuinsofAlterac()
--	Southpoint Tower	FinalFantasylization_SubzoneSouthpointTower()
--	Thoradin's Wall		FinalFantasylization_SubzoneThoradinsWall()
--	The Uplands			FinalFantasylization_SubzoneTheUplands()
--	Western Strand		FinalFantasylization_SubzoneWesternStrand()
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
			FinalFantasylization_EasternKingdomsHillsbradFoothillsResting()
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
			FinalFantasylization_EasternKingdomsHillsbradFoothillsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Horde Town: Eastpoint Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Eastpoint Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownEastpointTower()
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
	--' Hillsbrad Foothills Horde Town: Ruins of Southshore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Southshore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRuinsofSouthshore()
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
	--' Hillsbrad Foothills Horde Town: Southpoint Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southpoint Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSouthpointGate()
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
	--' Hillsbrad Foothills Horde Town: Strahnbrad
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Strahnbrad"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownStrahnbrad()
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
	--' Hillsbrad Foothills Horde Town: Tarren Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tarren Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTarrenMill()
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
	--' Hillsbrad Foothills Horde Town: The Sludge Fields
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sludge Fields"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSludgeFields()
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
	--' Hillsbrad Foothills Subzone: Azurelode Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Azurelode Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAzurelodeMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Dalaran Crater
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dalaran Crater"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDalaranCrater()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Darrow Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darrow Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarrowHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Dun Garok
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dun Garok"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDunGarok()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Durnholde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Durnholde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDurnholdeKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Eastern Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Eastern Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEasternStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Sludgeguard Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sludgeguard Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSludgeguardTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Nethander Stead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nethander Stead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNethanderStead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Purgation Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Purgation Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePurgationIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Ruins of Alterac
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Alterac"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAlterac()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Southpoint Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southpoint Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthpointTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Thoradin's Wall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thoradin's Wall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThoradinsWall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: The Uplands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Uplands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheUplands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Western Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Western Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWesternStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsHillsbradFoothills()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end