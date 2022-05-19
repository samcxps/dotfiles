local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local compile_path = install_path .. "/plugin/packer_compiled.lua"
local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Needed to load first
    use { 'lewis6991/impatient.nvim' }              -- Decrease load times
    use { 'kyazdani42/nvim-web-devicons' }          -- Web dev icons pack
    use { 'nvim-lua/plenary.nvim' }                 -- Depenency for other plugins
    use { 'glepnir/dashboard-nvim',                 -- Cool dashboard plugin
        config = "require('plugins.dashboard')" 
    }

    -- Themes
    use { 'folke/tokyonight.nvim' }                 -- Tokyo night theme

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', config = "require('plugins.treesitter')" }

    -- Barbar
    use { 'romgrk/barbar.nvim', config = "require('plugins.barbar')" }

    -- Lualine
    use {'nvim-lualine/lualine.nvim', config = "require('plugins.lualine')"}

    -- Telescope
    -- Uses ripgrep and fzf for faster searching
    use { 'nvim-telescope/telescope.nvim',
      config = "require('plugins.telescope')",
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim' }
      }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-lua/popup.nvim' }

    -- Whichkey
    use { 'folke/which-key.nvim', config = "require('plugins.whichkey')", event = "BufWinEnter" }

    -- Tree
    use {
      'kyazdani42/nvim-tree.lua',
      config = "require('plugins.tree')",
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Snippets & Language & Syntax
    use { 'windwp/nvim-autopairs', 
      after = { 'nvim-treesitter' }, 
      config = "require('plugins.autopairs')" 
    }
    use { 'p00f/nvim-ts-rainbow', after = { 'nvim-treesitter' } }                     -- Color support for treesitter
    use { 'norcalli/nvim-colorizer.lua', config = "require('plugins.colorizer')" }    -- Colors hex values in code

    -- Random QOL plugins
    use { 'tpope/vim-speeddating' }     -- Better increment and decrement
    use { 'AndrewRadev/switch.vim' }    -- Used with speeddating above ^^

    -- LSP stuff
    use {'neovim/nvim-lspconfig',  -- Collection of configurations for built-in LSP client
      config = "require('lsp.setup')" ,
      requires = { 
        { 'williamboman/nvim-lsp-installer' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/nvim-cmp' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'L3MON4D3/LuaSnip' }
      } 
    } 

    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  config = {
    compile_path = compile_path,
    disable_commands = true,
  }
})
