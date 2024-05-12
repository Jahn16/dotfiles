return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-python",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local neotest = require("neotest")
		neotest.setup({
			adapters = {
				require("neotest-python")({
					dap = { justMyCode = false },
				}),
			},
		})
		local keymap = vim.keymap
		keymap.set("n", "<leader>dm", function()
			neotest.run.run()
		end, { desc = "Test method" })
		keymap.set("n", "<leader>df", function()
			neotest.run.run(vim.fn.expand("%"))
		end, { desc = "Test file" })
	end,
}
