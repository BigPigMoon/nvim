vim.cmd("syntax enable")
vim.cmd("set number")                -- Отображать номера строк
vim.cmd("set relativenumber")        -- Отображать относительные номера строк
vim.cmd("set showmatch")             -- Подсветка парных скобок
vim.cmd("set ruler")                 -- Показывать позицию курсора внизу экрана

vim.cmd("set mouse=a")               -- Поддержка мыши
vim.cmd("set showcmd")               -- Показывать команду в нижней строке
vim.cmd("set wildmenu")              -- Подсказки при вводе команд
vim.cmd("set lazyredraw")            -- Уменьшить перерисовку экрана
vim.cmd("set showmode")              -- Показывать режим в нижней строке

vim.cmd("set ignorecase")            -- Нечувствительность к регистру при поиске
vim.cmd("set smartcase")             -- Умное управление регистром при поиске
vim.cmd("set incsearch")             -- Постепенный поиск при вводе
vim.cmd("set hlsearch")              -- Подсветка результатов поиска
vim.cmd("set showmatch")             -- Подсветка парных скобок

vim.cmd("set autoindent")            -- Автоматическая установка отступов
vim.cmd("set smartindent")           -- Использование умного отступа
vim.cmd("set tabstop=4")             -- Количество пробелов на таб
vim.cmd("set shiftwidth=4")          -- Количество пробелов при сдвиге
vim.cmd("set expandtab")             -- Использовать пробелы вместо табов
vim.cmd("set nowrap")                -- Не переносить строки
vim.cmd("set encoding=utf-8")        -- Кодировка UTF-8
vim.cmd("set noswapfile")            -- Не создает резервные файлы
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
     'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>qq', ":q!<CR>", {})

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin"