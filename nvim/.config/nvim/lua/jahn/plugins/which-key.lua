return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.register(
			{ g = { name = "git" }, h = { name = "Harpoon" }, l = { name = "LSP" }, x = { name = "Trouble" } },
			{ prefix = "<leader>" }
		)
	end,
}
