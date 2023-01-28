local onFileType = function(acceptTypes, cmd)
	vim.api.nvim_create_autocmd({ "FileType" }, { pattern = acceptTypes, command = cmd })
end

onFileType({ "javascript", "js", "json", "typescript", "ts" }, [[ setlocal shiftwidth=4 tabstop=4 expandtab ]])

onFileType({ "prisma" }, [[ setlocal shiftwidth=2 tabstop=2 expandtab ]])

onFileType({ "lua" }, [[ setlocal shiftwidth=2 tabstop=2 expandtab ]])

local yank_group = vim.api.nvim_create_augroup("HighlightYank", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 100,
		})
	end,
})
