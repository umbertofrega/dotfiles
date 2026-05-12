return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Impostalo su 'false' se vuoi che si carichi subito all'avvio di Neovim
  config = function()
    require("transparent").setup({
      -- Qui puoi aggiungere eventuali personalizzazioni.
      -- Lasciando vuoto, utilizzerà le impostazioni predefinite.
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "CursorLine",
        "StatusLine",
        "StatusLineNC",
      }, -- Aggiunge la trasparenza anche a elementi comuni di LazyVim
    })
  end,
}
