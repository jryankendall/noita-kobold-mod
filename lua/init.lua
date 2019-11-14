dofile("mods/kobold_mod/scripts/perks/kobold_mode.lua")

function OnModPreInit()
	
end

function OnModInit()
	
end

function OnModPostInit()
	
end

dofile( "mods/kobold_mod/CONFIG.lua")

function OnPlayerSpawned( player_entity )

    if tonumber(StatsGetValue("playtime")) > 1 then
		return
	end
    
    if ENABLE_KOBOLD_PERKS then
        
        print("Kobold class activated.")
    end

end

if ENABLE_KOBOLD_SPRITE then
    -- optional sprite?
end