-- lua/core/autocmds.lua

-- Create autocommand groups
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General settings
augroup('GeneralSettings', { clear = true })
autocmd('TextYankPost', {
  group = 'GeneralSettings',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
  end,
})

autocmd('BufWritePre', {
  group = 'GeneralSettings',
  pattern = '*',
  callback = function()
    local save_cursor = vim.fn.getpos('.')
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos('.', save_cursor)
  end,
})

-- Filetype specific
augroup('FileTypeSettings', { clear = true })
autocmd('FileType', {
  group = 'FileTypeSettings',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'json', 'lua' },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

autocmd('FileType', {
  group = 'FileTypeSettings',
  pattern = { 'python', 'java', 'cpp', 'c' },
  command = 'setlocal shiftwidth=4 tabstop=4'
})

autocmd('FileType', {
  group = 'FileTypeSettings',
  pattern = 'markdown',
  command = 'setlocal wrap linebreak'
})

-- Restore cursor position
augroup('RestoreCursor', { clear = true })
autocmd('BufReadPost', {
  group = 'RestoreCursor',
  pattern = '*',
  callback = function()
    if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line('$') then
      vim.cmd('normal! g`"')
    end
  end,
})

-- Auto-format on save (optional - you can enable later)
-- augroup('AutoFormat', { clear = true })
-- autocmd('BufWritePre', {
--   group = 'AutoFormat',
--   pattern = '*',
--   callback = function()
--     vim.lsp.buf.format({ async = false })
--   end,
-- })