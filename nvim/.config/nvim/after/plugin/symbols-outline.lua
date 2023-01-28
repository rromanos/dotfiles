local opts = {
	width = 25,
	show_symbol_details = true,
	-- preview_bg_highlight = "Pmenu",
	autofold_depth = 2,
	fold_markers = { "", "" },

	keymaps = { -- These keymaps can be a string or a table for multiple keys
		close = "q",
		goto_location = "<Cr>",
		focus_location = "o",
		hover_symbol = "<C-space>",
		toggle_preview = "K",
		rename_symbol = "r",
		code_actions = "a",
		fold = "h",
		unfold = "l",
		fold_all = "C",
		unfold_all = "O",
		fold_reset = "R",
	},

	symbol_blacklist = {},
	symbols = {
		Module = { icon = "MODULE", hl = "TSNamespace" },
		Package = { icon = "PACKAGE", hl = "TSNamespace" },
		Namespace = { icon = "NAMESPACE", hl = "TSNamespace" },
		Interface = { icon = "INTERFACE", hl = "TSType" },
		Class = { icon = "CLASS", hl = "TSType" },

		Function = { icon = "FUNCTION", hl = "TSFunction" },
		Method = { icon = "METHOD", hl = "TSMethod" },
		Constructor = { icon = "CONSTRUCTOR", hl = "TSConstructor" },
		Property = { icon = "PROPERTY", hl = "TSMethod" },
		Array = { icon = "ARRAY", hl = "TSConstant" },
		Key = { icon = "KEY", hl = "TSType" },
		Struct = { icon = "STRUCT", hl = "TSType" },
		Null = { icon = "NULL", hl = "TSType" },
		Object = { icon = "OBJECT", hl = "TSType" },

		Variable = { icon = "VARIABLE", hl = "TSConstant" },
		Constant = { icon = "CONSTANT", hl = "TSConstant" },
		Boolean = { icon = "BOOLEAN", hl = "TSBoolean" },
		Number = { icon = "NUMBER", hl = "TSNumber" },
		String = { icon = "STRING", hl = "TSString" },

		Enum = { icon = "ENUM", hl = "TSType" },
		EnumMember = { icon = "ENUM-MEM", hl = "TSField" },
		TypeParameter = { icon = "TYPE-PARAM", hl = "TSParameter" },
		Operator = { icon = "OPERATOR", hl = "TSOperator" },

		File = { icon = "FILE", hl = "TSURI" },
		Field = { icon = "FIELD", hl = "TSField" },
		Event = { icon = "EVENT", hl = "TSType" },
	},
}

require("symbols-outline").setup(opts)
