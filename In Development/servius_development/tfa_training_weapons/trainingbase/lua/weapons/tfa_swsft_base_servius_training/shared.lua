DEFINE_BASECLASS("tfa_gun_base")

SWEP.TracerCount = 1
SWEP.MuzzleFlashEffect = ""
SWEP.TracerName = "effect_sw_laser_red"

SWEP.Secondary.IronFOV = 70
SWEP.Primary.KickUp = 0.2
SWEP.Primary.KickDown = 0.1
SWEP.Primary.KickHorizontal = 0.1
SWEP.Primary.KickRight = 0.1

SWEP.DisableChambering = true

SWEP.Callback = {}
SWEP.Callback.ChooseProceduralReloadAnim = function(self)
	if SERVER or (CLIENT and IsFirstTimePredicted() ) then
		self:EmitSound(self.Primary.ReloadSound or "")
	end
end
SWEP.Callback.ChooseReloadAnim = function(self)
	if SERVER or (CLIENT and IsFirstTimePredicted() ) then
		self:EmitSound(self.Primary.ReloadSound or "")
	end
end
SWEP.ImpactDecal = "FadingScorch"

SWEP.RunSightsPos = Vector(2.127, 0, 1.355)
SWEP.RunSightsAng = Vector(-15.775, 10.023, -5.664)

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-3,0.1)
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = ""
SWEP.ThirdPersonReloadDisable=false

SWEP.Primary.DamageType = DMG_SHOCK
SWEP.DamageType = DMG_SHOCK

SWEP.ImpactEffect = "effect_sw_impact" --Impact Effect
--[[-------------------------------------------------------------------------
Recharging SWEPs Code
---------------------------------------------------------------------------]]
local MaxTimer				=64
local CurrentTimer			=0
SWEP.Primary.Ammo			= "battery"

function SWEP:Think()
	if (self.Weapon:Clip1() < self.Primary.ClipSize) and SERVER then
		if (CurrentTimer <= 0) then 
			CurrentTimer = MaxTimer
			self.Weapon:SetClip1( self.Weapon:Clip1() + 1 )
		else
			CurrentTimer = CurrentTimer-1
		end
	end
end

function SWEP:Reload()
end
--[[-------------------------------------------------------------------------
Clone Arms override for all viewmodel hands. Disabled currently.
---------------------------------------------------------------------------]]
--[[
function SWEP:DrawHands()
	self.UseHandsDefault = self.UseHandsDefault or self.UseHands
	if !self.UseHandsDefault then return end
	if !IsValid(self) or !self:OwnerIsValid() then return end
	local vm = self.OwnerViewModel
	if !IsValid(vm) then return end
	
	if !self.Owner.SWHands then
		self.Owner.SWHands = ClientsideModel("models/weapons/c_clonearms.mdl")
		self.Owner.SWHands:SetParent(vm)
		self.Owner.SWHands:SetPos(self.Owner:GetShootPos())
		self.Owner.SWHands:SetAngles(self.Owner:EyeAngles())
		self.Owner.SWHands:AddEffects( EF_BONEMERGE )
		self.Owner.SWHands:SetNoDraw(true)
		self.Owner.SWHands.BoneMergedEnt = vm
	elseif self.Owner.SWHands.BoneMergedEnt ~= vm then
		self.Owner.SWHands:SetParent(vm)
		self.Owner.SWHands:SetPos(self.Owner:GetShootPos())
		self.Owner.SWHands:SetAngles(self.Owner:EyeAngles())
		self.Owner.SWHands:AddEffects( EF_BONEMERGE )	
	end
	
	if self.Owner.SWHands then
		self.Owner.SWHands:DrawModel()
	end
	
	self.UseHands = false
	
end--]]