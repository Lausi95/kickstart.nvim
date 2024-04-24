return {
	"tjdevries/colorbuddy.nvim",
	priority = 1000,
	config = function()
		vim.opt.termguicolors = true
		vim.cmd.colorscheme("gruvbuddy")

		local colorbuddy = require("colorbuddy")

		local Color = colorbuddy.Color
		Color.new("ln", "#333333")
		Color.new("cc", "#222222")
		Color.new("sl", "#111111")
		local c = colorbuddy.colors

		local Group = colorbuddy.Group
		Group.new("GitSignsChange", c.orange:light())
		Group.new("ColorColumn", nil, c.cc)
		Group.new("StatusLine", c.cc, c.sl)
		Group.new("EndOfBuffer", c.cc, nil)
		Group.new("LineNrAbove", c.ln, nil)
		Group.new("LineNrBelow", c.ln, nil)
		Group.new("LineNr", c.orange:light(), nil)
	end,
}
