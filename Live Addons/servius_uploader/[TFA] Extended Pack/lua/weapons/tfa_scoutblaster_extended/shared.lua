if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end
if ( CLIENT ) then
	SWEP.PrintName			= "Scoutblaster"			
	SWEP.Author				= "TFA, Servius"
	SWEP.ViewModelFOV      	= 50
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	--SWEP.WepSelectIcon = surface.GetTextureID("HUD/killicons/DC15A")	
	--killicon.Add( "weapon_752_dc15a", "HUD/killicons/DC15A", Color( 255, 80, 0, 255 ) )	
end
SWEP.Base					= "tfa_3dscoped_base"
SWEP.Category = "TFA Star Wars"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.HoldType = "pistol"
SWEP.ViewModelFOV = 56
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/synbf3/c_scoutblaster.mdl"
SWEP.WorldModel = "models/weapons/synbf3/w_scoutblaster.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.UseHands = true
SWEP.Primary.Sound = Sound ("weapons/scoutblaster/scoutblaster_fire.ogg");
SWEP.Primary.ReloadSound = Sound ("weapons/shared/battlefront_standard_reload.ogg");
SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false
SWEP.Primary.Recoil			= 0.5
SWEP.Primary.Damage			= 55
SWEP.Primary.NumShots		= 1
-- Selective Fire Stuff
SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DisableBurstFire	= false --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it
SWEP.Primary.Spread			= 0.0125
SWEP.Primary.IronAccuracy = .002	-- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.SpreadMultiplierMax = 2 --How far the spread can expand when you shoot.
--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 1 --The maximum number of ricochets.  To prevent stack overflows.
SWEP.Primary.ClipSize		= 10
SWEP.Primary.RPM = 150
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-5.14, -10.45, 2.559)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.VElements = {
	["element_scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(1.389, 3, 1.649), angle = Angle(0, -90, 0), size = Vector(0.36, 0.36, 0.36), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/weapons/synbf3/w_scoutblaster.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10, 0.2, -5.2), angle = Angle(-170, 180, 0), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.BlowbackVector = Vector(0,-3,0.025)
SWEP.Blowback_Only_Iron  = false
SWEP.DoProceduralReload = true
SWEP.ProceduralReloadTime = 2.5
----Swft Base Code
SWEP.TracerCount = 1
SWEP.MuzzleFlashEffect = ""
SWEP.TracerName = "rw_sw_laser_red"
SWEP.Secondary.IronFOV = 70
SWEP.Primary.KickUp = 0.2
SWEP.Primary.KickDown = 0.1
SWEP.Primary.KickHorizontal = 0.1
SWEP.Primary.KickRight = 0.1
SWEP.DisableChambering = true
SWEP.ImpactDecal = "FadingScorch"
SWEP.ImpactEffect = "effect_sw_impact" --Impact Effect
SWEP.RunSightsPos = Vector(2.127, 0, 1.355)
SWEP.RunSightsAng = Vector(-15.775, 10.023, -5.664)
SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-3,0.1)
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = ""
SWEP.ThirdPersonReloadDisable=false
SWEP.Primary.DamageType = DMG_SHOCK
SWEP.DamageType = DMG_SHOCK
--3dScopedBase stuff
SWEP.RTMaterialOverride = -1
SWEP.RTScopeAttachment = -1
SWEP.Scoped_3D = true
SWEP.ScopeReticule = "scope/gdcw_red_nobar" 
SWEP.Secondary.ScopeZoom = 8
SWEP.ScopeReticule_Scale = {2.5,2.5}
SWEP.Secondary.UseACOG			= false	 --Overlay option
SWEP.Secondary.UseMilDot			= false			 --Overlay option
SWEP.Secondary.UseSVD			= false		 --Overlay option
SWEP.Secondary.UseParabolic		= false		 --Overlay option
SWEP.Secondary.UseElcan			= false	 --Overlay option
SWEP.Secondary.UseGreenDuplex		= false		 --Overlay option
if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end
DEFINE_BASECLASS( SWEP.Base )
