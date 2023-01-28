-- Minor Convenience
vim.keymap.set("n", "<Space>", "zA")
vim.keymap.set("n", "<Leader><Space>", "zR")
-- vim.keymap.set('i', '<C-f>', '<Right>')
-- vim.keymap.set('i', '<C-b>', '<Left>')

-- Windown Movements
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l")
vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k")

-- System Clipboard Copy/Paste
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<Leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<Leader>Y", '"+Y')
vim.keymap.set({ "n", "v" }, "<Leader>P", '"+P')

-- Vertical & Horizontal Splitting
vim.keymap.set("n", "<Leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>s", ":split<CR>")

-- Nerd Tree & Ranger
vim.keymap.set("n", "<Leader>n", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<Leader>ee", ":RangerEdit<CR>")
vim.keymap.set("n", "<Leader>ev", ":RangerVSplit<CR>")
vim.keymap.set("n", "<Leader>es", ":RangerSplit<CR>")

-- Floating Terminal
vim.keymap.set({ "n", "t" }, "<Leader>tt", function()
	vim.cmd("ToggleTerm direction=float")
end)

-- DON'T NEED 'EM ANYMORE! LONG LIVE TELESCOPE.NVIM!
-- vim.keymap.set("n", "<Leader>f", ":GFiles<CR>")
-- vim.keymap.set("n", "<Leader>F", ":Files<CR>")
-- vim.keymap.set("n", "<Leader>r", ":Rg<CR>")
-- vim.keymap.set("n", "<Leader>b", ":Buffers<CR>")
