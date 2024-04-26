-- return {
-- 	"stevearc/conform.nvim",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	config = function()
-- 		local conform = require("conform")
--
-- 		conform.setup({
-- 			formatters_by_ft = {
-- 				javascript = { "prettier" },
-- 				typescript = { "prettier" },
-- 				javascriptreact = { "prettier" },
-- 				typescriptreact = { "prettier" },
-- 				svelte = { "prettier" },
-- 				css = { "prettier" },
-- 				html = { "prettier" },
-- 				json = { "prettier" },
-- 				yaml = { "prettier" },
-- 				markdown = { "prettier" },
-- 				graphql = { "prettier" },
-- 				liquid = { "prettier" },
-- 				lua = { "stylua" },
-- 				python = { "isort", "black" },
-- 				c = { "prettier" },
-- 				cpp = { "prettier" },
-- 			},
-- 			format_on_save = {
-- 				lsp_fallback = true,
-- 				async = false,
-- 				timeout_ms = 1000,
-- 			},
-- 		})
--
-- 		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
-- 			conform.format({
-- 				lsp_fallback = true,
-- 				async = false,
-- 				timeout_ms = 1000,
-- 			})
-- 		end, { desc = "Format file or range (in visual mode)" })
-- 	end,
-- }

return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			local disable_filetypes = {}
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				async = false,
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			python = { "autopep8" },
			cpp = { "clang-format" },
			c = { "clang-format" },
		},
	},
}
