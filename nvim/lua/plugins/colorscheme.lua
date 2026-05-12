return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.opt.termguicolors = true
        vim.cmd.colorscheme("default") -- usa il tema del terminale
        vim.cmd([[
          highlight Normal guibg=NONE
          highlight EndOfBuffer guibg=NONE
        ]])
      end,
    },
  },
}
