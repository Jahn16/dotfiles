return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
local mason_lspconfig = require("mason-lspconfig")

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
mason_lspconfig.setup_handlers({
    function(lsp)
  lspconfig[lsp].setup ({
    capabilities = capabilities,
  })
    end
})
  end
}
