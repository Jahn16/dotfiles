return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>g", group = "Git", icon = "" },
			{ "<leader>h", group = "Harpoon", icon = "󰛢" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>d", group = "DAP", icon = "󰙨" },
		})
	end,
}
