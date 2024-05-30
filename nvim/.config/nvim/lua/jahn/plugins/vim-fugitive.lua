return {
	"tpope/vim-fugitive",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
		vim.keymap.set("n", "<leader>gd", "<cmd>Gdiffsplit<CR>", { desc = "Git diff" })
	end,
}
