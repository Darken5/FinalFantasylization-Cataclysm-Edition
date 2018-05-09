function FinalFantasylization_KalimdorZones_Feralas()
--'==========================================================================================
--' Kalimdor Zones: Feralas
--'==========================================================================================
--	Zone: Feralas			FinalFantasylization_KalimdorFeralas()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorFeralasResting()
--		Player is Swimming		FinalFantasylization_KalimdorFeralasSwimming()
--
--	TOWNS:
--	Alliance:
--		Dreamer's Rest			FinalFantasylization_AllianceTownDreamersRest()
--		Feathermoon Stronghold	FinalFantasylization_AllianceTownFeathermoonStronghold()
--		Shadebough				FinalFantasylization_AllianceTownShadebough()
--		Tower of Estulan		FinalFantasylization_AllianceTownTowerofEstulan()
--	Horde:
--		Camp Ataya				FinalFantasylization_HordeTownCampAtaya()
--		Camp Mojache			FinalFantasylization_HordeTownCampMojache()
--		Stonemaul Hold			FinalFantasylization_HordeTownStonemaulHold()
--
--	SUBZONES:
--	Darkmist Ruins			FinalFantasylization_SubzoneDarkmistRuins()
--	Dire Maul				FinalFantasylization_SubzoneDireMaul()
--	Dream Bough				FinalFantasylization_SubzoneDreamBough()
--	The Emerald Summit		FinalFantasylization_SubzoneTheEmeraldSummit()
--	Feral Scar Vale			FinalFantasylization_SubzoneFeralScarVale()
--	The Forgotten Coast		FinalFantasylization_SubzoneTheForgottenCoast()
--	Frayfeather Highlands	FinalFantasylization_SubzoneFrayfeatherHighlands()
--	Gordunni Outpost		FinalFantasylization_SubzoneGordunniOutpost()
--	Grimtotem Compound		FinalFantasylization_SubzoneGrimtotemCompound()
--	High Wilderness			FinalFantasylization_SubzoneHighWilderness()
--	Jademir Lake			FinalFantasylization_SubzoneJademirLake()
--	Lake Dumont				FinalFantasylization_SubzoneLakeDumont()
--	Lariss Pavilion			FinalFantasylization_SubzoneLarissPavilion()
--	Lower Wilds				FinalFantasylization_SubzoneLowerWilds()
--	New Thalanaar			FinalFantasylization_SubzoneNewThalanaar()
--	Oneiros					FinalFantasylization_SubzoneOneirosd()
--	Rage Scar Hold			FinalFantasylization_SubzoneRageScarHold()
--	Ruins of Isildien		FinalFantasylization_SubzoneRuinsofIsildien()
--	Ruins of Ravenwind		FinalFantasylization_SubzoneRuinsofRavenwind()
--	Ruins of Solarsal		FinalFantasylization_SubzoneRuinsofSolarsal()
--	Sardor Isle				FinalFantasylization_SubzoneSardorIsle()
--	Ruins of Feathermoon	FinalFantasylization_SubzoneRuinsofFeathermoon()
--	The Steam Pools			FinalFantasylization_SubzoneTheSteamPools()
--	The Twin Colossals		FinalFantasylization_SubzoneTheTwinColossals()
--	Verdantis River			FinalFantasylization_SubzoneVerdantisRiver()
--	Wildwind Lake			FinalFantasylization_SubzoneWildwindLake()
--	Woodpaw Den				FinalFantasylization_SubzoneWoodpawDen()
--	Woodpaw Hills			FinalFantasylization_SubzoneWoodpawHills()
--	The Writhing Deep		FinalFantasylization_SubzoneTheWrithingDeep()
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
			FinalFantasylization_KalimdorFeralasResting()
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
			FinalFantasylization_KalimdorFeralasSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Alliance Town: Dreamer's Rest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreamer's Rest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDreamersRest()
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
	--' Feralas Alliance Town: Feathermoon Stronghold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Feathermoon Stronghold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownFeathermoonStronghold()
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
	--' Feralas Alliance Town: Shadebough
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadebough"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownShadebough()
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
	--' Feralas Alliance Town: Tower of Estulan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of Estulan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTowerofEstulan()
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
	--' Feralas Horde Town: Camp Ataya
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Ataya"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownCampAtaya()
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
	--' Feralas Horde Town: Camp Mojache
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Mojache"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownCampMojache()
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
	--' Feralas Horde Town: Stonemaul Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonemaul Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownStonemaulHold()
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
	--' Feralas Subzone: Darkmist Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkmist Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarkmistRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Dire Maul
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dire Maul"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDireMaul()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Dream Bough
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dream Bough"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreamBough()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: The Emerald Summit
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Emerald Summit"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheEmeraldSummit()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Feral Scar Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Feral Scar Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFeralScarVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: The Forgotten Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forgotten Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheForgottenCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Frayfeather Highlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frayfeather Highlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrayfeatherHighlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Gordunni Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gordunni Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGordunniOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Grimtotem Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grimtotem Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGrimtotemCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: High Wilderness
	--'==========================================================================================
	elseif ( SubZoneName == SZ["High Wilderness"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHighWilderness()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Jademir Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jademir Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJademirLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Lake Dumont
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Dumont"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeDumont()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Lariss Pavilion
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lariss Pavilion"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLarissPavilion()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Lower Wilds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lower Wilds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLowerWilds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: New Thalanaar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Thalanaar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNewThalanaar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Oneiros
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oneiros"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOneirosd()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Rage Scar Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rage Scar Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRageScarHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Ruins of Isildien
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Isildien"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofIsildien()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Ruins of Ravenwind
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Ravenwind"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofRavenwind()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Ruins of Solarsal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Solarsal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofSolarsal()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Sardor Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sardor Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSardorIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Ruins of Feathermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Feathermoon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofFeathermoon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: The Steam Pools
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Steam Pools"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSteamPools()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: The Twin Colossals
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Twin Colossals"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTwinColossals()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Verdantis River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Verdantis River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVerdantisRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Wildwind Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildwind Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildwindLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Woodpaw Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Woodpaw Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWoodpawDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: Woodpaw Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Woodpaw Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWoodpawHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas Subzone: The Writhing Deep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Writhing Deep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheWrithingDeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Feralas END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorFeralas()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end