local telescope = require("telescope")
local builtin = require("telescope.builtin")
telescope.setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
telescope.load_extension("fzf")

git_or_find_files = function()
	vim.fn.system("git rev-parse --is-inside-work-tree")
	if vim.v.shell_error == 0 then
		builtin.git_files()
	else
		builtin.find_files({ hidden = true })
	end
end

vim.keymap.set("n", "<Leader>f", git_or_find_files)
vim.keymap.set("n", "<Leader>g", builtin.git_files)
vim.keymap.set("n", "<Leader>F", function()
	builtin.find_files({ hidden = true })
end)

vim.keymap.set("n", "<Leader>r", builtin.grep_string)
vim.keymap.set("n", "<Leader>b", builtin.buffers)

vim.keymap.set("n", "gd", function()
	builtin.lsp_definitions({
		show_line = false,
	})
end)
vim.keymap.set("n", "gr", function()
	builtin.lsp_references({
		include_declaration = false,
		show_line = false,
	})
end)
