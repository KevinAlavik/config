local theme = "kanagawa"

if theme == "onedark" then
    -- Custom onedark based theme...
    require("onedark").setup {
        style = "darker",
        transparent = false,
        term_colors = true,
        ending_tildes = true,
        cmp_itemkind_reverse = false,
        code_style = {
            comments = "italic",
            keywords = "bold",
            functions = "none",
            strings = "none",
            variables = "none",
        },
        colors = {
            bg0 = "#1e222a",
            fg = "#abb2bf",
            purple = "#c678dd",
            green = "#98c379",
            orange = "#d19a66",
            blue = "#61afef",
            yellow = "#e5c07b",
            cyan = "#56b6c2",
            red = "#e06c75",
        },
        highlights = {
            CursorLine = { bg = "#2c323c" },
            Visual = { bg = "#3e4451" },
            Pmenu = { bg = "#2c323c", fg = "#abb2bf" },
            PmenuSel = { bg = "#61afef", fg = "#1e222a" },
        },
    }
    require("onedark").load()
else
    require(theme).load()
end

