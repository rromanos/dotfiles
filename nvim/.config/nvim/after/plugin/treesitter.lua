require("nvim-treesitter.configs").setup({
	-- ensure_installed = "all",
	sync_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
	autotag = { enable = true },
	-- rainbow = {
	-- 	enable = true, -- disable = { "jsx", "cpp" }
	-- 	extended_mode = true, -- Also highlight non-bracket delimiters
	-- 	max_file_lines = nil,
	-- 	-- colors = {}, -- table of hex strings
	-- 	-- termcolors = {} -- table of colour name strings
	-- },
})

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local fldGroup = vim.api.nvim_create_augroup("fld", { clear = true })
vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
	command = "normal zR",
	group = fldGroup,
})
