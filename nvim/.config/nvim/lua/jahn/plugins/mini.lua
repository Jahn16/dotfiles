return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.statusline").setup()
		require("mini.comment").setup()
		require("mini.surround").setup()
		require("mini.starter").setup()
		require("mini.pairs").setup()
		require("mini.diff").setup()
		require("mini.git").setup()
		require("mini.indentscope").setup({ symbol = "│" })
	end,
}
