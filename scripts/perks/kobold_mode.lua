dofile("data/scripts/lib/utilities.lua")

table.insert( perk_list,
{
	id = "KOBOLD_MODE",
	ui_name = "You're a Kobold",
	ui_description = "You take 20% more physical damage and move 10% faster. You gain a random perk based on your color.", --green: toxic immune, red: fire immune, blue: ice resist + breathless, purple: vampirism
	ui_icon = "mods/kobold_mode/art/ui/kobold_mode.png",
	perk_icon = "mods/kobold_mode/art/ig/kobold_mode.png",
	not_in_default_perk_pool = true,
	func = function( entity_perk_item, entity_who_picked, item_name )
		
		local damagemdl = EntityGetComponent( entity_who_picked, "DamageModelComponent" )
		local dmgtypes = {"slice", "projectile", "physics_hit", "melee", "drill"}
		
		if( damagemdl ~= nil ) then
		
			for i,damagemodel in ipairs(damagemdl) do
			
				for k,dmg in pairs(dmgtypes) do
				
					local resistance = tonumber(ComponentObjectGetValue( damagemodel, "damage_multipliers", dmg ))
					resistance = resistance * 1.2
					ComponentObjectSetValue( damagemodel, "damage_multipliers", dmg, tostring(resistance) )
					
				end
				
			end
        end
        
        --functionality for +movespeed here
			
	end,
		
})