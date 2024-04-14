return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader><S-u>", vim.cmd.UndotreeToggle)
	end,
}
