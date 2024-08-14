local translations = ModTextFileGetContent("data/translations/common.csv")
local new_translations = ModTextFileGetContent("mods/deathium_blood/translations.csv")
translations = translations .. new_translations
translations = translations:gsub("\r", ""):gsub("\n\n+", "\n")
ModTextFileSetContent("data/translations/common.csv", translations)

function OnWorldPostUpdate()
	if GameGetFrameNum() % 10 ~= 0 then return nil end
	local enemies_that_bleed = EntityGetWithTag("enemy")
	local prey_that_bleed = EntityGetWithTag("prey")
	local entities_that_bleed = {enemies_that_bleed, prey_that_bleed}
	for k,v in ipairs(entities_that_bleed) do
		for k3,v3 in ipairs(v) do
	  		local dmgs = EntityGetComponent(v3,"DamageModelComponent") or {}
	  		for k2,v2 in ipairs(dmgs) do
				ComponentSetValue2(v2,"blood_material","just_death")
				ComponentSetValue2(v2,"blood_spray_material","just_death")
			end
		end
	end
end