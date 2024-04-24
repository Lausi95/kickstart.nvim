return {
	"tjdevries/colorbuddy.nvim",
	priority = 1000,
	config = function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme("gruvbuddy")

		local colorbuddy = require("colorbuddy")
		local c = colorbuddy.colors
		local Group = colorbuddy.Group

		Group.new("GitSignsChange", c.orange:light(), nil)
	end,
}
