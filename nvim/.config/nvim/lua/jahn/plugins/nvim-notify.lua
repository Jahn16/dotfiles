return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		vim.notify.setup({
			timeout = 1000,
		})
	end,
}
