local fmtGroup = vim.api.nvim_create_augroup("fmt", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
	command = "Neoformat",
	group = fmtGroup,
})

local togglePreWirte = function()
	if next(vim.opt.eventignore:get()) == nil then
		vim.opt.eventignore = "BufWritePre"
		print("BufWritePre events are now to be IGNORED")
		return
	else
		vim.opt.eventignore = ""
		print("BufWritePre events are now back")
		return
	end
end

vim.keymap.set("n", "<Leader>ww", togglePreWirte)
