local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Header
dashboard.section.header.val = {
  '                                                     ',
  '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
  '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
  '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
  '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
  '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
  '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
  '                                                     ',
}

-- Buttons
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
  dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
  dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
  dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
  dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua <CR>'),
  dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
}

-- Footer
local function footer()
  local version = vim.version()
  return 'Neovim v' .. version.major .. '.' .. version.minor .. '.' .. version.patch
end

dashboard.section.footer.val = footer()

alpha.setup(dashboard.opts)