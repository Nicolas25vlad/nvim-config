local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Navegação entre janelas
keymap('n', '<C-h>', '<C-w>h', { desc = 'Go to left window' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Go to lower window' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Go to upper window' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Go to right window' })

-- Resize windows
keymap('n', '<Up>', ':resize +2<CR>', { desc = 'Increase window height' })
keymap('n', '<Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
keymap('n', '<Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
keymap('n', '<Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

-- Navegação entre buffers
keymap('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })
keymap('n', '<S-h>', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap('n', '<leader>q', ':bd<CR>', { desc = 'Close buffer' })

-- Clear highlights
keymap('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Save file
keymap('n', '<C-s>', ':w<CR>', { desc = 'Save file' })

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files' })
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep' })
keymap('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Find buffers' })
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Help tags' })

-- NvimTree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })

-- Terminal
keymap('n', '<leader>tt', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })


-- Execução rápida de código
keymap('n', '<leader>r', function()
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand('%')
  
  if filetype == 'python' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    vim.cmd('TermExec cmd="python ' .. filename .. '"')
  elseif filetype == 'javascript' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    vim.cmd('TermExec cmd="node ' .. filename .. '"')
  elseif filetype == 'typescript' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    vim.cmd('TermExec cmd="npx ts-node ' .. filename .. '"')
  elseif filetype == 'lua' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    vim.cmd('TermExec cmd="lua ' .. filename .. '"')
  elseif filetype == 'cpp' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    local output = filename:gsub('%.cpp$', '')
    vim.cmd('TermExec cmd="g++ ' .. filename .. ' -o ' .. output .. ' && ./' .. output .. '"')
  elseif filetype == 'java' then
    vim.cmd('w')
    vim.cmd('ToggleTerm direction=horizontal size=15')
    local classname = filename:gsub('%.java$', '')
    vim.cmd('TermExec cmd="javac ' .. filename .. ' && java ' .. classname .. '"')
  else
    print('Tipo de arquivo não suportado para execução rápida: ' .. filetype)
  end
end, { desc = 'Run current file' })