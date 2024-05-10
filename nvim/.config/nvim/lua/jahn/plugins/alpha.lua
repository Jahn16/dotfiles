return {
  'goolord/alpha-nvim',
  config = function()
    require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", "<cmd>ene<CR>"),
      dashboard.button("SPC e", "  Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC f", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC r", "󰁯  Restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    }
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end
}
