-----------------
---- LAYOUTS ----
-----------------

hl.config({
    general = {
        layout = "scrolling",
    }
})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = false,
        column_width = 0.8,
        focus_fit_method = 1,
        follow_min_visible = 1.0,
        -- explicit_column_widths = "0.333, 0.500, 0.667, 1.000",
        wrap_focus = true,
        wrap_swapcol = false,
        direction = "right",
    },
})
