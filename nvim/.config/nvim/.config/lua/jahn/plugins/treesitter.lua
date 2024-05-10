return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag"
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup(        {
            highlight = {
                enable = true,
            },
            indent = { enable = true},
            autotag = {
                enable = true,
            },
            ensure_installed = { "lua", "python", "typescript", "html", "css", "svelte", "dockerfile", "markdown", "markdown_inline"}
        }
        )
    end

}
