require('barbar').setup = {
    animation = true,
    auto_hide = false,
    tabpages = false,
    clickable = true,
    icons = {
        buffer_index = false,
        buffer_number = false,
        filetype = { enabled = true },
        separator = { left = "▎", right = "" },
        modified = { button = "●" },
        pinned = { button = "車", filename = true, separator = { left = "", right = "" } },
        close_button = "",
    },
    maximum_padding = 2,
    minimum_padding = 1,
    icon_custom_colors = false,
    insert_at_end = true,
    semantic_letters = true,
}

