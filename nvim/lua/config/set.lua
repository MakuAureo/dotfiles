vim.g.mapleader = " "

vim.g.astro_typescript = 'enable'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.local/state/nvim/undo")

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.scrolloff = 8

vim.opt.autocomplete = true
vim.opt.completeopt = { "menu", "menuone", "noselect", "popup" }
vim.opt.complete = ".,w,b,u"
vim.opt.autocompletedelay = 250

vim.opt.hlsearch = false

vim.keymap.set("n", "<leader>vs", "<Cmd>vsplit<CR>", { desc = "Open vertical split" })
vim.keymap.set("n", "<leader>ss", "<Cmd>split<CR>", { desc = "Open horizontal split" })

vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<leader>ex", "<Cmd>Explore<CR>", { desc = "Open file explorer" })

vim.keymap.set("n", "gdi", function() vim.diagnostic.open_float() end, { desc = "Open floating diagnostics" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting register" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })

vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, { desc = 'Format current buffer' })

vim.keymap.set("n", "<leader>c", "gcc", { remap = true, desc = "Toggle line comment" })
vim.keymap.set("v", "<leader>c", "gc", { remap = true, desc = "Toggle selection comment" })
