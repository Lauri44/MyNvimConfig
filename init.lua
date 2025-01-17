require("config.lazy")

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set syntax")
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set({ "i", "n", "v" }, "<C-c>", "<Esc>", { desc = "Make Ctrl+C behave exactly like escape." })

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

vim.lsp.set_log_level("debug")
-- local builtin=require("telescope.builtin")
-- vim.keymap.set("n", "<C-p>", builtin.find_files, {})

