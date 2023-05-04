local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  'ellisonleao/gruvbox.nvim',
  {
    'dracula/vim',
    lazy = false,
  },

  -- File browser
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'akinsho/bufferline.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'nvim-treesitter/nvim-treesitter',

  -- Search file and word
  'ibhagwan/fzf-lua',
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- ToggleTerm
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- lsp for autocompletion
  "neovim/nvim-lspconfig",
  {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
  },
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'Pocco81/auto-save.nvim',
  'windwp/nvim-autopairs',
}

local opts = {}

require("lazy").setup(plugins, opts)
