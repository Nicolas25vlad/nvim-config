-- ~/.config/nvim/init.lua

-- Configurações básicas
require('core.options')
require('core.keymaps')
require('core.autocmds')

-- Gerenciador de plugins
require('core.lazy')

-- Configurações de temas e UI
require('configs.theme')
require('configs.lualine')
require('configs.dashboard')
