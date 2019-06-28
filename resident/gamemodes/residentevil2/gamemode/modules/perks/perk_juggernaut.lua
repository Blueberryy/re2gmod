
local PERK = {}

PERK.ClassName = "perk_juggernaut" 
PERK.Name = "Resilience"
PERK.Desc = "Take 25% less damage"
PERK.Category = "Defense"
PERK.Model = "models/Items/hevsuit.mdl"
PERK.Price = 9000

PERK.Restrictions = false

function PERK:ServerInitialize( ply )

	hook.Add( "ScalePlayerDamage", "REGmod.Juggerstop", function( ply, hitgroup, dmginfo )
		if ply:HasPerk( "perk_juggernaut" ) then
			dmginfo:ScaleDamage( 0.75 )
		else
			dmginfo:ScaleDamage(1)
		end
	end )

end

function PERK:ClientInitialize( ply )

end

function PERK:OnEquip( ply )

end

function PERK:OnRemove( ply )

end

function PERK:Think( ply )

end

perky.Register( PERK )