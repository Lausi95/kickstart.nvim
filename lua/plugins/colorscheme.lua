return {
    "tjdevries/colorbuddy.nvim",
    priority = 1000,
    config = function()
        vim.opt.termguicolors = true
        vim.cmd.colorscheme "gruvbuddy"
    end
}
