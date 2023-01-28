local custom_gruvbox = require("lualine.themes.gruvbox_dark")

-- Catchy Color on Insert Mode
custom_gruvbox.insert.a.bg = "#83a598"
custom_gruvbox.insert.b.bg = "#83a598"
custom_gruvbox.insert.c.bg = "#83a598"
custom_gruvbox.insert.b.fg = "#282828"
custom_gruvbox.insert.c.fg = "#282828"

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = custom_gruvbox,
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
		-- globalstatus = true,
	},
	sections = {
		lualine_x = { "filetype" },
	},
})
