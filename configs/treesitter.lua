-- lua/configs/treesitter.lua

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua', 'vim', 'vimdoc', 'query', 'python', 'javascript', 
    'typescript', 'html', 'css', 'json', 'yaml', 'markdown',
    'bash', 'cpp', 'c', 'java'
  },
  highlight = { 
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
})