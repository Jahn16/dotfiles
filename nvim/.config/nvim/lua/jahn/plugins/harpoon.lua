return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		-- vim.keymap.set("n", "<leader>he", function()
		-- 	toggle_telescope(harpoon:list())
		-- end, { desc = "Open harpoon window" })
		vim.keymap.set("n", "<leader>he", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open harpoon window" })

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Add" })

		vim.keymap.set("n", "<leader>hh", function()
			harpoon:list():select(1)
		end, { desc = "Select 1" })
		vim.keymap.set("n", "<leader>hj", function()
			harpoon:list():select(2)
		end, { desc = "Select 2" })
		vim.keymap.set("n", "<leader>hk", function()
			harpoon:list():select(3)
		end, { desc = "Select 3" })
		vim.keymap.set("n", "<leader>hl", function()
			harpoon:list():select(4)
		end, { desc = "Select 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hb", function()
			harpoon:list():prev()
		end, { desc = "Select previous buffer" })
		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, { desc = "Select next buffer" })
	end,
}
