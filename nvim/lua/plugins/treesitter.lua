return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function ()
    local treesitter = require("nvim-treesitter")
    treesitter.setup()
    treesitter.install { 'c', 'lua', 'cpp', 'rust', 'python'}

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'c', 'lua', 'cpp', 'rust', 'python'},
      callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim (I don't like folds)
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'
	vim.wo.foldlevel = 99
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
 }
