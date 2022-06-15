local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Save
keymap("n", "<C-s>", ":wall<CR>", { noremap = true }) -- Save all buffer
keymap("n", "<C-S>", ":w<CR>", { noremap = true }) -- Save all buffer
-- Duplicate
keymap("n", "<C-d>", "yyp", { noremap = true }) -- Duplicate lines
keymap("v", "<C-d>", "yyp", { noremap = true }) -- Duplicate lines
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)     -- Open file explorer
-- Exit
keymap("n", "q", ":q<cr>", opts) -- Exit file
keymap("n", "<C-q>", ":qall<cr>", opts) -- Exit file
-- Edit config
local nvim_gui = "neovide"
local config_path = "~/.jsep-config/nvim"
keymap("n", "<C-i>", ":!" .. nvim_gui .. " " .. config_path .. "<cr>", opts)
keymap("n", "<C-b>", ":source $MYVIMRC", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>F", ":Telescope find_files<CR>", opts)
keymap("n", "F", ":Telescope find_files<CR>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>", opts)
-- keymap("n", "<leader>F", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10, layout_config = {prompt_position=\"bottom\" }}))<cr>", opts)
--keymap("n", "<leader>F", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
keymap("n", "gm", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
keymap("n", "gs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
keymap("n", "<C-e>", "<cmd>Telescope buffers<cr>", opts)

-- NVimTree
keymap("n", "<leader>e", ":NvimTreeToggle <cr>", opts) -- Open file explorer
-- INSERT --

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "<C-s>", "<ESC>:wall<CR>i", { noremap = true }) -- Save all buffer
keymap("i", "<C-q>", "<ESC>:qall<cr>", opts) -- Exit file
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Dont overload opts register
keymap("v", "p", '"_dP', opts)

keymap("v", "<C-d>", "yyp", { noremap = true }) -- Duplicate lines
-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

keymap("x", "<C-d>", "yyp", { noremap = true }) -- Duplicate lines
-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
