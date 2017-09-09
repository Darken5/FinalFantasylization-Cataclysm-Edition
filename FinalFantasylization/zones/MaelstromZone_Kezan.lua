function FinalFantasylization_MaelstromZones_Kezan()
--'==========================================================================================
--' Maelstrom Zones: Kezan : Goblin
--'==========================================================================================
--	Zone: Kezan				FinalFantasylization_MaelstromKezan()
--
--	Goblin Start:
--		Bilgewater Port			FinalFantasylization_Goblin_Start_BilgewaterPort()
--		Drudgetown				FinalFantasylization_Goblin_Start_Drudgetown()
--		First Bank of Kezan		FinalFantasylization_Goblin_Start_FirstBankofKezan()
--		Gallywix's Villa		FinalFantasylization_Goblin_Start_GallywixsVilla()
--		Gallywix's Yacht		FinalFantasylization_Goblin_Start_GallywixsYacht()
--		Kaja'mine				FinalFantasylization_Goblin_Start_Kajamine()
--		Kajaro Field			FinalFantasylization_Goblin_Start_KajaroField()
--		KTC Headquarters		FinalFantasylization_Goblin_Start_KTCHeadquarters()
--		The Slick				FinalFantasylization_Goblin_Start_TheSlick()
--		South Seas				FinalFantasylization_Goblin_Start_SouthSeas()
--		Swindle Street			FinalFantasylization_Goblin_Start_SwindleStreet()
--		The Pipe				FinalFantasylization_Goblin_Start_ThePipe()
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Bilgewater Port
	--'==========================================================================================
	if ( SubZoneName == SZ["Bilgewater Port"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_BilgewaterPort()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Drudgetown
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Drudgetown"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_Drudgetown()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: First Bank of Kezan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["First Bank of Kezan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_FirstBankofKezan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Gallywix's Villa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix's Villa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixsVilla()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Gallywix's Yacht
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix's Yacht"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixsYacht()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Kaja'mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kaja'mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_Kajamine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Kajaro Field
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kajaro Field"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KajaroField()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: KTC Headquarters
	--'==========================================================================================
	elseif ( SubZoneName == SZ["KTC Headquarters"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KTCHeadquarters()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: The Slick
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Slick"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheSlick()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: South Seas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Seas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_SouthSeas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Swindle Street
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Swindle Street"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_SwindleStreet()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: The Pipe
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Trials"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_ThePipe()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_MaelstromKezan()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end