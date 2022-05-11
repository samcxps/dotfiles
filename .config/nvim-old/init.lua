require('impatient')        -- This needs to be first, decreases loading time of plugins and nvim in general
require('packer_commands')  -- We bootstrap packer so add packer commands before plugins are loaded
require('globals')          -- Global vars  
require('config')           -- Config for plugins look and feel
require('settings')         -- Vim specific settings    
require('colorscheme')      -- Holds color schemes for vim
require('keymappings')      -- User defined key maps
require('autocmds')         -- User defined autocmds
require('functions')        -- User defined functions
require('lsp.config')       -- LSP config
require('lsp.setup')        -- LSP config
require('lsp.functions')    -- User defined LSP functions