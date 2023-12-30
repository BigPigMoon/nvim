-- realy halpful quit mapping
vim.keymap.set('n', '<leader>q', ":qa!<CR>", {})
vim.keymap.set('n', '<C-s>', ":w<CR>", {})

vim.keymap.set('n', '<leader>v', ':vsplit <CR>', {})
vim.keymap.set('n', '<leader>h', ':split <CR>', {})
vim.keymap.set('n', '<leader>w', ':q <CR>', {})

vim.keymap.set('n', '<C-h>', ':wincmd h <CR>', {})
vim.keymap.set('n', '<C-j>', ':wincmd j <CR>', {})
vim.keymap.set('n', '<C-k>', ':wincmd k <CR>', {})
vim.keymap.set('n', '<C-l>', ':wincmd l <CR>', {})
