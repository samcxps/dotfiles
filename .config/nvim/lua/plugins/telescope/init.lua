local actions    = require('telescope.actions')
local previewers = require('telescope.previewers')
local builtin    = require('telescope.builtin')

require('telescope').load_extension('fzf')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},

    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },

    layout_config     = {
      horizontal = {
        preview_cutoff = 120,
      },
      prompt_position = "top",
    },

    file_sorter       = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix     = ' 🔍 ',
    color_devicons    = true,

    sorting_strategy = "ascending",

    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<C-h>"] = "which_key",
      },
    }
  },
  
  extensions = {
    fzf = {
      override_generic_sorter = false,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}



-- Custom functions for telescope
local M = {}

-- <C-p> opens telescope to search project files
M.project_files = function(opts)
  opts = opts or {} -- define here if you want to define something
  local ok = pcall(require "telescope.builtin".git_files, opts)
  if not ok then require "telescope.builtin".find_files(opts) end
end

return M