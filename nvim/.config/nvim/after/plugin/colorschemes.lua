-- vim.g.gruvbox_invert_selection = "0"
-- vim.opt.background = "dark"
-- vim.cmd([[ colorscheme gruvbox ]])
-- vim.api.nvim_set_hl(0, "Normal", { ctermbg = "none" })
-- vim.cmd([[ let g:fzf_colors = {'bg': ['bg', 'Normal']} ]])
--
-- -- vim.g.tokyonight_dark_float = false
--
-- -- Make floating windows psudo-transperent
-- vim.cmd([[ hi! link NormalFloat Normal ]])

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
