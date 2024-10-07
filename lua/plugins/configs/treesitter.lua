require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "vimdoc", "luadoc", "printf", "html", "css", "typescript", "javascript", "python" },

	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = { enable = true },
})
