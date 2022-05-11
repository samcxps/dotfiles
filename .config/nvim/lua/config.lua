local icons = require('icons')

GigaVim = {
  colorscheme = 'tokyonight', -- can add other color schemes
  ui = {
    float = {
      border = 'rounded'
    }
  },
  plugins = {
    completion = {
      select_first_on_enter = false
    },
    dashboard = {
      fuzzy_plugin = 'telescope' -- telescope/clap/fzf
    },
    package_info = {
      enabled = false
    },
    rooter = {
      -- Removing package.json from list in Monorepo Frontend Project can be helpful
      -- By that your live_grep will work related to whole project, not specific package
      patterns = {'.git', 'package.json', '_darcs', '.bzr', '.svn', 'Makefile'} -- Default
    },
  },
  icons = icons,
}