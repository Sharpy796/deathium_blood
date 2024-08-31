local glimmer_appends = {
    {
        -- REQUIRED
        name            = "Deathium",
        desc            = "Gives a projectile a deadly sparkly trail",
        materials       = {"just_death"},
        -- OPTIONAL
        image           = "mods/GlimmersExpanded/files/gfx/ui_gfx/colour_void.png",
        cast_delay      = 30,
        spawn_tiers     = "4,5,6,10",
        sort_after      = 6.21,
        mod_prefix      = "deathium_blood",
    },
}

for _,entry in ipairs(glimmer_appends) do
    table.insert(glimmer_data, entry)
end