return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = { "lua", "rust", "javascript", "html", "css", "c", "vim", "toml" },
            highlight = { enable = true },
            indent = { enable = true },
        })

        vim.keymap.set('n', '<leader>e', ":NvimTreeOpen <CR>", {})
        vim.keymap.set('n', '<C-n>', ":NvimTreeToggle <CR>", {})
    end
}
