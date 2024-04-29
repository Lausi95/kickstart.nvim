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

		local colors = colorbuddy.colors
		local styles = colorbuddy.styles

		local Group = colorbuddy.Group
		Group.new("Title", colors.orange:light(), nil, styles.italic)
		Group.new("GitSignsChange", colors.orange:light())
		Group.new("ColorColumn", nil, colors.cc)
		Group.new("StatusLine", colors.cc, colors.sl)
		Group.new("EndOfBuffer", colors.cc, nil)
		Group.new("LineNrAbove", colors.ln, nil)
		Group.new("LineNrBelow", colors.ln, nil)
		Group.new("LineNr", colors.orange:light(), nil)
	end,
}
