return {
  "lambdalisue/suda.vim",
  -- Carica il plugin in modo "lazy" (ritardato) solo quando digiti i comandi specifici
  cmd = { "SudaRead", "SudaWrite" },
  init = function()
    -- Abilita l'autosalvataggio con sudo se tenti di modificare un file protetto
    vim.g.suda_smart_edit = 1
  end,
}
