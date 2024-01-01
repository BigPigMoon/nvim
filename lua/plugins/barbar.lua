return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "H", ":BufferPrevious <CR>", opts)
			vim.keymap.set("n", "L", ":BufferNext <CR>", opts)
			vim.keymap.set("n", "<leader>x", ":BufferClose <CR>", opts)
		end,
		opts = {
			animation = false,
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
		},
	},
}
