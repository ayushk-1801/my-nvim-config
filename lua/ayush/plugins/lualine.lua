return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			vim.o.statusline = " "
		else
			vim.o.laststatus = 0
		end
	end,
	opts = function()
		-- PERF: we don't need this lualine require madness 🤷
		local lualine_require = require("lualine_require")
		lualine_require.require = require

		vim.o.laststatus = vim.g.lualine_laststatus

		return {
			options = {
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
			},
		}
	end,
}
