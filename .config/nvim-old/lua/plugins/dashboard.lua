local icons = GigaVim.icons

-- Created with figlet
vim.g.dashboard_custom_header = { "major bruh moment" }

vim.g.dashboard_session_directory = '~/.config/nvim/sessions'
vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_section = {
  a = {description = {icons.fileNoBg ..     'Find File          '}, command = 'Telescope find_files hidden=true'},
  b = {description = {icons.t ..            'Find Word          '}, command = 'Telescope live_grep'},
  c = {description = {icons.fileCopy ..     'Recents            '}, command = 'Telescope oldfiles hidden=true'},
  e = {description = {icons.container ..    'Sync Plugins       '}, command = 'PackerSync'},
  h = {description = {icons.container ..    'Exit               '}, command = 'exit'},
}