local cmp = require("cmp")
local lspkind = require("lspkind")

vim.opt.completeopt = { "menu", "menuone", "noselect" }

cmp.setup({
	snippet = {
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),

		["<C-space>"] = cmp.mapping({
			i = cmp.mapping.complete(),
			c = function(
				_ --[[fallback]]
			)
				if cmp.visible() then
					if not cmp.confirm({ select = true }) then
						return
					end
				else
					cmp.complete()
				end
			end,
		}),
		["<tab>"] = cmp.config.disable,
	}),

	sources = cmp.config.sources({
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		-- { name = 'vsnip' },
		{ name = "luasnip" },
		{ name = "buffer", keyword_length = 5 },
	}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "text",
			maxwidth = 50,
			ellipsis_char = "...",
			menu = {
				nvim_lua = "[VIM]",
				nvim_lsp = "[LSP]",
				path = "[PTH]",
				buffer = "[BUF]",
			},
		}),
	},
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(":", {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = cmp.config.sources({
-- 		{ name = "path" },
-- 	}, {
-- 		{ name = "cmdline" },
-- 	}),
-- })

-- Tree View of Symbols
require("symbols-outline").setup()

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
require("lspconfig")["tsserver"].setup({ capabilities = capabilities })
require("lspconfig").gopls.setup({})
require("luasnip.loaders.from_vscode").lazy_load({ include = nil })

-- Additional Rempas

-- MOVED TO TELESCOPE FOR MORE FRIENDLY MULTI-OPTIONS
-- vim.keymap.set("n", "gd", function()
-- 	vim.lsp.buf.definition()
-- end)
-- vim.keymap.set("n", "gr", function()
-- 	vim.lsp.buf.references()
-- end)

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover()
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_next()
end)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_prev()
end)
vim.keymap.set("n", "<Leader>k", function()
	vim.diagnostic.open_float()
end)
vim.keymap.set("n", "<Leader>c", function()
	vim.lsp.buf.code_action()
end)
